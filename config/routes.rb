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
end
