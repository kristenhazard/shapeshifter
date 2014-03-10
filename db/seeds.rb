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
                    {name: 'select', status: 'active'},
                    {name: 'multiselect', status: 'active'},
                    {name: 'typeahead', status: 'active'},
                    {name: 'file', status: 'active'},
                    {name: 'chosenselect', status: 'active'},
                    {name: 'chosenmultiselect', status: 'active'}
                  ])

puts "Create Demo Project"
demo_bio_project = Hanuman::Project.create([
                 {
                  name: 'Demo Biological Resources',
                  organization_id: suntoucher.id,
                  status: 'active'
                 }
               ])

puts "Create AnswerTypes"
answer_text = Hanuman::AnswerType.where("name='text'").first
answer_date = Hanuman::AnswerType.where("name='date'").first
answer_time = Hanuman::AnswerType.where("name='time'").first

answer_textarea = Hanuman::AnswerType.where("name='textarea'").first
answer_checkbox = Hanuman::AnswerType.where("name='checkbox'").first
answer_radio = Hanuman::AnswerType.where("name='radio'").first
answer_select = Hanuman::AnswerType.where("name='select'").first
answer_multiselect = Hanuman::AnswerType.where("name='multiselect'").first
answer_typeahead = Hanuman::AnswerType.where("name='typeahead'").first
answer_chosenselect = Hanuman::AnswerType.where("name='chosenselect'").first
answer_chosenmultiselect = Hanuman::AnswerType.where("name='chosenmultiselect'").first

puts "Create Generic Survey"

generic_survey = Hanuman::SurveyTemplate.create(
                                      name: 'Generic V1',
                                      status: 'active',
                                      organization_id: suntoucher.id,
                                      survey_type: 'Generic'
                                     )
q1 = Hanuman::Question.create(question_text: 'Text', answer_type_id: answer_text.id)
q2 = Hanuman::Question.create(question_text: 'Date', answer_type_id: answer_date.id)
q3 = Hanuman::Question.create(question_text: 'Time', answer_type_id: answer_time.id)
q4 = Hanuman::Question.create(question_text: 'TextArea', answer_type_id: answer_textarea.id)
q5 = Hanuman::Question.create(question_text: 'CheckBox', answer_type_id: answer_checkbox.id)
q6 = Hanuman::Question.create(question_text: 'RadioButton', answer_type_id: answer_radio.id)
q7 = Hanuman::Question.create(question_text: 'Select', answer_type_id: answer_select.id)
q8 = Hanuman::Question.create(question_text: 'MultiSelect', answer_type_id: answer_multiselect.id)
q9 = Hanuman::Question.create(question_text: 'TypeAhead', answer_type_id: answer_typeahead.id)
q10 = Hanuman::Question.create(question_text: 'ChosenSelect', answer_type_id: answer_chosenselect.id)
q11 = Hanuman::Question.create(question_text: 'ChosenMultiSelect', answer_type_id: answer_chosenmultiselect.id)

q12 = Hanuman::Question.create(question_text: 'Duplicator Text', answer_type_id: answer_text.id)
q13 = Hanuman::Question.create(question_text: 'Duplicator Date 1', answer_type_id: answer_date.id)
q14 = Hanuman::Question.create(question_text: 'Duplicator Date 2', answer_type_id: answer_date.id)
q15 = Hanuman::Question.create(question_text: 'ChosenSelect', answer_type_id: answer_chosenselect.id)
q16 = Hanuman::Question.create(question_text: 'ChosenMultiSelect', answer_type_id: answer_chosenmultiselect.id)

q17 = Hanuman::Question.create(question_text: 'TextArea', answer_type_id: answer_textarea.id)

Hanuman::AnswerChoice.create(question_id: q5.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q5.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q5.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q5.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q5.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q6.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q6.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q6.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q6.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q6.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q7.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q7.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q7.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q7.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q7.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q8.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q8.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q8.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q8.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q8.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q9.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q9.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q9.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q9.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q9.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q10.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q10.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q10.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q10.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q10.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q11.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q11.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q11.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q11.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q11.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q15.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q15.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q15.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q15.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q15.id, option_text: 'White')

Hanuman::AnswerChoice.create(question_id: q16.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: q16.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: q16.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: q16.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: q16.id, option_text: 'White')

puts "Create SurveyQuestions"
Hanuman::SurveyQuestion.create([
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q1.id,
                          order: 1,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q2.id,
                          order: 2,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q3.id,
                          order: 3,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q4.id,
                          order: 4,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q5.id,
                          order: 5,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q6.id,
                          order: 6,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q7.id,
                          order: 7,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q8.id,
                          order: 8,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q9.id,
                          order: 9,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q10.id,
                          order: 10,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q11.id,
                          order: 11,
                          duplicator: false,
                          group: "step 1"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q12.id,
                          order: 12,
                          duplicator: true,
                          group: "step 2"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q13.id,
                          order: 13,
                          duplicator: true,
                          group: "step 2"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q14.id,
                          order: 14,
                          duplicator: true,
                          group: "step 2"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q15.id,
                          order: 15,
                          duplicator: true,
                          group: "step 2"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q16.id,
                          order: 16,
                          duplicator: true,
                          group: "step 2"
                        },
                        {
                          survey_template_id: generic_survey.id,
                          question_id: q17.id,
                          order: 17,
                          duplicator: true,
                          group: "step 3"
                        }
                      ])



puts "Create Bio Survey"
bio_resources_survey = Hanuman::SurveyTemplate.create(
                                      name: 'Biological Resources V1',
                                      status: 'active',
                                      organization_id: suntoucher.id,
                                      survey_type: 'Biological Resources'
                                     )

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