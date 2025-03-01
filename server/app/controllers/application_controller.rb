class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Root route
  get '/' do
    { message: 'Welcome to the Messages API' }.to_json
  end

  # GET /messages - returns all messages ordered by created_at
  get '/messages' do
    messages = Messages.order(:created_at)
    messages.to_json
  end

  # POST /messages - creates new message with body and username
  post '/messages' do
    message = Messages.create(
      body: params[:body],
      username: params[:username]
    )
    message.to_json
  end

  # PATCH /messages/:id - updates the body of the message with the given id
  patch '/messages/:id' do
    message = Messages.find(params[:id])
    message.update(body: params[:body])
    message.to_json
  end

  # DELETE /messages/:id - deletes the message with the given id
  delete '/messages/:id' do
    message = Messages.find(params[:id])
    message.destroy
    { message: 'Message successfully deleted' }.to_json
  end
end
