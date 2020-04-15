import 'package:loja/src/db/database.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'ProdutoDAO.g.dart';


class ProdutoWithNameCategoria{
  final Produto produto1;
  final Categoria nameCategoria1;

  ProdutoWithNameCategoria( this.produto1, this.nameCategoria1);
}


@UseDao(tables: [Produtos, Categorias])
class ProdutoDAO extends DatabaseAccessor<Database> with _$ProdutoDAOMixin{

  ProdutoDAO(Database db) : super(db);

    Future addProduto (Produto a){
      return into(produtos).insert(a);
    }

    Future updateProduto (Produto a){
      return update(produtos).replace(a);
    }

    Stream<List<ProdutoWithNameCategoria>> listAllProdutos() {
     
        final query = select(produtos).join([
          leftOuterJoin(categorias, categorias.id.equalsExp(produtos.id_categoria)),
        ]);

        return query.watch().map((rows) {
        return rows.map((row) {
          return ProdutoWithNameCategoria(
            row.readTable(produtos),
            row.readTable(categorias),
          );
        }).toList();
});

    }

    Future removeProduto (id){
      return (delete(produtos)..where((prod) =>prod.id.equals(id))).go();
    }

    
}