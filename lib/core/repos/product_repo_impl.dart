import 'package:either_dart/src/either.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/models/product_model.dart';
import 'package:fruits_hub/core/repos/product_repo.dart';
import 'package:fruits_hub/core/services/backend_endpoints.dart';
import 'package:fruits_hub/core/services/database_service.dart';

class ProductRepoImpl implements ProductRepo {
  final DataBaseService dataBaseService;

  ProductRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      var data = await dataBaseService.getData(
          path: BackendEndpoints.getProducts,
          query: {
            'orderBy': 'sellingCount',
            'limit': 10,
            'descending': true
          }) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure('Faild to get products'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data = await dataBaseService.getData(
          path: BackendEndpoints.getProducts) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure('Faild to get products'));
    }
  }
}
