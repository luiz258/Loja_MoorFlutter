import 'package:loja/src/db/dao/CategoriaDAO.dart';
import 'package:loja/src/db/dao/ProdutoDAO.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

class Produtos  extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get qtd => integer()();
  IntColumn get price => integer()();
  IntColumn get id_categoria => integer()();
  
}

class Categorias extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}


@UseMoor(tables: [Produtos, Categorias])
class Database extends _$Database{
  static Database instance = Database._internal();

  ProdutoDAO produtoDAO;
  CategoriaDAO categoriaDAO;

  Database._internal(): super(FlutterQueryExecutor.inDatabaseFolder(path: "db.sqlite")){
    produtoDAO = ProdutoDAO(this);
    categoriaDAO = CategoriaDAO(this);
  }


  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;
}