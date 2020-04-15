import 'package:loja/src/db/database.dart';
import 'package:moor_flutter/moor_flutter.dart';


part 'CategoriaDAO.g.dart';

@UseDao(tables : [Produtos, Categorias])
class CategoriaDAO extends DatabaseAccessor<Database> with _$CategoriaDAOMixin {

    Stream<List<Categoria>> listAll() {
        return (select(categorias)).watch();
    }

    Future addCategoria(Categoria entity)  {
        return into(categorias).insert(entity);
    }

    Future updateCategoria(Categoria entity)  {
        return update(categorias).replace(entity);
    }

    Future removeCategoria( _id) {
       return (delete(categorias)..where((t) => t.id.equals(_id))).go();
    }
      

    CategoriaDAO(Database db) : super(db);
}