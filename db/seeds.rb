puts "Create Suntoucher Organization"
suntoucher = Hanuman::Organization.create(name: 'Suntoucher', status: 'active')

puts "Create Answer Types"
Hanuman::AnswerType.create([
  {name: 'section', status: 'active'},
  {name: 'static', status: 'active'},
  {name: 'line', status: 'active'},
  {name: 'helperabove', status: 'active'},
  {name: 'helperbelow', status: 'active'},
  {name: 'color', status: 'active'},
  {name: 'date', status: 'active'},
  {name: 'datetime', status: 'active'},
  {name: 'datetimelocal', status: 'active'},
  {name: 'email', status: 'active'},
  {name: 'month', status: 'active'},
  {name: 'number', status: 'active'},
  {name: 'range', status: 'active'},
  {name: 'tel', status: 'active'},
  {name: 'time', status: 'active'},
  {name: 'url', status: 'active'},
  {name: 'week', status: 'active'},
  {name: 'datalist', status: 'active'},
  {name: 'text', status: 'active'},
  {name: 'radio', status: 'active'},
  {name: 'checkbox', status: 'active'},
  {name: 'checkboxlist', status: 'active'},
  {name: 'textarea', status: 'active'},
  {name: 'select', status: 'active'},
  {name: 'multiselect', status: 'active'},
  {name: 'typeahead', status: 'active'},
  {name: 'file', status: 'active'},
  {name: 'chosenselect', status: 'active'},
  {name: 'chosenmultiselect', status: 'active'}
])

puts "Create Demo Biological Resources Project"
Hanuman::Project.create([
  {
    name: 'Demo Biological Resources',
    organization_id: suntoucher.id,
    status: 'active'
  }
])

puts "Find Answer Types"
answer_section = Hanuman::AnswerType.where("name='section'").first
answer_static = Hanuman::AnswerType.where("name='static'").first
answer_line = Hanuman::AnswerType.where("name='line'").first
answer_helperabove = Hanuman::AnswerType.where("name='helperabove'").first
answer_helperbelow = Hanuman::AnswerType.where("name='helperbelow'").first
answer_color = Hanuman::AnswerType.where("name='color'").first
answer_date = Hanuman::AnswerType.where("name='date'").first
answer_datetime = Hanuman::AnswerType.where("name='datetime'").first
answer_datetimelocal = Hanuman::AnswerType.where("name='datetimelocal'").first
answer_email = Hanuman::AnswerType.where("name='email'").first
answer_month = Hanuman::AnswerType.where("name='month'").first
answer_number = Hanuman::AnswerType.where("name='number'").first
answer_range = Hanuman::AnswerType.where("name='range'").first
answer_tel = Hanuman::AnswerType.where("name='tel'").first
answer_time = Hanuman::AnswerType.where("name='time'").first
answer_url = Hanuman::AnswerType.where("name='url'").first
answer_week = Hanuman::AnswerType.where("name='week'").first
answer_datalist = Hanuman::AnswerType.where("name='datalist'").first
answer_text = Hanuman::AnswerType.where("name='text'").first
answer_radio = Hanuman::AnswerType.where("name='radio'").first
answer_checkbox = Hanuman::AnswerType.where("name='checkbox'").first
answer_checkboxlist = Hanuman::AnswerType.where("name='checkboxlist'").first
answer_textarea = Hanuman::AnswerType.where("name='textarea'").first
answer_select = Hanuman::AnswerType.where("name='select'").first
answer_multiselect = Hanuman::AnswerType.where("name='multiselect'").first
answer_typeahead = Hanuman::AnswerType.where("name='typeahead'").first
answer_file = Hanuman::AnswerType.where("name='file'").first
answer_chosenselect = Hanuman::AnswerType.where("name='chosenselect'").first
answer_chosenmultiselect = Hanuman::AnswerType.where("name='chosenmultiselect'").first

puts "Create Generic V1 Survey"
generic_survey = Hanuman::SurveyTemplate.create(
  name: 'Generic V1',
  status: 'active',
  organization_id: suntoucher.id,
  survey_type: 'Generic'
)

puts "Create Questions"
#step 1
x_q1 = Hanuman::Question.create(question_text: 'Text', answer_type_id: answer_text.id)
x_q2 = Hanuman::Question.create(question_text: 'Date', answer_type_id: answer_date.id)
x_q3 = Hanuman::Question.create(question_text: 'Time', answer_type_id: answer_time.id)
x_q4 = Hanuman::Question.create(question_text: 'TextArea', answer_type_id: answer_textarea.id)
x_q5 = Hanuman::Question.create(question_text: 'CheckBox', answer_type_id: answer_checkbox.id)
x_q6 = Hanuman::Question.create(question_text: 'CheckBoxList', answer_type_id: answer_checkboxlist.id)
x_q7 = Hanuman::Question.create(question_text: 'RadioButton', answer_type_id: answer_radio.id)
x_q8 = Hanuman::Question.create(question_text: 'Select', answer_type_id: answer_select.id)
x_q9 = Hanuman::Question.create(question_text: 'MultiSelect', answer_type_id: answer_multiselect.id)
x_q10 = Hanuman::Question.create(question_text: 'TypeAhead', answer_type_id: answer_typeahead.id)
x_q11 = Hanuman::Question.create(question_text: 'ChosenSelect', answer_type_id: answer_chosenselect.id)
x_q12 = Hanuman::Question.create(question_text: 'ChosenMultiSelect', answer_type_id: answer_chosenmultiselect.id)
#step 2
x_q13 = Hanuman::Question.create(question_text: 'Duplicator Text', answer_type_id: answer_text.id)
x_q14 = Hanuman::Question.create(question_text: 'Duplicator Date 1', answer_type_id: answer_date.id)
x_q15 = Hanuman::Question.create(question_text: 'Duplicator Date 2', answer_type_id: answer_date.id)
x_q16 = Hanuman::Question.create(question_text: 'ChosenSelect', answer_type_id: answer_chosenselect.id)
x_q17 = Hanuman::Question.create(question_text: 'ChosenMultiSelect', answer_type_id: answer_chosenmultiselect.id)
#step 3
x_q18 = Hanuman::Question.create(question_text: 'TextArea', answer_type_id: answer_textarea.id)

puts "Create Answer Choices"
#checkboxlist
Hanuman::AnswerChoice.create(question_id: x_q6.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q6.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q6.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q6.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q6.id, option_text: 'White')
#radiobutton
Hanuman::AnswerChoice.create(question_id: x_q7.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q7.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q7.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q7.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q7.id, option_text: 'White')
#select
Hanuman::AnswerChoice.create(question_id: x_q8.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q8.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q8.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q8.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q8.id, option_text: 'White')
#multiselect
Hanuman::AnswerChoice.create(question_id: x_q9.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q9.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q9.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q9.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q9.id, option_text: 'White')
#typeahead
Hanuman::AnswerChoice.create(question_id: x_q10.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q10.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q10.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q10.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q10.id, option_text: 'White')
#chosenselect
Hanuman::AnswerChoice.create(question_id: x_q11.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q11.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q11.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q11.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q11.id, option_text: 'White')
#chosenmultiselect
Hanuman::AnswerChoice.create(question_id: x_q12.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q12.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q12.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q12.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q12.id, option_text: 'White')
#chosenselect
Hanuman::AnswerChoice.create(question_id: x_q16.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q16.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q16.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q16.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q16.id, option_text: 'White')
#chosenmultiselect
Hanuman::AnswerChoice.create(question_id: x_q17.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: x_q17.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: x_q17.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: x_q17.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: x_q17.id, option_text: 'White')

puts "Create Survey Questions"
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: generic_survey.id,
    question_id: x_q1.id,
    sort_order: 1,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q2.id,
    sort_order: 2,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q3.id,
    sort_order: 3,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q4.id,
    sort_order: 4,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q5.id,
    sort_order: 5,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q6.id,
    sort_order: 6,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q7.id,
    sort_order: 7,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q8.id,
    sort_order: 8,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q9.id,
    sort_order: 9,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q10.id,
    sort_order: 10,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q11.id,
    sort_order: 11,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q12.id,
    sort_order: 12,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q13.id,
    sort_order: 13,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q14.id,
    sort_order: 14,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q15.id,
    sort_order: 15,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q16.id,
    sort_order: 16,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q17.id,
    sort_order: 17,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: x_q18.id,
    sort_order: 18,
    duplicator: false,
    group: "step 3"
  }
])

