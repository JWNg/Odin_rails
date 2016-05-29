class AddAttendeeAndAttendedEventToInvites < ActiveRecord::Migration
  def change
    add_reference :invites, :attendee, index: true, foreign_key: true
    add_reference :invites, :attended_event, index: true, foreign_key: true
  end
end
