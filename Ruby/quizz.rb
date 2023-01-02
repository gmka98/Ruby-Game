puts "Hello and Welcome to the Ruby Quizz Challenge!!!!!"
class Question
    attr_accessor :prompt,  :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end


p1 = "Which of those are  more difficult? \n(a)Backend\n (b)Front-end\n (c) Both"
p2 = "Who come first? \n(1)C#\n (2)C++\(3)C"
p3 = "What is Ruby? \n(a) a diamond\n (b) a dynamic, object-oriented, general-purpose programming language.\n (c)"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "1"),
    Question.new(p3, "b"),
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end 
    puts ("You got" + score.to_s + "/" + questions.length())
end

run_test(questions)