puts "Create Bio Resources V1 Survey"
bio_resources_survey = Hanuman::SurveyTemplate.create(
  name: 'Biological Resources V1',
  status: 'active',
  organization_id: suntoucher.id,
  survey_type: 'Biological Resources'
)

puts "Create Questions"
y_q1 = Hanuman::Question.create(question_text: 'Survey Name', answer_type_id: answer_text.id)
y_q2 = Hanuman::Question.create(question_text: 'Survey Date', answer_type_id: answer_date.id)
y_q3 = Hanuman::Question.create(question_text: 'Survey Location', answer_type_id: answer_text.id)
y_q4 = Hanuman::Question.create(question_text: 'Survey Participants', answer_type_id: answer_text.id)
y_q5 = Hanuman::Question.create(question_text: 'Time In', answer_type_id: answer_time.id)
y_q6 = Hanuman::Question.create(question_text: 'Time Out', answer_type_id: answer_time.id)
y_q7 = Hanuman::Question.create(question_text: 'Weather', answer_type_id: answer_text.id)
y_q8 = Hanuman::Question.create(question_text: 'Observations', answer_type_id: answer_text.id)

puts "Create Survey Questions"
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q1.id,
    sort_order: 1,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q2.id,
    sort_order: 2,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q3.id,
    sort_order: 3,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q4.id,
    sort_order: 4,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q5.id,
    sort_order: 5,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q6.id,
    sort_order: 6,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q7.id,
    sort_order: 7,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: bio_resources_survey.id,
    question_id: y_q8.id,
    sort_order: 8,
    duplicator: true,
    group: "step 2"
  }
])

puts "Create All Fields and Answers Test V1 Survey"
generic_survey = Hanuman::SurveyTemplate.create(
  name: 'All Fields and Answers Test V1',
  status: 'active',
  organization_id: suntoucher.id,
  survey_type: 'Test'
)

puts "Create Questions"
#visual aides
z_q1 = Hanuman::Question.create(question_text: 'helperabove', answer_type_id: answer_helperabove.id)
z_q2 = Hanuman::Question.create(question_text: 'helperbelow', answer_type_id: answer_helperbelow.id)
z_q3 = Hanuman::Question.create(question_text: 'line', answer_type_id: answer_line.id)
z_q4 = Hanuman::Question.create(question_text: 'section', answer_type_id: answer_section.id)
z_q5 = Hanuman::Question.create(question_text: 'static', answer_type_id: answer_static.id)
#questions that do not have answer choices
z_q6 = Hanuman::Question.create(question_text: 'checkbox', answer_type_id: answer_checkbox.id)
z_q7 = Hanuman::Question.create(question_text: 'color', answer_type_id: answer_color.id)
z_q8 = Hanuman::Question.create(question_text: 'date', answer_type_id: answer_date.id)
z_q9 = Hanuman::Question.create(question_text: 'datetime', answer_type_id: answer_datetime.id)
z_q10 = Hanuman::Question.create(question_text: 'datetimelocal', answer_type_id: answer_datetimelocal.id)
z_q11 = Hanuman::Question.create(question_text: 'email', answer_type_id: answer_email.id)
z_q12 = Hanuman::Question.create(question_text: 'month', answer_type_id: answer_month.id)
z_q13 = Hanuman::Question.create(question_text: 'tel', answer_type_id: answer_tel.id)
z_q14 = Hanuman::Question.create(question_text: 'text', answer_type_id: answer_text.id)
z_q15 = Hanuman::Question.create(question_text: 'textarea', answer_type_id: answer_textarea.id)
z_q16 = Hanuman::Question.create(question_text: 'time', answer_type_id: answer_time.id)
z_q17 = Hanuman::Question.create(question_text: 'url', answer_type_id: answer_url.id)
z_q18 = Hanuman::Question.create(question_text: 'week', answer_type_id: answer_week.id)
#questions with multiple single select answers
z_q19 = Hanuman::Question.create(question_text: 'datalist', answer_type_id: answer_datalist.id)
z_q20 = Hanuman::Question.create(question_text: 'radio', answer_type_id: answer_radio.id)
z_q21 = Hanuman::Question.create(question_text: 'select', answer_type_id: answer_select.id)
z_q22 = Hanuman::Question.create(question_text: 'typeahead', answer_type_id: answer_typeahead.id)
#questions with multi selection answers
z_q23 = Hanuman::Question.create(question_text: 'checkboxlist', answer_type_id: answer_checkboxlist.id)
z_q24 = Hanuman::Question.create(question_text: 'chosenselect', answer_type_id: answer_chosenselect.id)
z_q25 = Hanuman::Question.create(question_text: 'chosenmultiselect', answer_type_id: answer_chosenmultiselect.id)
z_q26 = Hanuman::Question.create(question_text: 'multiselect', answer_type_id: answer_multiselect.id)
#questions requiring special parameters
z_q27 = Hanuman::Question.create(question_text: 'number', answer_type_id: answer_number.id)
z_q28 = Hanuman::Question.create(question_text: 'range', answer_type_id: answer_range.id)
#file upload
z_q29 = Hanuman::Question.create(question_text: 'file', answer_type_id: answer_file.id)

puts "Create Answer Choices"
#datalist
Hanuman::AnswerChoice.create(question_id: z_q19.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q19.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q19.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q19.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q19.id, option_text: 'White')
#radio
Hanuman::AnswerChoice.create(question_id: z_q20.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q20.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q20.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q20.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q20.id, option_text: 'White')
#select
Hanuman::AnswerChoice.create(question_id: z_q21.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q21.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q21.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q21.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q21.id, option_text: 'White')
#typeahead
Hanuman::AnswerChoice.create(question_id: z_q22.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q22.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q22.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q22.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q22.id, option_text: 'White')
#checkboxlist
Hanuman::AnswerChoice.create(question_id: z_q23.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q23.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q23.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q23.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q23.id, option_text: 'White')
#chosenselect
Hanuman::AnswerChoice.create(question_id: z_q24.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q24.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q24.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q24.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q24.id, option_text: 'White')
#chosenmultiselect
Hanuman::AnswerChoice.create(question_id: z_q25.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q25.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q25.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q25.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q25.id, option_text: 'White')
#multiselect
Hanuman::AnswerChoice.create(question_id: z_q26.id, option_text: 'Red')
Hanuman::AnswerChoice.create(question_id: z_q26.id, option_text: 'Blue')
Hanuman::AnswerChoice.create(question_id: z_q26.id, option_text: 'Yellow')
Hanuman::AnswerChoice.create(question_id: z_q26.id, option_text: 'Green')
Hanuman::AnswerChoice.create(question_id: z_q26.id, option_text: 'White')

puts "Create Survey Questions"
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: generic_survey.id,
    question_id: z_q1.id,
    sort_order: 1,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q2.id,
    sort_order: 2,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q3.id,
    sort_order: 3,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q4.id,
    sort_order: 4,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q5.id,
    sort_order: 5,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q6.id,
    sort_order: 6,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q7.id,
    sort_order: 7,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q8.id,
    sort_order: 8,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q9.id,
    sort_order: 9,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q10.id,
    sort_order: 10,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q11.id,
    sort_order: 11,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q12.id,
    sort_order: 12,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q13.id,
    sort_order: 13,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q14.id,
    sort_order: 14,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q15.id,
    sort_order: 15,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q16.id,
    sort_order: 16,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q17.id,
    sort_order: 17,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q18.id,
    sort_order: 18,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q19.id,
    sort_order: 19,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q20.id,
    sort_order: 20,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q21.id,
    sort_order: 21,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q22.id,
    sort_order: 22,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q23.id,
    sort_order: 23,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q24.id,
    sort_order: 24,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q25.id,
    sort_order: 25,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q26.id,
    sort_order: 26,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q27.id,
    sort_order: 27,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q28.id,
    sort_order: 28,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: generic_survey.id,
    question_id: z_q29.id,
    sort_order: 29,
    duplicator: false,
    group: "step 1"
  }
])

