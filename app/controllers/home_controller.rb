class HomeController < ApplicationController
  def index
  	@testcategories = Testcategory.all
  end
end
