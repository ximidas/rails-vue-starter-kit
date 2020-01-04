module Api
class VueController < ApplicationController

  def pass_data_to_vue

    @pass_data_to_vue = 'Data via Api Controller!'
    render json: { pass_data_to_vue: @pass_data_to_vue }

  end

end
end