puts "Create General Outbreak Long Term Care Survey"
general_outbreak_survey_long_term_care = Hanuman::SurveyTemplate.create(
  name: 'General Outbreak Long Term Care',
  status: 'active',
  organization_id: suntoucher.id,
  survey_type: 'Long Term Care'
)

puts "Create Questions"
#report level single entry
a_q1 = Hanuman::Question.create(question_text: 'Report Date', answer_type_id: answer_date.id)
a_q2 = Hanuman::Question.create(question_text: 'Syndrome Type', answer_type_id: answer_select.id)
a_q3 = Hanuman::Question.create(question_text: 'Report Status', answer_type_id: answer_radio.id)
a_q4 = Hanuman::Question.create(question_text: 'User ID', answer_type_id: answer_text.id)
a_q5 = Hanuman::Question.create(question_text: 'Facility ID', answer_type_id: answer_text.id)
#line list multi person entry
a_q6 = Hanuman::Question.create(question_text: 'Type', answer_type_id: answer_radio.id)
a_q7 = Hanuman::Question.create(question_text: 'First and Last Name', answer_type_id: answer_text.id)
a_q8 = Hanuman::Question.create(question_text: 'Phone (805-765-4321)', answer_type_id: answer_text.id)
a_q9 = Hanuman::Question.create(question_text: 'Location/Address/Case Name', answer_type_id: answer_text.id)
a_q10 = Hanuman::Question.create(question_text: 'Age', answer_type_id: answer_text.id)
a_q11 = Hanuman::Question.create(question_text: 'Sex', answer_type_id: answer_select.id)
a_q12 = Hanuman::Question.create(question_text: 'Ethnicity/Race', answer_type_id: answer_select.id)
a_q13 = Hanuman::Question.create(question_text: 'Symptoms', answer_type_id: answer_chosenmultiselect.id)
a_q14 = Hanuman::Question.create(question_text: 'Date of Recovery', answer_type_id: answer_date.id)
a_q15 = Hanuman::Question.create(question_text: 'Diagnosis Date', answer_type_id: answer_date.id)
a_q16 = Hanuman::Question.create(question_text: 'Date of Exposure', answer_type_id: answer_date.id)
a_q17 = Hanuman::Question.create(question_text: 'Date of Onset', answer_type_id: answer_date.id)
a_q18 = Hanuman::Question.create(question_text: 'Treatment Date', answer_type_id: answer_date.id)
a_q19 = Hanuman::Question.create(question_text: 'Date of Hospitalization', answer_type_id: answer_date.id)
a_q20 = Hanuman::Question.create(question_text: 'Date of Death', answer_type_id: answer_date.id)
a_q21 = Hanuman::Question.create(question_text: 'Lab Collection Date', answer_type_id: answer_date.id)
a_q22 = Hanuman::Question.create(question_text: 'Speciman Type', answer_type_id: answer_text.id)
a_q23 = Hanuman::Question.create(question_text: 'Lab Test Type', answer_type_id: answer_text.id)
#report level single entry
a_q24 = Hanuman::Question.create(question_text: 'Enter Additional Important Information', answer_type_id: answer_textarea.id)

puts "Create Answer Choices"
#syndrome type
Hanuman::AnswerChoice.create(question_id: a_q2.id, option_text: 'Skin')
Hanuman::AnswerChoice.create(question_id: a_q2.id, option_text: 'GI')
Hanuman::AnswerChoice.create(question_id: a_q2.id, option_text: 'Respiratory')
Hanuman::AnswerChoice.create(question_id: a_q2.id, option_text: 'Neurologic')
Hanuman::AnswerChoice.create(question_id: a_q2.id, option_text: 'Other')
#report status
Hanuman::AnswerChoice.create(question_id: a_q3.id, option_text: 'Not a Case')
Hanuman::AnswerChoice.create(question_id: a_q3.id, option_text: 'Suspected')
Hanuman::AnswerChoice.create(question_id: a_q3.id, option_text: 'Probable')
Hanuman::AnswerChoice.create(question_id: a_q3.id, option_text: 'Confirmed')
#type
Hanuman::AnswerChoice.create(question_id: a_q6.id, option_text: 'Employee')
Hanuman::AnswerChoice.create(question_id: a_q6.id, option_text: 'Resident')
#sex
Hanuman::AnswerChoice.create(question_id: a_q11.id, option_text: 'Male')
Hanuman::AnswerChoice.create(question_id: a_q11.id, option_text: 'Female')
Hanuman::AnswerChoice.create(question_id: a_q11.id, option_text: 'Transgender')
#ethnicity/race
Hanuman::AnswerChoice.create(question_id: a_q12.id, option_text: 'Hispanic')
Hanuman::AnswerChoice.create(question_id: a_q12.id, option_text: 'Caucasian')
Hanuman::AnswerChoice.create(question_id: a_q12.id, option_text: 'African American')
Hanuman::AnswerChoice.create(question_id: a_q12.id, option_text: 'Alaskan Native')
Hanuman::AnswerChoice.create(question_id: a_q12.id, option_text: 'Asian')
Hanuman::AnswerChoice.create(question_id: a_q12.id, option_text: 'Pacific Islander')
Hanuman::AnswerChoice.create(question_id: a_q12.id, option_text: 'Other')
#symptoms
a_answergroup_gi = Hanuman::AnswerChoice.create(question_id: a_q13.id, option_text: 'GI', scientific_text: 'GI')
a_answergroup_gi.children.create(question_id: a_q13.id, option_text: 'Abdominal Pain', scientific_text: 'Abdominal Pain')
a_answergroup_gi.children.create(question_id: a_q13.id, option_text: 'Diarrhea', scientific_text: 'Diarrhea')
a_answergroup_gi.children.create(question_id: a_q13.id, option_text: 'Nausea', scientific_text: 'Nausea')
a_answergroup_gi.children.create(question_id: a_q13.id, option_text: 'Vomiting', scientific_text: 'Vomiting')
a_answergroup_neurologic = Hanuman::AnswerChoice.create(question_id: a_q13.id, option_text: 'Neurologic', scientific_text: 'Neurologic')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Ascending', scientific_text: 'Ascending')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Blurred Vision', scientific_text: 'Blurred Vision')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Decending', scientific_text: 'Decending')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Delirium', scientific_text: 'Delirium')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Dysphagia', scientific_text: 'Dysphagia')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Headache', scientific_text: 'Headache')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Pain', scientific_text: 'Pain')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Paralysis', scientific_text: 'Paralysis')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Photophobia', scientific_text: 'Photophobia')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Seizures', scientific_text: 'Seizures')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Slurred Speech', scientific_text: 'Slurred Speech')
a_answergroup_neurologic.children.create(question_id: a_q13.id, option_text: 'Weakness', scientific_text: 'Weakness')
a_answergroup_non_specific = Hanuman::AnswerChoice.create(question_id: a_q13.id, option_text: 'Non Specific', scientific_text: 'Non Specific')
a_answergroup_non_specific.children.create(question_id: a_q13.id, option_text: 'Diaphoresis', scientific_text: 'Diaphoresis')
a_answergroup_non_specific.children.create(question_id: a_q13.id, option_text: 'Fever', scientific_text: 'Fever')
a_answergroup_non_specific.children.create(question_id: a_q13.id, option_text: 'Malaise', scientific_text: 'Malaise')
a_answergroup_non_specific.children.create(question_id: a_q13.id, option_text: 'Nodes', scientific_text: 'Nodes')
a_answergroup_non_specific.children.create(question_id: a_q13.id, option_text: 'Rigors', scientific_text: 'Rigors')
a_answergroup_respiratory = Hanuman::AnswerChoice.create(question_id: a_q13.id, option_text: 'Respiratory', scientific_text: 'Respiratory')
a_answergroup_respiratory.children.create(question_id: a_q13.id, option_text: 'Chest Pain', scientific_text: 'Chest Pain')
a_answergroup_respiratory.children.create(question_id: a_q13.id, option_text: 'Cough', scientific_text: 'Cough')
a_answergroup_respiratory.children.create(question_id: a_q13.id, option_text: 'Cyanosis', scientific_text: 'Cyanosis')
a_answergroup_respiratory.children.create(question_id: a_q13.id, option_text: 'Dyspnea', scientific_text: 'Dyspnea')
a_answergroup_respiratory.children.create(question_id: a_q13.id, option_text: 'Haemoptysis', scientific_text: 'Coughing Up Blood')
a_answergroup_respiratory.children.create(question_id: a_q13.id, option_text: 'Productive', scientific_text: 'Productive')
a_answergroup_respiratory.children.create(question_id: a_q13.id, option_text: 'X-Ray', scientific_text: 'X-Ray')
a_answergroup_skin = Hanuman::AnswerChoice.create(question_id: a_q13.id, option_text: 'Skin', scientific_text: 'Skin')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Bleedig Gums', scientific_text: 'Bleedig Gums')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Blisters', scientific_text: 'Blisters')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Bruising', scientific_text: 'Bruising')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Eschar', scientific_text: 'Eschar')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Masculopapular', scientific_text: 'Masculopapular')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Peeling', scientific_text: 'Peeling')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Petechiae', scientific_text: 'Petechiae')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Point of Origin', scientific_text: 'Point of Origin')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Progression', scientific_text: 'Progression')
a_answergroup_skin.children.create(question_id: a_q13.id, option_text: 'Rash', scientific_text: 'Rash')

