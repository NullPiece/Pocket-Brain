// import 'dart:convert';

class TestMsg {
  final String msg;

  const TestMsg({required this.msg});

  factory TestMsg.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      { 'msg': String msg} => TestMsg(
        msg: msg,
      ),
      _ => throw const FormatException('Failed to load TestMsgData')
    };
  }
}