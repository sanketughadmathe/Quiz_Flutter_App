import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNo = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  List<Widget> _scoreKeeper = [
    Text(
      '',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  ];

  // void nextQuestion() {
  //   if (_questionNo < _questionBank.length - 1) {
  //     _questionNo++;
  //   }
  // }

  String getQuestionText() {
    if (_questionNo >= _questionBank.length) {
      return 'Done';
    } else
      return _questionBank[_questionNo].question;
  }

  bool getCorrectAnswer() {
    if (_questionNo >= _questionBank.length) {
      return false;
    } else
      return _questionBank[_questionNo].answer;
  }

  void nextScoreTrue() {
    print('questionNo: $_questionNo');
    print(_questionBank.length);

    if (_questionNo == _questionBank.length - 1) {
      if (_questionBank[_questionNo].answer == true) {
        _scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        _scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      _questionNo++;
    } else if (_questionNo >= _questionBank.length - 1) {
    } else if (_questionBank[_questionNo].answer == true) {
      _scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
      _questionNo++;
    } else {
      _scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
      _questionNo++;
    }
  }

  void nextScoreFalse() {
    print('questionNo: $_questionNo');
    print(_questionBank.length);
    if (_questionNo == _questionBank.length - 1) {
      if (_questionBank[_questionNo].answer == false) {
        _scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        _scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      _questionNo++;
    } else if (_questionNo >= _questionBank.length - 1) {
    } else if (_questionBank[_questionNo].answer == false) {
      _scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
      _questionNo++;
    } else {
      _scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
      _questionNo++;
    }
  }

  List<Widget> getScoreKeeper() {
    return _scoreKeeper;
  }
}
