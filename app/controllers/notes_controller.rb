class NotesController < ApplicationController
    skip_before_action :authorize_action, only: [:index, :show]
    
    def index
        notes = Note.all 
        render json: notes
    end

    def create 
        note = Note.create(note_params)
        render json: note
    end

    def show 
        note = Note.find(params[:id])
        render json: note
    end

    # def update 
    #     note = Note.find(params[:id])
    #     note.update(note_params)
    #     render json: note
    # end

    # def destroy 
    #     note = Note.find(params[:id])
    #     note.destroy
    #     render json:{message: "favorite has been deleted"}
    # end
    
    private 

    def note_params 
        params.require(:note).permit(:brewery_id, :user_id, :review, :atmosphere, :rating)
    end
end
