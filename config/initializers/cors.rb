Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource(
      '*',
      headers: :any,
      methods: %i[get patch put delete post options show],
      expose: %i['Authorization' 'Uid']
    )
  end
end
