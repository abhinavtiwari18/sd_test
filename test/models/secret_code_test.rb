# == Schema Information
#
# Table name: secret_codes
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SecretCodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