puts "Create Survey Questions"
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q1.id,
    sort_order: 1,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q2.id,
    sort_order: 2,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q3.id,
    sort_order: 3,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q4.id,
    sort_order: 4,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q5.id,
    sort_order: 5,
    duplicator: false,
    group: "step 1"
  }
])
#line list multi person entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q6.id,
    sort_order: 6,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q7.id,
    sort_order: 7,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q8.id,
    sort_order: 8,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q9.id,
    sort_order: 9,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q10.id,
    sort_order: 10,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q11.id,
    sort_order: 11,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q12.id,
    sort_order: 12,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q13.id,
    sort_order: 13,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q14.id,
    sort_order: 14,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q15.id,
    sort_order: 15,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q16.id,
    sort_order: 16,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q17.id,
    sort_order: 17,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q18.id,
    sort_order: 18,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q19.id,
    sort_order: 19,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q20.id,
    sort_order: 20,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q21.id,
    sort_order: 21,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q22.id,
    sort_order: 22,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q23.id,
    sort_order: 23,
    duplicator: true,
    group: "step 2"
  }
])
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_long_term_care.id,
    question_id: a_q24.id,
    sort_order: 24,
    duplicator: false,
    group: "step 3"
  }
])

puts "Create General Outbreak School Survey"
general_outbreak_survey_school = Hanuman::SurveyTemplate.create(
  name: 'General Outbreak School',
  status: 'active',
  organization_id: suntoucher.id,
  survey_type: 'School'
)

puts "Create Questions"
#report level single entry
b_q1 = Hanuman::Question.create(question_text: 'Report Date', answer_type_id: answer_date.id)
b_q2 = Hanuman::Question.create(question_text: 'Syndrome Type', answer_type_id: answer_select.id)
b_q3 = Hanuman::Question.create(question_text: 'Report Status', answer_type_id: answer_radio.id)
b_q4 = Hanuman::Question.create(question_text: 'User ID', answer_type_id: answer_text.id)
b_q5 = Hanuman::Question.create(question_text: 'Facility ID', answer_type_id: answer_text.id)
#line list multi person entry
b_q6 = Hanuman::Question.create(question_text: 'Type', answer_type_id: answer_radio.id)
b_q7 = Hanuman::Question.create(question_text: 'First and Last Name', answer_type_id: answer_text.id)
b_q8 = Hanuman::Question.create(question_text: 'Phone (805-765-4321)', answer_type_id: answer_text.id)
b_q9 = Hanuman::Question.create(question_text: 'Location/Address/Case Name', answer_type_id: answer_text.id)
b_q10 = Hanuman::Question.create(question_text: 'Age', answer_type_id: answer_text.id)
b_q11 = Hanuman::Question.create(question_text: 'Sex', answer_type_id: answer_select.id)
b_q12 = Hanuman::Question.create(question_text: 'Ethnicity/Race', answer_type_id: answer_select.id)
b_q13 = Hanuman::Question.create(question_text: 'Symptoms', answer_type_id: answer_chosenmultiselect.id)
b_q14 = Hanuman::Question.create(question_text: 'Date of Recovery', answer_type_id: answer_date.id)
b_q15 = Hanuman::Question.create(question_text: 'Diagnosis Date', answer_type_id: answer_date.id)
b_q16 = Hanuman::Question.create(question_text: 'Date of Exposure', answer_type_id: answer_date.id)
b_q17 = Hanuman::Question.create(question_text: 'Date of Onset', answer_type_id: answer_date.id)
b_q18 = Hanuman::Question.create(question_text: 'Treatment Date', answer_type_id: answer_date.id)
b_q19 = Hanuman::Question.create(question_text: 'Date of Hospitalization', answer_type_id: answer_date.id)
b_q20 = Hanuman::Question.create(question_text: 'Date of Death', answer_type_id: answer_date.id)
b_q21 = Hanuman::Question.create(question_text: 'Lab Collection Date', answer_type_id: answer_date.id)
b_q22 = Hanuman::Question.create(question_text: 'Speciman Type', answer_type_id: answer_text.id)
b_q23 = Hanuman::Question.create(question_text: 'Lab Test Type', answer_type_id: answer_text.id)
#report level single entry
b_q24 = Hanuman::Question.create(question_text: 'Enter Additional Important Information', answer_type_id: answer_textarea.id)

