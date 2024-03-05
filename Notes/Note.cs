namespace Notes
{
    public class Note
    {
        public Note(string title, string text, string date)
        {
            Title = title;
            Text = text;
            Date = date;
        }

        public string Title { get; set; }

        public string Text { get; set; }

        public string Date { get; set; }
    }
}