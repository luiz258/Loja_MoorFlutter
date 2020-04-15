import 'package:flutter/material.dart';
import 'package:loja/src/db/database.dart';

class CategoriaWidget extends StatefulWidget {
  @override
  _CategoriaWidgetState createState() => _CategoriaWidgetState();
}

class _CategoriaWidgetState extends State<CategoriaWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Categorias'),
        actions: <Widget>[
          IconButton( icon: Icon(Icons.add), onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
              return AddCategoria();
            }));
          })
        ],
        ),
      body: StreamBuilder<List<Categoria>>(
        stream: Database.instance.categoriaDAO.listAll(),
        builder: (context, snapshot){

          if(!snapshot.hasData) return Container();
          
          List<Categoria> categorias = snapshot.data;

          return ListView.builder(
            itemCount: categorias.length,
            itemBuilder: (BuildContext context, int index){
            return Card(child: ListTile(title:Text(categorias[index].name),));
          });
        },),
    );
  }
}

class AddCategoria extends StatefulWidget {
  @override
  _AddCategoriaState createState() => _AddCategoriaState();
}

class _AddCategoriaState extends State<AddCategoria> {
  String categoriaName='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add categoria'),),
      body: Column(
        children: <Widget>[
          TextField(onChanged: (text){
            categoriaName = text;
          },),

          RaisedButton(onPressed: (){
            Database.instance.categoriaDAO.addCategoria(Categoria(name: categoriaName));
              Navigator.pop(context);
          },child: Text('adcionar'),)
        ],
      ),
    );
  }
}