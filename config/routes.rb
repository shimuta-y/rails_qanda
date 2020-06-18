Rails.application.routes.draw do
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/new'
  # get 'questions/edit'
  
  resources :questions
  # index => 質問一覧
  # create => 新規作成の時の処理
  # new => 質問の新規登録
  # edit => 編集
  # show => 詳細
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
