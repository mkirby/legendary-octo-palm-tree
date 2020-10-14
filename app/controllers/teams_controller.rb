class TeamsController < ApplicationController
    before_action :find_team, only: [:show, :edit, :update, :destroy]

    def index
        @teams = Team.all
    end

    def show
    end

    def new
        @team = Team.new
    end

    def create
        @team = Team.create(team_params)
        if @team.valid?
            redirect_to team_path(@team)
        else
            flash[:errors] = @team.errors.full_messages
            redirect_to new_team_path
        end
    end

    def edit
    end

    def update
        if @team.update(team_params)
            redirect_to team_path(@team)
        else
            flash[:errors] = @team.errors.full_messages
            redirect_to edit_team_path
        end
    end

    def destroy
        @team.destroy
    end

    private

    def find_team
        @team = Team.find(params[:id])
    end

    def team_params
        params.require(:team).permit(:name, :max_member_count, :slogan, :winning_note, :losing_note, :trivia_nights_won, :recruiting)
    end
end
