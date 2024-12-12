module SpreeYotpoReviews
  module Spree
    module ProductsHelperDecorator
      def cache_key_for_product(product = @product)
        cache_key_elements = common_product_cache_keys
        cache_key_elements += [
          product.cache_key_with_version,
          product.possible_promotions.map(&:cache_key),
          current_store.yotpo_enabled
        ]

        cache_key_elements.compact.join('/')
      end
    end
  end
end
Spree::ProductsHelper.prepend(::SpreeYotpoReviews::Spree::ProductsHelperDecorator)
