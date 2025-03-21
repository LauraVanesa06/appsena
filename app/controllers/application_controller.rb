class ApplicationController < ActionController::Base
  include Devise::Controllers::Helpers  # A
  before_action :authenticate_user!  # Protege rutas para usuarios autenticados

  # Permitir métodos de Devise en todas las vistas
  helper_method :user_signed_in?, :current_user
end


