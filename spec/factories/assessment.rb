FactoryGirl.define do
  factory :assessment do
    category { AssessmentsHelper.assessment_category.sample[0] }
    date { Faker::Date.between(60.years.ago, 1.years.ago) }
    score { Faker::Number.number(3) }
    level { AssessmentsHelper.assessment_level.sample[0] }
    name { AssessmentsHelper.assessment_name.sample[0] }
    assessment_type { AssessmentsHelper.assessment_type.sample[0] }
    student
    # after(:create) do
    #   student << create(:student)
    # end
  end
end
