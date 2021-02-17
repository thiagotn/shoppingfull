import 'package:dio/dio.dart';
import 'package:shoppingfull/models/category-list-item.model.dart';
import 'package:shoppingfull/settings.dart';

class CategoryRepository {
  Future<List<CategoryListItemModel>> getAll() async {
    var url = "${Settings.apiUrl}v1/categories";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => CategoryListItemModel.fromJson(item))
        .toList();
  }
}
