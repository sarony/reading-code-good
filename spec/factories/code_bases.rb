# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :code_bases, :class => 'CodeBase' do
    name "GoogleBooks"
    link "http://googlebooks.com"
    language nil
    loc nil
  end
end
