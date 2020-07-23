class ArtistInstrumentsController < ApplicationController

    def new
        @artist_instrument = ArtistInstrument.new
        @artists = Artist.all 
        @instruments = Instrument.all
    end

    def create
        @artist_instrument = ArtistInstrument.create(ai_params)

        if @artist_instrument.valid?
            redirect_to artist_path(@artist_instrument.artist)
        else
            flash[:my_errors] = @artist_instrument.errors.full_messages
            redirect_to new_artist_instrument_path
        end
        
    end

private

    def ai_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

end
