abstract class Repository<T> {
  List<T> getAll();

  void add(T item);
}