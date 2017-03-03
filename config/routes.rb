Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :test do
    get :report_form_list, on: :collection
    get :event_detail_form_report, on: :collection
    get :event_total_form_report, on: :collection
    get :event_staff_type_form_report, on: :collection
    get :event_staff_time_total_form_report, on: :collection
    get :department_evt_time_total_form_report, on: :collection
    get :department_staff_time_total_form_report, on: :collection
  end

  resources :tasks do
    collection do
      get :build_task
      get :distribution
    end
  end

end
