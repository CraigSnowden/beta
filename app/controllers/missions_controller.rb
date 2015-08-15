class MissionsController < AuthController
  inherit_resources
  load_and_authorize_resource :mission

  def index
    @featured = Mission.where(featured: true).first
    super
  end
end
