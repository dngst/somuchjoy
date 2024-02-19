# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @images = Dir.glob('app/assets/images/*')
    @positions = generate_random_positions(@images.size)
  end

  private

  def generate_random_positions(count)
    Array.new(count) { { top: rand(0..500), left: rand(0..1000) } }
  end
end
