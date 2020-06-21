
// Auto import
class ListExtenssion{}

extension ListUtils<T> on List<T> {
  num sum(num f(T element)) {
    num sum = 0;
    for(var item in this) {
      sum += f(item);
    }
    return sum;
  }
}