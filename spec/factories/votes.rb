FactoryGirl.define do
   factory :vote do
     body RandomData.random_paragraph
     value [1,-1].sample
   end
 end
