import 'package:flutter/material.dart';
import 'package:loja/src/db/database.dart';

class AddProductWidget extends StatefulWidget {
  @override
  _AddProductWidgetState createState() => _AddProductWidgetState();
}

class _AddProductWidgetState extends State<AddProductWidget> {
  Produto produto = Produto();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  int value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Titulo do produto",
                ),
               onSaved: (value){
                produto = produto.copyWith(title: value);
               },
              ),
              Container(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Descrição do produto",
                ),
               onSaved: (value){
                produto = produto.copyWith(description: value);
               },
              ),
              Container(height: 20,),
               TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Valor do produto" ,
                ),
               onSaved: ( price){
                produto = produto.copyWith(price: int.parse(price));
               },
              ),
              Container(height: 20,),
               TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Descrição do produto",
                ),
               onSaved: (value){
                produto = produto.copyWith(qtd: int.parse(value));
               },
              ),
              Container(height: 20,),
              StreamBuilder<List<Categoria>>(
                stream: Database.instance.categoriaDAO.listAll(),
                builder: (context, snapshot) {
                
                  if(!snapshot.hasData) return Container();
                  var list = snapshot.data;
                  return DropdownButtonFormField(
                    hint: Text('Selecione a categoria'),
                    value: value,
                    items: list.map(
                      (c)=> DropdownMenuItem(
                        child: Text(c.name),
                        value: c.id,
                        )).toList(),
                    onSaved: (id){
                        produto = produto.copyWith(id_categoria: id);
                    }, onChanged: (v) {
                      setState(() {
                        value = v;
                      });
                    },
                    );
                }
              ),
              Container(height: 20,),
              RaisedButton(
                onPressed: () async{
                  _formkey.currentState.save();
                  print(produto.toJson());
                 await Database.instance.produtoDAO.addProduto(produto);
                  Navigator.pop(context);
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}