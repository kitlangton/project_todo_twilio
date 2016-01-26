class TextsController < ApplicationController
  def send_text
    puts params[:id]
    redirect_to todos_path
  end
end
