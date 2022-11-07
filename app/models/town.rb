class Town < ApplicationRecord
	has_one_attached :photo

	def point
    total_points = self.cost + self.safety + self.vibe + self.culture + 
    self.sightseeing
  end
end
