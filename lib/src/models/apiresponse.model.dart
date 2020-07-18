class ApiResponseModel<T> {
  T data;
  int statusCode;

  ApiResponseModel(this.data, this.statusCode);
}
