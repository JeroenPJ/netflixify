class Series < ApplicationRecord
  before_save :parse_url
  before_create :set_default_season_and_episode

  def title
    "#{name} - S#{season}E#{episode}"
  end

  def get_url(season, episode)
    self.url.sub("[season]", season.to_s)
            .sub("[episode]", episode.to_s)
  end

  def current_url
    get_url(self.season, self.episode)
  end

  private

  def parse_url
    self.url.sub!(/\d/, "[season]")
            .sub!(/\d/, "[episode]")
  end

  def set_default_season_and_episode
    self.season  ||= 1
    self.episode ||= 1
  end
end
