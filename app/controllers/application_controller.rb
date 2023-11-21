class ApplicationController < ActionController::Base
    def index
        @members = Member.order(:created_at).paginate(page: params[:page], per_page: 20)
      end
      include Pagy::Backend
end
