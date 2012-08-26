class NoRefererController < ApplicationController
  def no_referer
    # Javascript側でエンコード済みなのでURLをエンコードしない
    @no_referer_url = params[:url].to_s if params[:url].present?
    if Setting.plugin_redmine_no_referer['refresh_second'].blank?
      @refresh_second = -1 # 設定が空なら自動遷移無し
    else
      @refresh_second = Setting.plugin_redmine_no_referer['refresh_second'].to_i
    end
  end
end