puts "Create Answer Choices"
#syndrome type
Hanuman::AnswerChoice.create(question_id: b_q2.id, option_text: 'Skin')
Hanuman::AnswerChoice.create(question_id: b_q2.id, option_text: 'GI')
Hanuman::AnswerChoice.create(question_id: b_q2.id, option_text: 'Respiratory')
Hanuman::AnswerChoice.create(question_id: b_q2.id, option_text: 'Neurologic')
Hanuman::AnswerChoice.create(question_id: b_q2.id, option_text: 'Other')
#report status
Hanuman::AnswerChoice.create(question_id: b_q3.id, option_text: 'Not a Case')
Hanuman::AnswerChoice.create(question_id: b_q3.id, option_text: 'Suspected')
Hanuman::AnswerChoice.create(question_id: b_q3.id, option_text: 'Probable')
Hanuman::AnswerChoice.create(question_id: b_q3.id, option_text: 'Confirmed')
#type
Hanuman::AnswerChoice.create(question_id: b_q6.id, option_text: 'Staff')
Hanuman::AnswerChoice.create(question_id: b_q6.id, option_text: 'Student')
#sex
Hanuman::AnswerChoice.create(question_id: b_q11.id, option_text: 'Male')
Hanuman::AnswerChoice.create(question_id: b_q11.id, option_text: 'Female')
Hanuman::AnswerChoice.create(question_id: b_q11.id, option_text: 'Transgender')
#ethnicity/race
Hanuman::AnswerChoice.create(question_id: b_q12.id, option_text: 'Hispanic')
Hanuman::AnswerChoice.create(question_id: b_q12.id, option_text: 'Caucasian')
Hanuman::AnswerChoice.create(question_id: b_q12.id, option_text: 'African American')
Hanuman::AnswerChoice.create(question_id: b_q12.id, option_text: 'Alaskan Native')
Hanuman::AnswerChoice.create(question_id: b_q12.id, option_text: 'Asian')
Hanuman::AnswerChoice.create(question_id: b_q12.id, option_text: 'Pacific Islander')
Hanuman::AnswerChoice.create(question_id: b_q12.id, option_text: 'Other')
#symptoms
b_answergroup_gi = Hanuman::AnswerChoice.create(question_id: b_q13.id, option_text: 'GI', scientific_text: 'GI')
b_answergroup_gi.children.create(question_id: b_q13.id, option_text: 'Abdominal Pain', scientific_text: 'Abdominal Pain')
b_answergroup_gi.children.create(question_id: b_q13.id, option_text: 'Diarrhea', scientific_text: 'Diarrhea')
b_answergroup_gi.children.create(question_id: b_q13.id, option_text: 'Nausea', scientific_text: 'Nausea')
b_answergroup_gi.children.create(question_id: b_q13.id, option_text: 'Vomiting', scientific_text: 'Vomiting')
b_answergroup_neurologic = Hanuman::AnswerChoice.create(question_id: b_q13.id, option_text: 'Neurologic', scientific_text: 'Neurologic')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Ascending', scientific_text: 'Ascending')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Blurred Vision', scientific_text: 'Blurred Vision')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Decending', scientific_text: 'Decending')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Delirium', scientific_text: 'Delirium')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Dysphagia', scientific_text: 'Dysphagia')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Headache', scientific_text: 'Headache')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Pain', scientific_text: 'Pain')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Paralysis', scientific_text: 'Paralysis')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Photophobia', scientific_text: 'Photophobia')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Seizures', scientific_text: 'Seizures')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Slurred Speech', scientific_text: 'Slurred Speech')
b_answergroup_neurologic.children.create(question_id: b_q13.id, option_text: 'Weakness', scientific_text: 'Weakness')
b_answergroup_non_specific = Hanuman::AnswerChoice.create(question_id: b_q13.id, option_text: 'Non Specific', scientific_text: 'Non Specific')
b_answergroup_non_specific.children.create(question_id: b_q13.id, option_text: 'Diaphoresis', scientific_text: 'Diaphoresis')
b_answergroup_non_specific.children.create(question_id: b_q13.id, option_text: 'Fever', scientific_text: 'Fever')
b_answergroup_non_specific.children.create(question_id: b_q13.id, option_text: 'Malaise', scientific_text: 'Malaise')
b_answergroup_non_specific.children.create(question_id: b_q13.id, option_text: 'Nodes', scientific_text: 'Nodes')
b_answergroup_non_specific.children.create(question_id: b_q13.id, option_text: 'Rigors', scientific_text: 'Rigors')
b_answergroup_respiratory = Hanuman::AnswerChoice.create(question_id: b_q13.id, option_text: 'Respiratory', scientific_text: 'Respiratory')
b_answergroup_respiratory.children.create(question_id: b_q13.id, option_text: 'Chest Pain', scientific_text: 'Chest Pain')
b_answergroup_respiratory.children.create(question_id: b_q13.id, option_text: 'Cough', scientific_text: 'Cough')
b_answergroup_respiratory.children.create(question_id: b_q13.id, option_text: 'Cyanosis', scientific_text: 'Cyanosis')
b_answergroup_respiratory.children.create(question_id: b_q13.id, option_text: 'Dyspnea', scientific_text: 'Dyspnea')
b_answergroup_respiratory.children.create(question_id: b_q13.id, option_text: 'Haemoptysis', scientific_text: 'Coughing Up Blood')
b_answergroup_respiratory.children.create(question_id: b_q13.id, option_text: 'Productive', scientific_text: 'Productive')
b_answergroup_respiratory.children.create(question_id: b_q13.id, option_text: 'X-Ray', scientific_text: 'X-Ray')
b_answergroup_skin = Hanuman::AnswerChoice.create(question_id: b_q13.id, option_text: 'Skin', scientific_text: 'Skin')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Bleedig Gums', scientific_text: 'Bleedig Gums')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Blisters', scientific_text: 'Blisters')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Bruising', scientific_text: 'Bruising')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Eschar', scientific_text: 'Eschar')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Masculopapular', scientific_text: 'Masculopapular')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Peeling', scientific_text: 'Peeling')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Petechiae', scientific_text: 'Petechiae')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Point of Origin', scientific_text: 'Point of Origin')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Progression', scientific_text: 'Progression')
b_answergroup_skin.children.create(question_id: b_q13.id, option_text: 'Rash', scientific_text: 'Rash')

puts "Create Survey Questions"
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q1.id,
    sort_order: 1,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q2.id,
    sort_order: 2,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q3.id,
    sort_order: 3,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q4.id,
    sort_order: 4,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q5.id,
    sort_order: 5,
    duplicator: false,
    group: "step 1"
  }
])
#line list multi person entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q6.id,
    sort_order: 6,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q7.id,
    sort_order: 7,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q8.id,
    sort_order: 8,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q9.id,
    sort_order: 9,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q10.id,
    sort_order: 10,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q11.id,
    sort_order: 11,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q12.id,
    sort_order: 12,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q13.id,
    sort_order: 13,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q14.id,
    sort_order: 14,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q15.id,
    sort_order: 15,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q16.id,
    sort_order: 16,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q17.id,
    sort_order: 17,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q18.id,
    sort_order: 18,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q19.id,
    sort_order: 19,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q20.id,
    sort_order: 20,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q21.id,
    sort_order: 21,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q22.id,
    sort_order: 22,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q23.id,
    sort_order: 23,
    duplicator: true,
    group: "step 2"
  }
])
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_school.id,
    question_id: b_q24.id,
    sort_order: 24,
    duplicator: false,
    group: "step 3"
  }
])

puts "Create General Outbreak Hospital/Clinic Survey"
general_outbreak_survey_hospital_clinic = Hanuman::SurveyTemplate.create(
  name: 'General Outbreak Hospital/Clinic',
  status: 'active',
  organization_id: suntoucher.id,
  survey_type: 'Hospital/Clinic'
)

puts "Create Questions"
#report level single entry
c_q1 = Hanuman::Question.create(question_text: 'Report Date', answer_type_id: answer_date.id)
c_q2 = Hanuman::Question.create(question_text: 'Syndrome Type', answer_type_id: answer_select.id)
c_q3 = Hanuman::Question.create(question_text: 'Report Status', answer_type_id: answer_radio.id)
c_q4 = Hanuman::Question.create(question_text: 'User ID', answer_type_id: answer_text.id)
c_q5 = Hanuman::Question.create(question_text: 'Facility ID', answer_type_id: answer_text.id)
#line list multi person entry
c_q6 = Hanuman::Question.create(question_text: 'Type', answer_type_id: answer_radio.id)
c_q7 = Hanuman::Question.create(question_text: 'First and Last Name', answer_type_id: answer_text.id)
c_q8 = Hanuman::Question.create(question_text: 'Phone (805-765-4321)', answer_type_id: answer_text.id)
c_q9 = Hanuman::Question.create(question_text: 'Location/Address/Case Name', answer_type_id: answer_text.id)
c_q10 = Hanuman::Question.create(question_text: 'Age', answer_type_id: answer_text.id)
c_q11 = Hanuman::Question.create(question_text: 'Sex', answer_type_id: answer_select.id)
c_q12 = Hanuman::Question.create(question_text: 'Ethnicity/Race', answer_type_id: answer_select.id)
c_q13 = Hanuman::Question.create(question_text: 'Symptoms', answer_type_id: answer_chosenmultiselect.id)
c_q14 = Hanuman::Question.create(question_text: 'Date of Recovery', answer_type_id: answer_date.id)
c_q15 = Hanuman::Question.create(question_text: 'Diagnosis Date', answer_type_id: answer_date.id)
c_q16 = Hanuman::Question.create(question_text: 'Date of Exposure', answer_type_id: answer_date.id)
c_q17 = Hanuman::Question.create(question_text: 'Date of Onset', answer_type_id: answer_date.id)
c_q18 = Hanuman::Question.create(question_text: 'Treatment Date', answer_type_id: answer_date.id)
c_q19 = Hanuman::Question.create(question_text: 'Date of Hospitalization', answer_type_id: answer_date.id)
c_q20 = Hanuman::Question.create(question_text: 'Date of Death', answer_type_id: answer_date.id)
c_q21 = Hanuman::Question.create(question_text: 'Lab Collection Date', answer_type_id: answer_date.id)
c_q22 = Hanuman::Question.create(question_text: 'Speciman Type', answer_type_id: answer_text.id)
c_q23 = Hanuman::Question.create(question_text: 'Lab Test Type', answer_type_id: answer_text.id)
#report level single entry
c_q24 = Hanuman::Question.create(question_text: 'Enter Additional Important Information', answer_type_id: answer_textarea.id)

