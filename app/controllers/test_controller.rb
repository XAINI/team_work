class TestController < ApplicationController
  def index
    @num_ary = [60, 21, 43, 42, 15, 60, 70, 81, 29, 100, 11, 56, 33, 22, 15, 77, 19, 100, 30, 20, 60, 22, 0, 98, 25, 100, 27, 28, 29, 0]
  end

  def new
    @customer_num_ary = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  def report_form_list
    
  end

  def event_detail_form_report
    
  end

  def event_total_form_report
    
  end

  def event_staff_type_form_report
    
  end

  def event_staff_time_total_form_report
    
  end

  def department_evt_time_total_form_report
    
  end

  def department_staff_time_total_form_report
    
  end
    
end