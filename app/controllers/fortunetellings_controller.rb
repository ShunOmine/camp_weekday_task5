class FortunetellingsController < ApplicationController
  include Common
  def show
    @birthday = params[:birthday]
    @birth = "#{@birthday[0, 4]}年#{@birthday[4, 2]}月#{@birthday[6, 2]}日"

    @birth_today = "今日があなたの誕生日です。" if @birthday[4, 4] == Date.today.strftime("%m%d")

    @age = (Date.today.strftime("%Y%m%d").to_i - @birthday.to_i) / 10000

    @fortune = ["大吉", "中吉", "吉", "小吉", "凶", "大凶"].sample

    #constellationはcommon.rbに記述
    @constellation = constellation(@birthday[4, 2].to_i, @birthday[6, 2].to_i)
  end
end