puts "Create Answer Choices"
#syndrome type
Hanuman::AnswerChoice.create(question_id: c_q2.id, option_text: 'Skin')
Hanuman::AnswerChoice.create(question_id: c_q2.id, option_text: 'GI')
Hanuman::AnswerChoice.create(question_id: c_q2.id, option_text: 'Respiratory')
Hanuman::AnswerChoice.create(question_id: c_q2.id, option_text: 'Neurologic')
Hanuman::AnswerChoice.create(question_id: c_q2.id, option_text: 'Other')
#report status
Hanuman::AnswerChoice.create(question_id: c_q3.id, option_text: 'Not a Case')
Hanuman::AnswerChoice.create(question_id: c_q3.id, option_text: 'Suspected')
Hanuman::AnswerChoice.create(question_id: c_q3.id, option_text: 'Probable')
Hanuman::AnswerChoice.create(question_id: c_q3.id, option_text: 'Confirmed')
#type
Hanuman::AnswerChoice.create(question_id: c_q6.id, option_text: 'Staff')
Hanuman::AnswerChoice.create(question_id: c_q6.id, option_text: 'Patient')
#sex
Hanuman::AnswerChoice.create(question_id: c_q11.id, option_text: 'Male')
Hanuman::AnswerChoice.create(question_id: c_q11.id, option_text: 'Female')
Hanuman::AnswerChoice.create(question_id: c_q11.id, option_text: 'Transgender')
#ethnicity/race
Hanuman::AnswerChoice.create(question_id: c_q12.id, option_text: 'Hispanic')
Hanuman::AnswerChoice.create(question_id: c_q12.id, option_text: 'Caucasian')
Hanuman::AnswerChoice.create(question_id: c_q12.id, option_text: 'African American')
Hanuman::AnswerChoice.create(question_id: c_q12.id, option_text: 'Alaskan Native')
Hanuman::AnswerChoice.create(question_id: c_q12.id, option_text: 'Asian')
Hanuman::AnswerChoice.create(question_id: c_q12.id, option_text: 'Pacific Islander')
Hanuman::AnswerChoice.create(question_id: c_q12.id, option_text: 'Other')
#symptoms
c_answergroup_gi = Hanuman::AnswerChoice.create(question_id: c_q13.id, option_text: 'GI', scientific_text: 'GI')
c_answergroup_gi.children.create(question_id: c_q13.id, option_text: 'Abdominal Pain', scientific_text: 'Abdominal Pain')
c_answergroup_gi.children.create(question_id: c_q13.id, option_text: 'Diarrhea', scientific_text: 'Diarrhea')
c_answergroup_gi.children.create(question_id: c_q13.id, option_text: 'Nausea', scientific_text: 'Nausea')
c_answergroup_gi.children.create(question_id: c_q13.id, option_text: 'Vomiting', scientific_text: 'Vomiting')
c_answergroup_neurologic = Hanuman::AnswerChoice.create(question_id: c_q13.id, option_text: 'Neurologic', scientific_text: 'Neurologic')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Ascending', scientific_text: 'Ascending')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Blurred Vision', scientific_text: 'Blurred Vision')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Decending', scientific_text: 'Decending')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Delirium', scientific_text: 'Delirium')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Dysphagia', scientific_text: 'Dysphagia')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Headache', scientific_text: 'Headache')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Pain', scientific_text: 'Pain')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Paralysis', scientific_text: 'Paralysis')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Photophobia', scientific_text: 'Photophobia')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Seizures', scientific_text: 'Seizures')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Slurred Speech', scientific_text: 'Slurred Speech')
c_answergroup_neurologic.children.create(question_id: c_q13.id, option_text: 'Weakness', scientific_text: 'Weakness')
c_answergroup_non_specific = Hanuman::AnswerChoice.create(question_id: c_q13.id, option_text: 'Non Specific', scientific_text: 'Non Specific')
c_answergroup_non_specific.children.create(question_id: c_q13.id, option_text: 'Diaphoresis', scientific_text: 'Diaphoresis')
c_answergroup_non_specific.children.create(question_id: c_q13.id, option_text: 'Fever', scientific_text: 'Fever')
c_answergroup_non_specific.children.create(question_id: c_q13.id, option_text: 'Malaise', scientific_text: 'Malaise')
c_answergroup_non_specific.children.create(question_id: c_q13.id, option_text: 'Nodes', scientific_text: 'Nodes')
c_answergroup_non_specific.children.create(question_id: c_q13.id, option_text: 'Rigors', scientific_text: 'Rigors')
c_answergroup_respiratory = Hanuman::AnswerChoice.create(question_id: c_q13.id, option_text: 'Respiratory', scientific_text: 'Respiratory')
c_answergroup_respiratory.children.create(question_id: c_q13.id, option_text: 'Chest Pain', scientific_text: 'Chest Pain')
c_answergroup_respiratory.children.create(question_id: c_q13.id, option_text: 'Cough', scientific_text: 'Cough')
c_answergroup_respiratory.children.create(question_id: c_q13.id, option_text: 'Cyanosis', scientific_text: 'Cyanosis')
c_answergroup_respiratory.children.create(question_id: c_q13.id, option_text: 'Dyspnea', scientific_text: 'Dyspnea')
c_answergroup_respiratory.children.create(question_id: c_q13.id, option_text: 'Haemoptysis', scientific_text: 'Coughing Up Blood')
c_answergroup_respiratory.children.create(question_id: c_q13.id, option_text: 'Productive', scientific_text: 'Productive')
c_answergroup_respiratory.children.create(question_id: c_q13.id, option_text: 'X-Ray', scientific_text: 'X-Ray')
c_answergroup_skin = Hanuman::AnswerChoice.create(question_id: c_q13.id, option_text: 'Skin', scientific_text: 'Skin')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Bleedig Gums', scientific_text: 'Bleedig Gums')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Blisters', scientific_text: 'Blisters')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Bruising', scientific_text: 'Bruising')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Eschar', scientific_text: 'Eschar')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Masculopapular', scientific_text: 'Masculopapular')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Peeling', scientific_text: 'Peeling')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Petechiae', scientific_text: 'Petechiae')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Point of Origin', scientific_text: 'Point of Origin')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Progression', scientific_text: 'Progression')
c_answergroup_skin.children.create(question_id: c_q13.id, option_text: 'Rash', scientific_text: 'Rash')

puts "Create Survey Questions"
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q1.id,
    sort_order: 1,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q2.id,
    sort_order: 2,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q3.id,
    sort_order: 3,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q4.id,
    sort_order: 4,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q5.id,
    sort_order: 5,
    duplicator: false,
    group: "step 1"
  }
])
#line list multi person entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q6.id,
    sort_order: 6,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q7.id,
    sort_order: 7,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q8.id,
    sort_order: 8,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q9.id,
    sort_order: 9,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q10.id,
    sort_order: 10,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q11.id,
    sort_order: 11,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q12.id,
    sort_order: 12,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q13.id,
    sort_order: 13,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q14.id,
    sort_order: 14,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q15.id,
    sort_order: 15,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q16.id,
    sort_order: 16,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q17.id,
    sort_order: 17,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q18.id,
    sort_order: 18,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q19.id,
    sort_order: 19,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q20.id,
    sort_order: 20,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q21.id,
    sort_order: 21,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q22.id,
    sort_order: 22,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q23.id,
    sort_order: 23,
    duplicator: true,
    group: "step 2"
  }
])
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_hospital_clinic.id,
    question_id: c_q24.id,
    sort_order: 24,
    duplicator: false,
    group: "step 3"
  }
])

puts "Create General Outbreak Animal Survey"
general_outbreak_survey_animal = Hanuman::SurveyTemplate.create(
  name: 'General Outbreak Animal',
  status: 'active',
  organization_id: suntoucher.id,
  survey_type: 'Animal'
)

