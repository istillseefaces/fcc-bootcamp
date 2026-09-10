const questions = [
  {
  category: "chemistry",
  question: "What is the chemical symbol for water?",
  choices: ['1','2','3'],
  answer: '1'

  },
  {
    category: "science",
    question: "What is the powerhouse of the cell?",
    choices: ["Mitochondria", "Nucleus", "Ribosome"],
    answer: "Mitochondria"
  },
  {
    category: "geography",
    question: "What is the capital of France?",
    choices: ["London", "Berlin", "Paris"],
    answer: "Paris"
  },
  {
    category: "math",
    question: "What is 2 + 2?",
    choices: ["3", "4", "5"],
    answer: "4"
  },
  {
    category: "history",
    question: "Who was the first president of the United States?",
    choices: ["George Washington", "Abraham Lincoln", "Thomas Jefferson"],
    answer: "George Washington"
  }
];
  
function getRandomQuestion(questionsArray) {
  const randomIndex = Math.floor(Math.random() * questionsArray.length);
  return questionsArray[randomIndex];
}

function getRandomComputerChoice(choicesArray) {
  const randomIndex = Math.floor(Math.random() * choicesArray.length);
  return choicesArray[randomIndex];
}

function getResults(questionObj, computerChoice,) {
if(computerChoice === questionObj.answer) {
  return "The computer's choice is correct!"
} else {
return `The computer's choice is wrong. The correct answer is: ${questionObj.answer}`
}
}