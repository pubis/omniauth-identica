# OmniAuth Identica

This gem contains the Identica strategy for OmniAuth.

## How To Use It

Usage is as per any other OmniAuth 1.0 strategy. So let's say you're using Rails, you need to add the strategy to your `Gemfile`:

    gem 'omniauth-identica'

You can pull them in directly from github e.g.:

    gem 'omniauth-identica', :git => 'https://github.com/DeadSuperHero/omniauth-identica.git'

Once these are in, you need to add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :identica, "consumer_key", "consumer_secret" 
    end

You will obviously have to put in your key and secret, which you get when you register your app with Identica (they call them API Key and Secret Key). 