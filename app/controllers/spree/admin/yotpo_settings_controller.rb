module Spree
  module Admin
    class YotpoSettingsController < BaseController
      def update
        if current_store.update(yotpo_setting_params)
          flash[:success] = "Yotpo settings updated successfully."
          redirect_to spree.edit_admin_yotpo_settings_path
        else
          flash[:error] = "Failed to update Yotpo settings."
          render :edit
        end
      end

      private

      def yotpo_setting_params
        params.require(:store).permit(:yotpo_script, :yotpo_enabled)
      end
    end
  end
end
