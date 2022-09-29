# frozen_string_literal: true

class MiniDefender::Rules::Hash < MiniDefender::Rule
  def self.signature
    'hash'
  end

  def passes?(attribute, value, validator)
    value.is_a?(Hash)
  end

  def message(attribute, value, validator)
    "The #{attribute} field must be a hash."
  end
end
