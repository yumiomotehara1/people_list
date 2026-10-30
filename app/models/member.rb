class Member < ApplicationRecord
    # nameのバリデーション（空欄禁止、文字数1〜20文字、重複禁止）
    validates :name, presence: true, length: { minimum: 1, maximum: 20 }, uniqueness: true
    # heightのバリデーション（空欄禁止 + カスタムメッセージ）
    # 1以上（greater than or equal to 1）の数値のみ許可する
    validates :height, presence: { message: "Must be 1 height can't be blank" },
                    numericality: { greater_than_or_equal_to: 1, message: "Must be 1 height can't be blank", allow_blank: true }

    # weightのバリデーション（空欄禁止 + カスタムメッセージ）
    # 1以上（greater than or equal to 1）の数値のみ許可する
    validates :weight, presence: { message: "Must be 1 weight can't be blank" },
                    numericality:{ greater_than_or_equal_to: 1, message: "Must be 1 weight can't be blank", allow_blank: true }


end
