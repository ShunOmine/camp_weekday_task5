module Common
  # 生年月日から星座を表示
  def constellation(month, day)
    names = %w(山羊座 水瓶座 魚座 牡羊座 牡牛座 双子座 蟹座 獅子座 乙女座 天秤座 蠍座 射手座)
    day1 = [19, 18, 20, 19, 20, 21, 22, 22, 22, 23, 22, 21]
    day2 = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    for count in 0..11
      if month == count + 1
        if day <= day1[count]
          name = names[count]
          return name
        elsif day <= day2[count]
          name = names[(count + 1) % names.length]
          return name
        end
      end
    end
  end
end