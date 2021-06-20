import 'package:quizz_app/models/question_bank.dart';

class QuizzBrain{
  int _questionNumber = 0;
  List<QuestionBank> _questionBank = [
    QuestionBank(q: 'Some cats are actually allergic to humans',a: true),
    QuestionBank(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    QuestionBank(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    QuestionBank(q: 'A slug\'s blood is green.', a: true),
    QuestionBank(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    QuestionBank(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    QuestionBank(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    QuestionBank(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    QuestionBank(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    QuestionBank(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    QuestionBank(q: 'Google was originally called \"Backrub\".', a: true),
    QuestionBank(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    QuestionBank(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }

  bool isQuizzfinished(){
    if(_questionNumber >= _questionBank.length-1){
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
      String getQuestion(){
       return  _questionBank[_questionNumber].questionText;
      }
      bool getAnswer(){
        return _questionBank[_questionNumber].questionAnswer;
      }
}