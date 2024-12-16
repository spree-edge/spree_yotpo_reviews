<!-- markdownlint-disable MD032 MD033-->
<!-- Write your README.md file. Build something amazing! This README.md template can guide you to build your project documentation, but feel free to modify it as you wish 🥰 -->
# **Spree Yotpo Reviews**

## **About**

A Spree extension that provides ability to add reviews to the products

## **Prerequisites**

- Create a new account with [Yotpo](https://www.yotpo.com/)
- Go to `On-Site Widgets >> Review Tab & SEO Page` and copy the script from The Reviews Tab

## **Installation**

1. Add this extension to your Gemfile with this line:

    ```ruby
    gem 'spree_yotpo_reviews'
    ```

2. Install the gem using Bundler

    ```ruby
    bundle install
    ```

3. Copy & run migrations

    ```ruby
    bundle exec rails g spree_yotpo_reviews:install
    ```

4. Restart your server!


  If your server was running, restart it so that it can find the assets properly.

5. Go to Admin Panel `Integrations >> Yotpo Reviews` and add the copied script and check the enable checkbox after installing gem
    - **NOTE:** Yotpo Reviews will not work if the checkbox is not marked as enable.

6. Render this partial `<%= render "spree/shared/yotpo_widget", locals: {product: @product }%>` where you want to add reviews for the specific product
