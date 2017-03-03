Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :test do
    collection do
      get :working_hours_submit
      get :working_hours_approval
      get :working_hours_approval_history
      
      get :report_form_list
      get :event_detail_form_report
      get :event_total_form_report
      get :event_staff_type_form_report
      get :event_staff_time_total_form_report
      get :department_evt_time_total_form_report
      get :department_staff_time_total_form_report
    end
  end

  resources :tasks do
    collection do
      get :build_task
      get :distribution
    end
  end

end
