class Dashboard::BaseController < ApplicationController
  before_filter :authorize
end
