class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation
  # after_create_commit It executes a code or method passed a params
  # when a record has been created and successfully inserted to a database.
  after_create_commit {MessageBroadcastJob.perform_later(self)}
end
