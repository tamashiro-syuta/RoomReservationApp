class Reservation < ApplicationRecord
    validate :date_before_start
    # validate :start_time_not_sunday
    # validate :start_time_not_saturday
    # validate :time_only
    validates :start_time, uniqueness: { message: 'は他のユーザーが予約しています' }
    validates :end_time, uniqueness: { message: 'は他のユーザーが予約しています' }
  
    def date_before_start
      # binding.irb
      errors.add(:start_time, "には過去の日付を選択できません") if start_time < Date.today
    end
  
    # ◯曜日は選択不可にするようなメソッド
    # def start_time_not_sunday
    #   errors.add(:start_time, "は日曜日を選択できません") if start_time.sunday?
    # end
  
  
    # 指定の日時以外は、予約不可にする処理
    # def time_only
    #   if hour_only_1 && min_only
    #     true
    #   elsif hour_only_2 && min_only
    #     true
    #   else
    #     errors.add(:start_time, "(時間)は13:15もしくは19:15になります")
    #   end
    # end
  
    # def hour_only_19
    #   start_time.hour == 19
    # end
  
    # def hour_only_13
    #   start_time.hour == 13
    # end
  
    # def min_only
    #   start_time.min == 15
    # end
  
end
