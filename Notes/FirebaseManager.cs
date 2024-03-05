using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Firebase.Database;
using Firebase.Database.Query;

namespace Notes
{
    public class FirebaseManager
    {
        private FirebaseClient _firebaseClient = new FirebaseClient(
            "https://notes-3500b-default-rtdb.europe-west1.firebasedatabase.app/");

        public async Task AddNote(Note note)
        {
            await _firebaseClient.Child("notes").Child(note.Title).PutAsync(note);
        }

        public async Task<Note> GetNote(string name)
        {
            return await _firebaseClient.Child("notes").Child(name).OnceSingleAsync<Note>();
        }

        public async Task<List<Note>> GetAllNotes()
        {
            return (await _firebaseClient.Child("notes").OnceAsync<Note>()).Select(item => 
                new Note(item.Object.Title, item.Object.Date, item.Object.Text)).ToList();
        }

        public async Task DeleteNote(string name)
        {
            await _firebaseClient.Child("notes").Child(name).DeleteAsync();
        }
    }
}