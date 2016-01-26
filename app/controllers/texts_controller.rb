class TextsController < ApplicationController
  def send_text
    client = Twilio::REST::Client.new
    todo = Todo.find( params[ :id ] )
    # client.messages.create( from, to, body )
    if client.messages.create( from: ENV[ 'from_kit_number' ], to: ENV[ 'to_john_number' ], body: todo.task )
      redirect_to todos_path, notice: "Sent text!"
    else
      redirect_to todos_path, alert: "Text failed!"
    end
  end
end

