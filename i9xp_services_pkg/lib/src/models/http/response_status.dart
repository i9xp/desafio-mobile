class ResponseStatus<T> {
  final int statusCode;
  final String error;
  final bool hasError;
  final T data;
  final bool hasData;
  ResponseStatus(this.statusCode, {this.error, this.data}): hasData = data != null, hasError = error != null || statusCode >= 400;
}
