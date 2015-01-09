module Assert
  def self.fail(msg)
    raise "the error"
  end
  def self.assert_nil(actual)
    assert_equals actual, nil
  end
  def self.assert_not_nil(actual)
    assert_not_equals actual, nil
  end
  def self.assert_not_equals(actual, expected)
    if equals actual, expected
      raise "Was expecting to have #{actual} != #{expected}"
    end
  end
  def self.assert_equals(actual, expected)
    unless equals actual, expected
      raise "Was expecting to have #{actual} == #{expected}"
    end
  end
  def self.equals(actual, expected)
    if expected.class == Float
      if (expected - actual).abs <= 0.001
        return true
      end
    else
      if actual == expected
        return true
      end
    end
  end
  def self.assert_argument_error(&callback)
    failed = false
    begin
      callback.call;
    rescue ArgumentError
      failed = true
    end
    assert_equals(failed, true)
  end
end