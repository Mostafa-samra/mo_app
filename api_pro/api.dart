class Api {
  Api({
    required this.collection,
  });
  late final Collection collection;

  Api.fromJson(Map<String, dynamic> json) {
    collection = Collection.fromJson(json['collection']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['collection'] = collection.toJson();
    return _data;
  }
}

class Collection {
  Collection({
    required this.info,
    required this.item,
  });
  late final Info info;
  late final List<Item> item;

  Collection.fromJson(Map<String, dynamic> json) {
    info = Info.fromJson(json['info']);
    item = List.from(json['item']).map((e) => Item.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['info'] = info.toJson();
    _data['item'] = item.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Info {
  Info({
    required this._postmanId,
    required this.name,
    required this.schema,
    required this.updatedAt,
  });
  late final String _postmanId;
  late final String name;
  late final String schema;
  late final String updatedAt;

  Info.fromJson(Map<String, dynamic> json) {
    _postmanId = json['_postman_id'];
    name = json['name'];
    schema = json['schema'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_postman_id'] = _postmanId;
    _data['name'] = name;
    _data['schema'] = schema;
    _data['updatedAt'] = updatedAt;
    return _data;
  }
}

class Item {
  Item({
    required this.name,
    required this.item,
    required this.id,
  });
  late final String name;
  late final List<Item> item;
  late final String id;

  Item.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    item = List.from(json['item']).map((e) => Item.fromJson(e)).toList();
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['item'] = item.map((e) => e.toJson()).toList();
    _data['id'] = id;
    return _data;
  }
}
