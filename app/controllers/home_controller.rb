# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @images = Dir.glob('app/assets/images/*')
    @positions = generate_random_positions(@images.size)
  end

  private

  def generate_random_positions(count)
    positions = []

    count.times do
      position = {
        top: rand(0..500),
        left: rand(0..1000)
      }
      positions << position
    end

    positions
  end
end
