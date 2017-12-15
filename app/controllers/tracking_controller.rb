require 'chunky_png'

class TrackingController < ApplicationController

  def index
    expires_in 48.hour
  end

  Mime::Type.register "image/png", :png
  def uid
    expires_in 48.hour
    respond_to do |format|
      format.html { }
      format.png {
        mm = ChunkyPNG::Image.new(2, 2, ChunkyPNG::Color::TRANSPARENT)
        4.times do |i|
          x = (i)%2
          y = (i/2)%2
          mm[x,y] = ChunkyPNG::Color.rgba(rand(255), rand(255), rand(255), 255)
        end
        timestamp = Time.now.strftime("%Y%m%d%H%M%S")
        send_data mm, :type => 'image/png', :disposition => 'inline'
      }
    end
  end

end
