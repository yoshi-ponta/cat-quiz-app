Rails.application.routes.draw do
  get 'home/index'
  # トップページを表示
  root "quizzes#index"

  # クイズのルーティング（index, show のみ許可）+ 回答用のカスタムアクション
  resources :quizzes, only: [:index, :show] do
    post :answer, on: :member  # /quizzes/:id/answer に POST
    collection do
      get :result
    end
  end

  if Rails.env.production?
    get "/run_seed" => proc {
      Rails.application.load_seed
      [200, { "Content-Type" => "text/plain" }, ["✅ Seed executed successfully."]]
    }
  end
end
