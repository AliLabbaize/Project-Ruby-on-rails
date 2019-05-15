class PagesController < ApplicationController
  
  skip_before_action :only_signed_in, only: [:welcome]


  def welcome
  end
  
end
