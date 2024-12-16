Rails.application.config.after_initialize do
  if Spree::Core::Engine.backend_available?
    Rails.application.config.spree_backend.main_menu.add_to_section('integrations',
      ::Spree::Admin::MainMenu::ItemBuilder.new('yotpo_reviews_settings', ::Spree::Core::Engine.routes.url_helpers.edit_admin_yotpo_settings_path).
        with_manage_ability_check(::Spree::Store).
        with_match_path('/yotpo_settings/edit').
        build
    )
  end
end
