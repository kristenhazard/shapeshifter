# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Create Suntoucher"
suntoucher = Hanuman::Organization.create(name: 'Suntoucher', status: 'active')

puts "Create AnswerTypes"
Hanuman::AnswerType.create([
                    {name: 'date', status: 'active'},
                    {name: 'datetime', status: 'active'},
                    {name: 'datetime-local', status: 'active'},
                    {name: 'email', status: 'active'},
                    {name: 'month', status: 'active'},
                    {name: 'number', status: 'active'},
                    {name: 'range', status: 'active'},
                    {name: 'search', status: 'active'},
                    {name: 'tel', status: 'active'},
                    {name: 'time', status: 'active'},
                    {name: 'url', status: 'active'},
                    {name: 'week', status: 'active'},
                    {name: 'datalist', status: 'active'},
                    {name: 'text', status: 'active'},
                    {name: 'password', status: 'active'},
                    {name: 'radio', status: 'active'},
                    {name: 'checkbox', status: 'active'},
                    {name: 'textarea', status: 'active'},
                    {name: 'select', status: 'active'}
                  ])

puts "Create Demo Project"
demo_bio_project = Hanuman::Project.create([
                 {
                  name: 'Demo Biological Resources',
                  organization_id: suntoucher.id,
                  status: 'active'
                 }
               ])


puts "Create Bio Survey"
bio_resources_survey = Hanuman::SurveyTemplate.create(
                                      name: 'Biological Resources V1',
                                      status: 'active',
                                      organization_id: suntoucher.id,
                                      survey_type: 'Biological Resources'
                                     )

puts "Create AnswerTypes"
answer_text = Hanuman::AnswerType.where("name='text'").first
answer_date = Hanuman::AnswerType.where("name='date'").first
answer_time = Hanuman::AnswerType.where("name='time'").first

puts "Create Questions"
q1 = Hanuman::Question.create(question_text: 'Survey name', answer_type_id: answer_text.id)
q2 = Hanuman::Question.create(question_text: 'Survey date', answer_type_id: answer_date.id)
q3 = Hanuman::Question.create(question_text: 'Survey location', answer_type_id: answer_text.id)
q4 = Hanuman::Question.create(question_text: 'Survey participants', answer_type_id: answer_text.id)
q5 = Hanuman::Question.create(question_text: 'Time in', answer_type_id: answer_time.id)
q6 = Hanuman::Question.create(question_text: 'Time out', answer_type_id: answer_time.id)
q7 = Hanuman::Question.create(question_text: 'Weather', answer_type_id: answer_text.id)
q8 = Hanuman::Question.create(question_text: 'Observations', answer_type_id: answer_text.id)


puts "Create SurveyQuestions"
Hanuman::SurveyQuestion.create([
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q1.id,
                          order: 1,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q2.id,
                          order: 2,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q3.id,
                          order: 3,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q4.id,
                          order: 4,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q5.id,
                          order: 5,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q6.id,
                          order: 6,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q7.id,
                          order: 7,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: bio_resources_survey.id,
                          question_id: q8.id,
                          order: 8,
                          duplicator: true,
                          group: "step 2"
                        }
                      ])