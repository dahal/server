class Dashboard::BaseController < ApplicationController
  layout 'dashboard'
  before_filter :authorize
end
