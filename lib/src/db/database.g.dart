// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Produto extends DataClass implements Insertable<Produto> {
  final int id;
  final String title;
  final String description;
  final int qtd;
  final int price;
  final int id_categoria;
  Produto(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.qtd,
      @required this.price,
      @required this.id_categoria});
  factory Produto.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Produto(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      qtd: intType.mapFromDatabaseResponse(data['${effectivePrefix}qtd']),
      price: intType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
      id_categoria: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_categoria']),
    );
  }
  factory Produto.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Produto(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      qtd: serializer.fromJson<int>(json['qtd']),
      price: serializer.fromJson<int>(json['price']),
      id_categoria: serializer.fromJson<int>(json['id_categoria']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'qtd': serializer.toJson<int>(qtd),
      'price': serializer.toJson<int>(price),
      'id_categoria': serializer.toJson<int>(id_categoria),
    };
  }

  @override
  ProdutosCompanion createCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      qtd: qtd == null && nullToAbsent ? const Value.absent() : Value(qtd),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      id_categoria: id_categoria == null && nullToAbsent
          ? const Value.absent()
          : Value(id_categoria),
    );
  }

  Produto copyWith(
          {int id,
          String title,
          String description,
          int qtd,
          int price,
          int id_categoria}) =>
      Produto(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        qtd: qtd ?? this.qtd,
        price: price ?? this.price,
        id_categoria: id_categoria ?? this.id_categoria,
      );
  @override
  String toString() {
    return (StringBuffer('Produto(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('qtd: $qtd, ')
          ..write('price: $price, ')
          ..write('id_categoria: $id_categoria')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              description.hashCode,
              $mrjc(qtd.hashCode,
                  $mrjc(price.hashCode, id_categoria.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Produto &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.qtd == this.qtd &&
          other.price == this.price &&
          other.id_categoria == this.id_categoria);
}

class ProdutosCompanion extends UpdateCompanion<Produto> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<int> qtd;
  final Value<int> price;
  final Value<int> id_categoria;
  const ProdutosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.qtd = const Value.absent(),
    this.price = const Value.absent(),
    this.id_categoria = const Value.absent(),
  });
  ProdutosCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String description,
    @required int qtd,
    @required int price,
    @required int id_categoria,
  })  : title = Value(title),
        description = Value(description),
        qtd = Value(qtd),
        price = Value(price),
        id_categoria = Value(id_categoria);
  ProdutosCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> description,
      Value<int> qtd,
      Value<int> price,
      Value<int> id_categoria}) {
    return ProdutosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      qtd: qtd ?? this.qtd,
      price: price ?? this.price,
      id_categoria: id_categoria ?? this.id_categoria,
    );
  }
}

class $ProdutosTable extends Produtos with TableInfo<$ProdutosTable, Produto> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProdutosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _qtdMeta = const VerificationMeta('qtd');
  GeneratedIntColumn _qtd;
  @override
  GeneratedIntColumn get qtd => _qtd ??= _constructQtd();
  GeneratedIntColumn _constructQtd() {
    return GeneratedIntColumn(
      'qtd',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedIntColumn _price;
  @override
  GeneratedIntColumn get price => _price ??= _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _id_categoriaMeta =
      const VerificationMeta('id_categoria');
  GeneratedIntColumn _id_categoria;
  @override
  GeneratedIntColumn get id_categoria =>
      _id_categoria ??= _constructIdCategoria();
  GeneratedIntColumn _constructIdCategoria() {
    return GeneratedIntColumn(
      'id_categoria',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, qtd, price, id_categoria];
  @override
  $ProdutosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'produtos';
  @override
  final String actualTableName = 'produtos';
  @override
  VerificationContext validateIntegrity(ProdutosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.qtd.present) {
      context.handle(_qtdMeta, qtd.isAcceptableValue(d.qtd.value, _qtdMeta));
    } else if (isInserting) {
      context.missing(_qtdMeta);
    }
    if (d.price.present) {
      context.handle(
          _priceMeta, price.isAcceptableValue(d.price.value, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (d.id_categoria.present) {
      context.handle(
          _id_categoriaMeta,
          id_categoria.isAcceptableValue(
              d.id_categoria.value, _id_categoriaMeta));
    } else if (isInserting) {
      context.missing(_id_categoriaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Produto map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Produto.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ProdutosCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.qtd.present) {
      map['qtd'] = Variable<int, IntType>(d.qtd.value);
    }
    if (d.price.present) {
      map['price'] = Variable<int, IntType>(d.price.value);
    }
    if (d.id_categoria.present) {
      map['id_categoria'] = Variable<int, IntType>(d.id_categoria.value);
    }
    return map;
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(_db, alias);
  }
}

class Categoria extends DataClass implements Insertable<Categoria> {
  final int id;
  final String name;
  Categoria({@required this.id, @required this.name});
  factory Categoria.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Categoria(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  factory Categoria.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Categoria(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  @override
  CategoriasCompanion createCompanion(bool nullToAbsent) {
    return CategoriasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  Categoria copyWith({int id, String name}) => Categoria(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Categoria(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Categoria && other.id == this.id && other.name == this.name);
}

class CategoriasCompanion extends UpdateCompanion<Categoria> {
  final Value<int> id;
  final Value<String> name;
  const CategoriasCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  CategoriasCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
  }) : name = Value(name);
  CategoriasCompanion copyWith({Value<int> id, Value<String> name}) {
    return CategoriasCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

class $CategoriasTable extends Categorias
    with TableInfo<$CategoriasTable, Categoria> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  $CategoriasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categorias';
  @override
  final String actualTableName = 'categorias';
  @override
  VerificationContext validateIntegrity(CategoriasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Categoria map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Categoria.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CategoriasCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    return map;
  }

  @override
  $CategoriasTable createAlias(String alias) {
    return $CategoriasTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ProdutosTable _produtos;
  $ProdutosTable get produtos => _produtos ??= $ProdutosTable(this);
  $CategoriasTable _categorias;
  $CategoriasTable get categorias => _categorias ??= $CategoriasTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [produtos, categorias];
}
