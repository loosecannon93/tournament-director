class TeamGame < ActiveRecord::Base
  belongs_to :team
  belongs_to :game
  belongs_to :card
  has_many :player_games
end
