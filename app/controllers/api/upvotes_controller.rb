class Api::UpvotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    @poem = Poem.find(params['poem_id'])
    @vote.votable = @poem
    @vote.voter = current_user
    if @vote.save
      render '/api/poems/show'
    else
      render json: @vote.errors.full_messages, status: 422
    end
  end

private
  def vote_params
    params.permit(:vote_direction)
  end
end
