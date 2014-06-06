class Preguntum
  include Mongoid::Document
  field :question, type: String
  field :answer, type: String
  field :clue1, type: String
  field :clue2, type: String
  field :fake_answer1, type: String
  field :fake_answer2, type: String
  field :fake_answer3, type: String
end
