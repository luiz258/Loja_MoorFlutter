import 'package:flutter/material.dart';
import 'package:loja/src/Page/AddProduct-widget.dart';
import 'package:loja/src/Page/categoria-widget.dart';
import 'package:loja/src/db/dao/ProdutoDAO.dart';
import 'package:loja/src/db/database.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.category), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return CategoriaWidget();
            }));
          })
        ],
        title: Text('Lista Produtos'),
      ),
      body:StreamBuilder<List<ProdutoWithNameCategoria>>(
        stream: Database.instance.produtoDAO.listAllProdutos(),
        builder: (context, snapshot){

          if(!snapshot.hasData) return Container();
          
          List<ProdutoWithNameCategoria> produto = snapshot.data;

          return ListView.builder(
            itemCount: produto.length,
            itemBuilder: (BuildContext context, int index){
            return Card(
              child: ListTile(
                title:Text(produto[index].produto1.title),
                subtitle: Text('${produto[index].nameCategoria1.name}'),
                ));
          });
        },),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add_box),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
            return AddProductWidget();
          }));
      },),
    );
  }
}