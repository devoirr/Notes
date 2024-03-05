using System;
using System.Collections.Generic;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Support.V7.App;
using Android.Widget;
using AlertDialog = Android.App.AlertDialog;

namespace Notes
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        public static List<Note> noteList { get; set; }
        private NoteAdapter _noteAdapter;
        private ListView _lv;
        private Button _btnAdd;
        private FirebaseManager _firebaseManager;

        private int index;
        protected override async void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            _firebaseManager = new FirebaseManager();
            
            OnResume();
            
            _lv = FindViewById<ListView>(Resource.Id.lv);
            _lv.Adapter = _noteAdapter;
            
            _lv.ItemClick += (sender, args) => 
                StartActivity(new Intent(this, typeof(EditActivity)).PutExtra("pos", args.Position));
            _lv.ItemLongClick += LvOnItemLongClick;

            _btnAdd = FindViewById<Button>(Resource.Id.btnAdd);
            _btnAdd.Click += BtnAddOnClick;
        }

        private void LvOnItemLongClick(object sender, AdapterView.ItemLongClickEventArgs e)
        {
            index = e.Position;
            AlertDialog.Builder RYS = new AlertDialog.Builder(this);
            RYS.SetTitle("Deleting Note...");
            RYS.SetMessage("Are you sure?");
            RYS.SetPositiveButton("Yes", OK_Action);
            RYS.SetNegativeButton("No", Abort_Action);
            RYS.SetCancelable(false);
            RYS.Create();
            RYS.Show();
        }

        private void Abort_Action(object sender, DialogClickEventArgs e)
        {
            Toast.MakeText(this, $"The note #" + index + " was not deleted.", ToastLength.Long).Show();
        }

        private async void OK_Action(object sender, DialogClickEventArgs e)
        {
            noteList.RemoveAt(index);
            _noteAdapter.NotifyDataSetChanged();

            await _firebaseManager.DeleteNote(noteList[index].Title);
            
            Toast.MakeText(this, $"The note #" + index + " was deleted.", ToastLength.Long).Show();
            index = -1;
        }

        private void BtnAddOnClick(object sender, EventArgs e)
        {
            StartActivity(new Intent(this, typeof(EditActivity)).PutExtra("pos", -1));
        }

        protected override async void OnResume()
        {
            base.OnResume();
            noteList = await _firebaseManager.GetAllNotes();
            _noteAdapter = new NoteAdapter(this, noteList);
            _lv.Adapter = _noteAdapter;
            if (_noteAdapter != null)
            {
                _noteAdapter.NotifyDataSetChanged();
            }
        }
    }
}