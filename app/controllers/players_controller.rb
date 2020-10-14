class PlayersController < ApplicationController
    before_action :find_player, only: [:show, :edit, :update, :destroy]

    def index
        @players = Player.all
    end

    def show
    end

    def new
        @player = Player.new
    end

    def create
        @player = Player.create(player_params)
        if @player.valid?
            redirect_to player_path(@player)
        else
            flash[:errors] = @player.errors.full_messages
            redirect_to new_player_path
        end
    end

    def edit
    end

    def update
        if @player.update(player_params)
            redirect_to player_path(@player)
        else
            flash[:errors] = player.errors.full_messages
            redirect_to edit_player_path
        end
    end

    def destroy
        @player.destroy
        redirect_to players_path
    end

    private

    def find_player
        @player = Player.find(params[:id])
    end

    def player_params
        params.require(:player).permit(:name, :nickname, :expertise, :catchphrase)
    end
end
