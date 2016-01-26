class TextsController < ApplicationController
  def send_text
    client = Twilio::REST::Client.new
    todo = Todo.find( params[ :id ] )
    # client.messages.create( from, to, body )
    client.messages.create( from: ENV[ 'from_kit_number' ], to: ENV[ 'to_john_number' ], body: todo.task )
    puts params[:id]
    redirect_to todos_path
  end
end

