import 'package:quizz/qsnbank.dart';
import 'package:flutter/material.dart';

class Quizbrain {
  final List<Qsnbank> _qsnbank = [
    Qsnbank(qsn: "It's the correct spelling of 'one'?", ans: true),
    Qsnbank(qsn: "It's the correct spelling of 'tow'?", ans: false),
    Qsnbank(qsn: "It's the correct spelling of 'three'?", ans: true),
    Qsnbank(qsn: "It's the correct spelling of 'foor'?", ans: false),
    Qsnbank(qsn: 'Some cats are actually allergic to humans', ans: true),
    Qsnbank(
        qsn: 'You can lead a cow down stairs but not up stairs.', ans: false),
    Qsnbank(
        qsn: 'Approximately one quarter of human bones are in the feet.',
        ans: true),
    Qsnbank(qsn: 'A slug\'s blood is green.', ans: true),
    Qsnbank(
        qsn: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', ans: true),
    Qsnbank(qsn: 'It is illegal to pee in the Ocean in Portugal.', ans: true),
    Qsnbank(
        qsn:
            'No piece of square dry paper can be folded in half more than 7 times.',
        ans: false),
    Qsnbank(
        qsn:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        ans: true),
    Qsnbank(
        qsn:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        ans: false),
    Qsnbank(
        qsn:
            'The total surface area of two human lungs is approximately 70 square metres.',
        ans: true),
    Qsnbank(qsn: 'Google was originally called \"Backrub\".', ans: true),
    Qsnbank(
        qsn:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        ans: true),
    Qsnbank(
        qsn:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        ans: true),
  ];

  String? Getqsntxt() {
    return _qsnbank[_num].qsn;
  }

  bool? Getqsnans() {
    return _qsnbank[_num].ans;
  }

  int netnum() {
    return _qsnbank.length;
  }

  int _num = 0;
  int checkcount = 0;
  int closecount = 0;

  List<Widget> widz = [];
  bool _t = false;
  void checkiconad(bool temp) {
    if (_num < netnum() && _t == false) {
      widz.add(
        Icon(
          temp == true ? Icons.check : Icons.close,
          color: temp == true ? Colors.green : Colors.red,
        ),
      );
      if (temp == true) {
        checkcount++;
      } else {
        closecount++;
      }
    }
    if (_num < netnum() - 1) {
      nextnum();
    } else {
      _t = true;
    }
  }

  void closeiconad(bool temp) {
    if (_t == false && _num == netnum() - 1) {
      _t = true;
      widz.add(
        Icon(
          temp == false ? Icons.check : Icons.close,
          color: temp == false ? Colors.green : Colors.red,
        ),
      );
      if (temp == false) {
        checkcount++;
      } else {
        closecount++;
      }
    }
    if (_num < netnum() - 1) {
      nextnum();
      widz.add(
        Icon(
          temp == false ? Icons.check : Icons.close,
          color: temp == false ? Colors.green : Colors.red,
        ),
      );
      if (temp == false) {
        checkcount++;
      } else {
        closecount++;
      }
    }
  }

  void nextnum() {
    _num++;
  }

  void restart() {
    widz.removeRange(0, _num);
    _num = 0;
    closecount = 0;
    checkcount = 0;
    _t = false;
  }

  // int returnnum() {
  //   return _num;
  // }
}
