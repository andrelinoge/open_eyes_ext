module ValidationPatterns
  extend ActiveSupport::Concern

  REGEXP_EMAIL              = /\A.+@.+.[a-z]{2,4}(\.[a-z]{2})?\z/i
  REGEXP_AMOUNT             = /\A\d{1,16}(\.\d{1,2})?\z/i
  REGEXP_URL                = %r{\Ahttps?://.{4,}\z}i
  REGEXP_IMAGE_CONTENT_TYPE = %r{\Aimage/.*\z}i
  REGEXP_EMAIL_SS           = /\A.+@softserve(inc|com)(\.(com|ua)){1,2}\z/i
  REGEXP_COLOR_FORMAT_FULL  = /\A#[0-9a-f]{6}\z/i
end
