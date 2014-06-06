json.array!(@pregunta) do |preguntum|
  json.extract! preguntum, :id, :question, :answer, :clue1, :clue2, :fake_answer1, :fake_answer2, :fake_answer3
  json.url preguntum_url(preguntum, format: :json)
end
