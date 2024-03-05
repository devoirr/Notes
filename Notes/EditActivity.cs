using System;
using Android.App;
using Android.OS;
using Android.Views;
using Android.Widget;

namespace Notes
{
    [Activity(Label = "Edit", Theme = "@style/AppTheme", MainLauncher = false)]
    public class EditActivity : Activity
    {
        private Button _btnSave, _btnCancel;
        private EditText _etTitle, _etText;
        private FirebaseManager _firebase;
        private string date;

        private int pos = -1;
        private string oldTitle;
        
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.edit_activity);

            _etText = FindViewById<EditText>(Resource.Id.etText);
            _etTitle = FindViewById<EditText>(Resource.Id.etTitle);
            _btnSave = FindViewById<Button>(Resource.Id.btnSave);
            _btnCancel = FindViewById<Button>(Resource.Id.btnCancel);

            _firebase = new FirebaseManager();
            
            pos = Intent.GetIntExtra("pos", -1);
            if (pos != -1)
            {
                Note temp = MainActivity.noteList[pos];
                _etTitle.Text = temp.Title;
                oldTitle = temp.Title;
                _etText.Text = temp.Text;
                date = temp.Date;
            }
            else
            {
                _etTitle.Text = "New Note";
                _etText.Text = "First Line";
            }
            
            _btnSave.Click += BtnSaveOnClick;
            _btnCancel.Click += BtnCancelOnClick;
        }

        private void BtnCancelOnClick(object sender, EventArgs e)
        {
            Finish();
        }

        private async void BtnSaveOnClick(object sender, EventArgs e)
        {
            string title = _etTitle.Text;
            string text = _etText.Text;
            if (date == null) 
                date = DateTime.Now.ToShortDateString();
            Note n = new Note(title, text, date);
            if (pos != -1)
            {
                MainActivity.noteList[pos] = n;
                if (oldTitle != title)
                {
                    await _firebase.DeleteNote(oldTitle);
                }

                await _firebase.AddNote(n);
            }
            else
                await _firebase.AddNote(n);
            
            Finish();
        }
    }
}