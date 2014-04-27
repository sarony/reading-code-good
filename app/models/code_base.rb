class CodeBase < ActiveRecord::Base
  belongs_to :language
  belongs_to :loc
end
