json.extract! note, :id, :notes_subject, :user_id, :assignment_id, :account_id, :created_at, :updated_at
json.url note_url(note, format: :json)
