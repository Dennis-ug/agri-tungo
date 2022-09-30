// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'cart_hive.dart';

// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************

// class ProductHiveAdapter extends TypeAdapter<ProductHive> {
//   @override
//   final int typeId = 0;

//   @override
//   ProductHive read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return ProductHive(
//       ammount: fields[6] as double,
//       des: fields[3] as String,
//       disc: fields[4] as double,
//       img: fields[2] as String,
//       name: fields[0] as String,
//       qty: fields[8] as int,
//       ratng: fields[5] as double,
//       sec: fields[7] as Section,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, ProductHive obj) {
//     writer
//       ..writeByte(8)
//       ..writeByte(0)
//       ..write(obj.name)
//       ..writeByte(2)
//       ..write(obj.img)
//       ..writeByte(3)
//       ..write(obj.des)
//       ..writeByte(4)
//       ..write(obj.disc)
//       ..writeByte(5)
//       ..write(obj.ratng)
//       ..writeByte(6)
//       ..write(obj.ammount)
//       ..writeByte(7)
//       ..write(obj.sec)
//       ..writeByte(8)
//       ..write(obj.qty);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is ProductHiveAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
