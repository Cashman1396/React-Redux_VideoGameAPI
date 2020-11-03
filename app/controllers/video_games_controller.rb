class VideoGamesController < ApplicationController
    before_action :set_video_game, only: [:show, :update, :destroy]

    def index
        if logged_in? 
          @video_games = current_user.video_games
          render json: VideoGameSerializer.new(@video_games)
        else
          render json: {
            error: "You must be logged in to see video games"
          }
        end
    end 

    def show
        render json: @video_game
    end

    def create
        @video_game = current_user.video_games.build(video_game_params)
        if @video_game.save
          render json: VideoGameSerializer.new(@video_game), status: :created
        else
          error_resp = {
            error: @video_game.errors.full_messages.to_sentence
          }
          render json: error_resp, status: :unprocessable_entity
        end
    end

    def update
        if @video_game.update(video_game_params)
          render json: VideoGameSerializer.new(@video_game), status: :ok
        else
          render json: {
            error: "Field cannot be left blank"
          }
        end
    end

    def destroy
        if @video_game.destroy
          render json: {message: "Video Game deleted."}, status: :ok
        else
          render json: {
            error: "Something's not right"
          }
        end
      end



end