puts "Create Questions"
#report level single entry
d_q1 = Hanuman::Question.create(question_text: 'Report Date', answer_type_id: answer_date.id)
d_q2 = Hanuman::Question.create(question_text: 'Syndrome Type', answer_type_id: answer_select.id)
d_q3 = Hanuman::Question.create(question_text: 'Report Status', answer_type_id: answer_radio.id)
d_q4 = Hanuman::Question.create(question_text: 'User ID', answer_type_id: answer_text.id)
d_q5 = Hanuman::Question.create(question_text: 'Facility ID', answer_type_id: answer_text.id)
#line list multi person entry
#owner or responsible party information
d_q6 = Hanuman::Question.create(question_text: 'Owner or Responsible Party Information', answer_type_id: answer_section.id)
d_q7 = Hanuman::Question.create(question_text: 'First and Last Name', answer_type_id: answer_text.id)
d_q8 = Hanuman::Question.create(question_text: 'Phone (805-765-4321)', answer_type_id: answer_text.id)
d_q9 = Hanuman::Question.create(question_text: 'Email', answer_type_id: answer_text.id)
d_q10 = Hanuman::Question.create(question_text: 'Business or Agency Name', answer_type_id: answer_text.id)
d_q11 = Hanuman::Question.create(question_text: 'Business or Agency Phone (805-765-4321)', answer_type_id: answer_text.id)
d_q12 = Hanuman::Question.create(question_text: 'Business or Agency Fax (805-765-4321)', answer_type_id: answer_text.id)
d_q13 = Hanuman::Question.create(question_text: 'Address', answer_type_id: answer_text.id)
d_q14 = Hanuman::Question.create(question_text: 'City', answer_type_id: answer_text.id)
d_q15 = Hanuman::Question.create(question_text: 'Zip Code', answer_type_id: answer_text.id)
#animal information
d_q16 = Hanuman::Question.create(question_text: 'Animal Information', answer_type_id: answer_section.id)
d_q17 = Hanuman::Question.create(question_text: 'Animal Name', answer_type_id: answer_text.id)
d_q18 = Hanuman::Question.create(question_text: 'Identification Code', answer_type_id: answer_text.id)
d_q19 = Hanuman::Question.create(question_text: 'Species', answer_type_id: answer_text.id)
d_q20 = Hanuman::Question.create(question_text: 'Breed', answer_type_id: answer_text.id)
d_q21 = Hanuman::Question.create(question_text: 'Color', answer_type_id: answer_text.id)
d_q22 = Hanuman::Question.create(question_text: 'Age', answer_type_id: answer_text.id)
d_q23 = Hanuman::Question.create(question_text: 'Sex', answer_type_id: answer_select.id)
d_q24 = Hanuman::Question.create(question_text: 'Reproductive Status', answer_type_id: answer_select.id)
d_q25 = Hanuman::Question.create(question_text: 'Ownership Status', answer_type_id: answer_select.id)
d_q26 = Hanuman::Question.create(question_text: 'Address', answer_type_id: answer_text.id)
d_q27 = Hanuman::Question.create(question_text: 'City', answer_type_id: answer_text.id)
d_q28 = Hanuman::Question.create(question_text: 'Zip Code', answer_type_id: answer_text.id)
#symptoms and date of recovery
d_q29 = Hanuman::Question.create(question_text: 'Symtoms & Date of Recovery', answer_type_id: answer_section.id)
d_q30 = Hanuman::Question.create(question_text: 'Symptoms', answer_type_id: answer_chosenmultiselect.id)
d_q31 = Hanuman::Question.create(question_text: 'Date of Recovery', answer_type_id: answer_date.id)
#other important dates
d_q32 = Hanuman::Question.create(question_text: 'Other Important Dates', answer_type_id: answer_section.id)
d_q33 = Hanuman::Question.create(question_text: 'Diagnosis Date', answer_type_id: answer_date.id)
d_q34 = Hanuman::Question.create(question_text: 'Date of Exposure', answer_type_id: answer_date.id)
d_q35 = Hanuman::Question.create(question_text: 'Date of Onset', answer_type_id: answer_date.id)
d_q36 = Hanuman::Question.create(question_text: 'Treatment Date', answer_type_id: answer_date.id)
d_q37 = Hanuman::Question.create(question_text: 'Date of Hospitalization', answer_type_id: answer_date.id)
d_q38 = Hanuman::Question.create(question_text: 'Date of Death', answer_type_id: answer_date.id)
#reporting agency or facility information
d_q39 = Hanuman::Question.create(question_text: 'Reporting Agency or Facility Information', answer_type_id: answer_section.id)
d_q40 = Hanuman::Question.create(question_text: 'Reporting Individual Name', answer_type_id: answer_text.id)
d_q41 = Hanuman::Question.create(question_text: 'Phone (805-765-4321)', answer_type_id: answer_text.id)
d_q42 = Hanuman::Question.create(question_text: 'Fax (805-765-4321)', answer_type_id: answer_text.id)
d_q43 = Hanuman::Question.create(question_text: 'Reporting Individual Occupation', answer_type_id: answer_text.id)
d_q44 = Hanuman::Question.create(question_text: 'Reporting Agency or Facility Name', answer_type_id: answer_text.id)
d_q45 = Hanuman::Question.create(question_text: 'Email', answer_type_id: answer_text.id)
d_q46 = Hanuman::Question.create(question_text: 'Address', answer_type_id: answer_text.id)
d_q47 = Hanuman::Question.create(question_text: 'City', answer_type_id: answer_text.id)
d_q48 = Hanuman::Question.create(question_text: 'Zip Code', answer_type_id: answer_text.id)
#lab information
d_q49 = Hanuman::Question.create(question_text: 'Lab Information', answer_type_id: answer_section.id)
d_q50 = Hanuman::Question.create(question_text: 'Lab Name', answer_type_id: answer_text.id)
d_q51 = Hanuman::Question.create(question_text: '(805-765-4321)', answer_type_id: answer_helperabove.id)
d_q52 = Hanuman::Question.create(question_text: 'Phone', answer_type_id: answer_text.id)
d_q53 = Hanuman::Question.create(question_text: 'Fax', answer_type_id: answer_text.id)
d_q54 = Hanuman::Question.create(question_text: '(805-765-4321)', answer_type_id: answer_helperbelow.id)
d_q55 = Hanuman::Question.create(question_text: 'Address', answer_type_id: answer_text.id)
d_q56 = Hanuman::Question.create(question_text: 'City', answer_type_id: answer_text.id)
d_q57 = Hanuman::Question.create(question_text: 'Zip Code', answer_type_id: answer_text.id)
d_q58 = Hanuman::Question.create(question_text: 'Lab Collection Date', answer_type_id: answer_date.id)
d_q59 = Hanuman::Question.create(question_text: 'Speciman Type', answer_type_id: answer_text.id)
d_q60 = Hanuman::Question.create(question_text: 'Lab Test Type', answer_type_id: answer_text.id)
#report level single entry
d_q61 = Hanuman::Question.create(question_text: 'Enter Additional Important Information', answer_type_id: answer_textarea.id)

