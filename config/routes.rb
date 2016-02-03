Rails.application.routes.draw do
  resources :students do
    resources :jobs
    resources :contacts
  end

#         Prefix Verb   URI Pattern                  Controller#Action
#Action
#     student_jobs GET    /students/:student_id/jobs(.:format)          jobs#index
#                  POST   /students/:student_id/jobs(.:format)          jobs#create
#  new_student_job GET    /students/:student_id/jobs/new(.:format)      jobs#new
# edit_student_job GET    /students/:student_id/jobs/:id/edit(.:format) jobs#edit
#      student_job GET    /students/:student_id/jobs/:id(.:format)      jobs#show
#                  PATCH  /students/:student_id/jobs/:id(.:format)      jobs#update
#                  PUT    /students/:student_id/jobs/:id(.:format)      jobs#update
#                  DELETE /students/:student_id/jobs/:id(.:format)      jobs#destroy

#     students GET    /students(.:format)          students#index
#              POST   /students(.:format)          students#create
#  new_student GET    /students/new(.:format)      students#new
# edit_student GET    /students/:id/edit(.:format) students#edit
#      student GET    /students/:id(.:format)      students#show
#              PATCH  /students/:id(.:format)      students#update
#              PUT    /students/:id(.:format)      students#update
#              DELETE /students/:id(.:format)      students#destroy
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
