using System.Collections.Generic;
using Android.Content;
using Android.Views;
using Android.Widget;

namespace Notes
{
    public class NoteAdapter : BaseAdapter<Note>
    {
        private Context _context;
        private List<Note> _objects;

        public NoteAdapter(Context context, List<Note> objects)
        {
            _objects = objects;
            _context = context;
        }

        public List<Note> GetList()
        {
            return _objects;
        }

        public override long GetItemId(int position)
        {
            return position;
        }

        public override int Count => _objects.Count;
        public override Note this[int position] => _objects[position];

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            LayoutInflater layoutInflater = ((MainActivity)_context).LayoutInflater;
            View view = layoutInflater.Inflate(Resource.Layout.noteRow, parent, false);
            
            Note temp = _objects[position];
            if (temp == null) return view;
            
            TextView title = view.FindViewById<TextView>(Resource.Id.tvNoteTitle);
            TextView text = view.FindViewById<TextView>(Resource.Id.tvNoteText);
            TextView date = view.FindViewById<TextView>(Resource.Id.tvDateCreated);
            ImageView icon = view.FindViewById<ImageView>(Resource.Id.ivNoteIcon);
            
            icon.SetImageResource(Resource.Drawable.logo);
            title.Text = temp.Title;
            text.Text = temp.Text;
            date.Text = temp.Date;

            return view;
        }
    }
}