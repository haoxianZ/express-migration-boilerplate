CREATE TABLE notes_creators (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  user_id INTEGER REFERENCES users(id),
  note_id INTEGER REFERENCES notes(id)
);

