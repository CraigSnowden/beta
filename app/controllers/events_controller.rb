class EventsController < AuthController
  inherit_resources
  actions :index, :show, :edit, :update, :destroy
end
