class QuestionForm {
  late String questiontext;
  late bool answertext;

  QuestionForm({required String q, required bool a}) {
    questiontext = q;
    answertext = a;
  }
}

class QuestionBank {
  int questionNo = 0;
  List<QuestionForm> question = [
    QuestionForm(
        q: 'The Great Wall of China is longer than the distance between London and Beijing.',
        a: true),
    QuestionForm(
        q: "'What Do You Mean' was Justin Bieber's first UK number one single.",
        a: true),
    QuestionForm(q: 'There are five different blood groups.', a: false),
    QuestionForm(q: 'Cinderella was the first Disney princess.', a: false),
    QuestionForm(q: 'Alexander Fleming discovered penicillin. ', a: true),
    QuestionForm(q: 'There are 219 episodes of Friends.', a: false),
    QuestionForm(q: 'Coffee is made from berries.', a: true),
    QuestionForm(q: 'In Harry Potter, Draco Malfoy has no siblings.', a: false),
    QuestionForm(
        q: 'The small intestine is about three-and-a-half times the length of your body.',
        a: true),
    QuestionForm(
        q: 'Tipu Sultan signed a secret agreement with Napoleon.', a: true),
    QuestionForm(
        q: 'Bananas are curved because they grow upwards towards the sun.',
        a: true),
    QuestionForm(q: 'In a deck of cards, the king has a mustache.', a: false),
    QuestionForm(
        q: 'In the English language there is no word that rhymes with orange.',
        a: true),
    QuestionForm(q: 'India does not have any Active Volcanoes.', a: false),
    QuestionForm(
        q: 'Venus is the hottest planet in the solar system.', a: true),
    QuestionForm(q: 'RASODE MEIN GOPI THI?', a: false),
    QuestionForm(q: ' India has Qualified for the FIFA World Cup', a: true),
  ];

  void nextQuestion() {
    if (questionNo < question.length - 1) {
      questionNo++;
    }
  }

  String getQuestion() {
    return question[questionNo].questiontext;
  }

  bool getAnswer() {
    return question[questionNo].answertext;
  }

  bool isFinished() {
    if (questionNo == question.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
