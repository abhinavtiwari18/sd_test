class SecretCodesController < ApplicationController
  load_and_authorize_resource

  def index
    @secret_codes = SecretCode.all
  end

  def create
    if params[:code_count].present?
      generated_codes = params[:code_count].to_i
      generated_codes.times do
        code = SecureRandom.uuid
        SecretCode.create!(:code => code)
      end
      redirect_to secret_codes_index_path
    end
  end
end
