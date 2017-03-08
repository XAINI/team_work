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
    real_time()
  end

  def event_total_form_report
    real_time()
  end

  def event_staff_type_form_report
    real_time()
  end

  def event_staff_time_total_form_report
    real_time()
  end

  def department_evt_time_total_form_report
    real_time()
  end

  def department_staff_time_total_form_report
    real_time()
  end

  def working_hours_submit
    
  end

  def working_times_approval_history
    @event_approval_history = [
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "8", work_type: "正常时间", proposer: "staff01", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "已批准", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "8", work_type: "正常时间", proposer: "staff04", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "已批准", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "6", work_type: "加班工时", proposer: "staff03", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "未通过", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "7", work_type: "加班工时", proposer: "staff07", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "已批准", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "4", work_type: "加班工时", proposer: "staff04", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "未通过", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "5", work_type: "加班工时", proposer: "staff03", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "已批准", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "8", work_type: "正常时间", proposer: "staff04", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "已批准", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "8", work_type: "正常时间", proposer: "staff05", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "未通过", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "3", work_type: "加班工时", proposer: "staff06", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "已批准", content:"--"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05", time: "5", work_type: "加班工时", proposer: "staff02", commit_time: "2017-03-06", approval_time: "2017-03-07", status: "未通过", content:"--"}
    ]
  end

  def working_times_approval
    @event_examine_info = [
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "正常时间"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "正常时间"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "加班工时"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "加班工时"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "正常时间"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "加班工时"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "加班公司"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "正常时间"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "正常时间"},
      {event: " 测试项目 - mindpin", task: "压力测试", date: "2017-03-05 (星期日)", time: "8", work_type: "加班工时"}
    ]

  end

  private
    def real_time
      @today = Time.new.strftime("%Y年%m月%d日 %H:%M:%S")
    end

end