import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AulasRecord extends FirestoreRecord {
  AulasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "origem" field.
  String? _origem;
  String get origem => _origem ?? '';
  bool hasOrigem() => _origem != null;

  // "assistido" field.
  bool? _assistido;
  bool get assistido => _assistido ?? false;
  bool hasAssistido() => _assistido != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _categoria = snapshotData['categoria'] as String?;
    _video = snapshotData['video'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _origem = snapshotData['origem'] as String?;
    _assistido = snapshotData['assistido'] as bool?;
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aulas');

  static Stream<AulasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AulasRecord.fromSnapshot(s));

  static Future<AulasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AulasRecord.fromSnapshot(s));

  static AulasRecord fromSnapshot(DocumentSnapshot snapshot) => AulasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AulasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AulasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AulasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AulasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAulasRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? categoria,
  String? video,
  String? imagem,
  String? origem,
  bool? assistido,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'categoria': categoria,
      'video': video,
      'imagem': imagem,
      'origem': origem,
      'assistido': assistido,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class AulasRecordDocumentEquality implements Equality<AulasRecord> {
  const AulasRecordDocumentEquality();

  @override
  bool equals(AulasRecord? e1, AulasRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.categoria == e2?.categoria &&
        e1?.video == e2?.video &&
        e1?.imagem == e2?.imagem &&
        e1?.origem == e2?.origem &&
        e1?.assistido == e2?.assistido &&
        e1?.link == e2?.link;
  }

  @override
  int hash(AulasRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.categoria,
        e?.video,
        e?.imagem,
        e?.origem,
        e?.assistido,
        e?.link
      ]);

  @override
  bool isValidKey(Object? o) => o is AulasRecord;
}
