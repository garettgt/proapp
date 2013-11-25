class StaticPagesController < ApplicationController
  def home
    @hello = "Привет пилять"
  end

  def help
  end
end