puts "Create Answer Choices"
#syndrome type
Hanuman::AnswerChoice.create(question_id: d_q2.id, option_text: 'Skin')
Hanuman::AnswerChoice.create(question_id: d_q2.id, option_text: 'GI')
Hanuman::AnswerChoice.create(question_id: d_q2.id, option_text: 'Respiratory')
Hanuman::AnswerChoice.create(question_id: d_q2.id, option_text: 'Neurologic')
Hanuman::AnswerChoice.create(question_id: d_q2.id, option_text: 'Other')
#report status
Hanuman::AnswerChoice.create(question_id: d_q3.id, option_text: 'Not a Case')
Hanuman::AnswerChoice.create(question_id: d_q3.id, option_text: 'Suspected')
Hanuman::AnswerChoice.create(question_id: d_q3.id, option_text: 'Probable')
Hanuman::AnswerChoice.create(question_id: d_q3.id, option_text: 'Confirmed')
#sex
Hanuman::AnswerChoice.create(question_id: d_q23.id, option_text: 'Male')
Hanuman::AnswerChoice.create(question_id: d_q23.id, option_text: 'Female')
Hanuman::AnswerChoice.create(question_id: d_q23.id, option_text: 'Unknown')
#reproduction status
Hanuman::AnswerChoice.create(question_id: d_q24.id, option_text: 'Intact')
Hanuman::AnswerChoice.create(question_id: d_q24.id, option_text: 'Neutered/Spayed')
Hanuman::AnswerChoice.create(question_id: d_q24.id, option_text: 'Unknown')
#ownership status
Hanuman::AnswerChoice.create(question_id: d_q25.id, option_text: 'Pet')
Hanuman::AnswerChoice.create(question_id: d_q25.id, option_text: 'Stray')
Hanuman::AnswerChoice.create(question_id: d_q25.id, option_text: 'Feral')
Hanuman::AnswerChoice.create(question_id: d_q25.id, option_text: 'Livestock')
Hanuman::AnswerChoice.create(question_id: d_q25.id, option_text: 'Wild, Unowned')
Hanuman::AnswerChoice.create(question_id: d_q25.id, option_text: 'Wild, Captive')
Hanuman::AnswerChoice.create(question_id: d_q25.id, option_text: 'Unknown')
#symptoms
d_answergroup_gi = Hanuman::AnswerChoice.create(question_id: d_q30.id, option_text: 'GI', scientific_text: 'GI')
d_answergroup_gi.children.create(question_id: d_q30.id, option_text: 'Abdominal Pain', scientific_text: 'Abdominal Pain')
d_answergroup_gi.children.create(question_id: d_q30.id, option_text: 'Diarrhea', scientific_text: 'Diarrhea')
d_answergroup_gi.children.create(question_id: d_q30.id, option_text: 'Nausea', scientific_text: 'Nausea')
d_answergroup_gi.children.create(question_id: d_q30.id, option_text: 'Vomiting', scientific_text: 'Vomiting')
d_answergroup_neurologic = Hanuman::AnswerChoice.create(question_id: d_q30.id, option_text: 'Neurologic', scientific_text: 'Neurologic')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Ascending', scientific_text: 'Ascending')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Blurred Vision', scientific_text: 'Blurred Vision')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Decending', scientific_text: 'Decending')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Delirium', scientific_text: 'Delirium')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Dysphagia', scientific_text: 'Dysphagia')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Headache', scientific_text: 'Headache')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Pain', scientific_text: 'Pain')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Paralysis', scientific_text: 'Paralysis')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Photophobia', scientific_text: 'Photophobia')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Seizures', scientific_text: 'Seizures')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Slurred Speech', scientific_text: 'Slurred Speech')
d_answergroup_neurologic.children.create(question_id: d_q30.id, option_text: 'Weakness', scientific_text: 'Weakness')
d_answergroup_non_specific = Hanuman::AnswerChoice.create(question_id: d_q30.id, option_text: 'Non Specific', scientific_text: 'Non Specific')
d_answergroup_non_specific.children.create(question_id: d_q30.id, option_text: 'Diaphoresis', scientific_text: 'Diaphoresis')
d_answergroup_non_specific.children.create(question_id: d_q30.id, option_text: 'Fever', scientific_text: 'Fever')
d_answergroup_non_specific.children.create(question_id: d_q30.id, option_text: 'Malaise', scientific_text: 'Malaise')
d_answergroup_non_specific.children.create(question_id: d_q30.id, option_text: 'Nodes', scientific_text: 'Nodes')
d_answergroup_non_specific.children.create(question_id: d_q30.id, option_text: 'Rigors', scientific_text: 'Rigors')
d_answergroup_respiratory = Hanuman::AnswerChoice.create(question_id: d_q30.id, option_text: 'Respiratory', scientific_text: 'Respiratory')
d_answergroup_respiratory.children.create(question_id: d_q30.id, option_text: 'Chest Pain', scientific_text: 'Chest Pain')
d_answergroup_respiratory.children.create(question_id: d_q30.id, option_text: 'Cough', scientific_text: 'Cough')
d_answergroup_respiratory.children.create(question_id: d_q30.id, option_text: 'Cyanosis', scientific_text: 'Cyanosis')
d_answergroup_respiratory.children.create(question_id: d_q30.id, option_text: 'Dyspnea', scientific_text: 'Dyspnea')
d_answergroup_respiratory.children.create(question_id: d_q30.id, option_text: 'Haemoptysis', scientific_text: 'Coughing Up Blood')
d_answergroup_respiratory.children.create(question_id: d_q30.id, option_text: 'Productive', scientific_text: 'Productive')
d_answergroup_respiratory.children.create(question_id: d_q30.id, option_text: 'X-Ray', scientific_text: 'X-Ray')
d_answergroup_skin = Hanuman::AnswerChoice.create(question_id: d_q30.id, option_text: 'Skin', scientific_text: 'Skin')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Bleedig Gums', scientific_text: 'Bleedig Gums')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Blisters', scientific_text: 'Blisters')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Bruising', scientific_text: 'Bruising')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Eschar', scientific_text: 'Eschar')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Masculopapular', scientific_text: 'Masculopapular')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Peeling', scientific_text: 'Peeling')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Petechiae', scientific_text: 'Petechiae')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Point of Origin', scientific_text: 'Point of Origin')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Progression', scientific_text: 'Progression')
d_answergroup_skin.children.create(question_id: d_q30.id, option_text: 'Rash', scientific_text: 'Rash')

puts "Create Survey Questions"
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q1.id,
    sort_order: 1,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q2.id,
    sort_order: 2,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q3.id,
    sort_order: 3,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q4.id,
    sort_order: 4,
    duplicator: false,
    group: "step 1"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q5.id,
    sort_order: 5,
    duplicator: false,
    group: "step 1"
  }
])
#line list multi person entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q6.id,
    sort_order: 6,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q7.id,
    sort_order: 7,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q8.id,
    sort_order: 8,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q9.id,
    sort_order: 9,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q10.id,
    sort_order: 10,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q11.id,
    sort_order: 11,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q12.id,
    sort_order: 12,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q13.id,
    sort_order: 13,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q14.id,
    sort_order: 14,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q15.id,
    sort_order: 15,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q16.id,
    sort_order: 16,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q17.id,
    sort_order: 17,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q18.id,
    sort_order: 18,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q19.id,
    sort_order: 19,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q20.id,
    sort_order: 20,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q21.id,
    sort_order: 21,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q22.id,
    sort_order: 22,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q23.id,
    sort_order: 23,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q24.id,
    sort_order: 24,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q25.id,
    sort_order: 25,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q26.id,
    sort_order: 26,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q27.id,
    sort_order: 27,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q28.id,
    sort_order: 28,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q29.id,
    sort_order: 29,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q30.id,
    sort_order: 30,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q31.id,
    sort_order: 31,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q32.id,
    sort_order: 32,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q33.id,
    sort_order: 33,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q34.id,
    sort_order: 34,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q35.id,
    sort_order: 35,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q36.id,
    sort_order: 36,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q37.id,
    sort_order: 37,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q38.id,
    sort_order: 38,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q39.id,
    sort_order: 39,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q40.id,
    sort_order: 40,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q41.id,
    sort_order: 41,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q42.id,
    sort_order: 42,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q43.id,
    sort_order: 43,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q44.id,
    sort_order: 44,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q45.id,
    sort_order: 45,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q46.id,
    sort_order: 46,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q47.id,
    sort_order: 47,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q48.id,
    sort_order: 48,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q49.id,
    sort_order: 49,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q50.id,
    sort_order: 50,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q51.id,
    sort_order: 51,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q52.id,
    sort_order: 52,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q53.id,
    sort_order: 53,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q54.id,
    sort_order: 54,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q55.id,
    sort_order: 55,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q56.id,
    sort_order: 56,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q57.id,
    sort_order: 57,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q58.id,
    sort_order: 58,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q59.id,
    sort_order: 59,
    duplicator: true,
    group: "step 2"
  },
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q60.id,
    sort_order: 60,
    duplicator: true,
    group: "step 2"
  }
])
#report level single entry
Hanuman::SurveyQuestion.create([
  {
    survey_template_id: general_outbreak_survey_animal.id,
    question_id: d_q61.id,
    sort_order: 61,
    duplicator: false,
    group: "step 3"
  }
])