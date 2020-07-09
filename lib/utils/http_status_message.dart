import 'dart:io';

class HttpStatusMessage {
  final int code;
  String message;
  HttpStatusMessage(
    this.code, {
    this.message,
  });

  getMessage(){
    return this.message ?? _defaultMessage();
  }

  String _defaultMessage(){
    switch(this.code){
      case HttpStatus.gatewayTimeout:
        return "Request execution time reached the limit";
      case HttpStatus.badGateway:
        return "Was not possible to connect to server";
      default:
        return "An unexpected error has occurred";
    }
  }

}
