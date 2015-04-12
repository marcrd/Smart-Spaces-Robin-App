class Robin < ActiveRecord::Base
  def to_json(options={})
    options[:except] ||= [:meta]
    super(options)
  end
end