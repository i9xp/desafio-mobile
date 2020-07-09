import 'http_status_message.dart';

class ApiResponse{
  
  Map<String, dynamic> _review = new Map<String, dynamic>();
  HttpStatusMessage _statusMessage;
  dynamic _content;
  bool _offline = false;

  ApiResponse({review, statusMessage, content, offline}){
    this._review = review ?? this._review;
    this._statusMessage = statusMessage ?? this._statusMessage;
    this._content = content ?? this._content;
    this._offline = offline ?? this._offline;
  }
  
  setReview(Map<String, dynamic> review){
    this._review = review;
  }

  setStatusMessage(HttpStatusMessage statusMessage){
    this._statusMessage = statusMessage;
  }

  setContent(dynamic content){
    this._content = content;
  }

  Map<String, dynamic> getReview(){
    return this._review;
  }

  HttpStatusMessage getStatusMessage(){
    return this._statusMessage;
  }

  dynamic getContent(){
    return this._content;
  }

  bool isOffline(){
    return this._offline;
  }

}