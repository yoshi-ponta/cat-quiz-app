namespace :seed do
  desc "Run db:seed manually in production"
  task once: :environment do
    Rails.application.load_seed
  end
end
