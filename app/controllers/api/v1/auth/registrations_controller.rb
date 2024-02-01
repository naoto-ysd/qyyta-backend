class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def create
    super do |resource|
      if resource.persisted?
        # ユーザーが正常に保存された場合の処理
        Rails.logger.info "ユーザー作成成功: #{resource.email}"
      else
        # ユーザー保存に失敗した場合のログ記録
        Rails.logger.error "ユーザー作成失敗: #{resource.errors.full_messages.join(', ')}"
      end
    end
  end
end
