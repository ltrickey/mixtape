class SongsController < ApplicationController

    def index
      songs = []
      12.times do
        song = Song.find_by_id(rand(1..100))
        songs << song
      end
      render :json => songs.as_json(only: [:id, :title, :artist, :year]), status: :ok
    end
end
