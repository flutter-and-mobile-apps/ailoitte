// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DrinkHiveModalAdapter extends TypeAdapter<DrinkHiveModal> {
  @override
  final int typeId = 0;

  @override
  DrinkHiveModal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DrinkHiveModal(
      idDrink: fields[0] as String,
      strDrink: fields[1] as String,
      strDrinkAlternate: fields[2] as dynamic,
      strTags: fields[3] as dynamic,
      strVideo: fields[4] as dynamic,
      strCategory: fields[5] as String,
      strIba: fields[6] as dynamic,
      strAlcoholic: fields[7] as String,
      strGlass: fields[8] as String,
      strInstructions: fields[9] as String,
      strInstructionsEs: fields[10] as dynamic,
      strInstructionsDe: fields[11] as String,
      strInstructionsFr: fields[12] as dynamic,
      strInstructionsIt: fields[13] as String,
      strInstructionsZhHans: fields[14] as dynamic,
      strInstructionsZhHant: fields[15] as dynamic,
      strDrinkThumb: fields[16] as String,
      strIngredient1: fields[17] as String,
      strIngredient2: fields[18] as String,
      strIngredient3: fields[19] as String,
      strIngredient4: fields[20] as String,
      strIngredient5: fields[21] as String,
      strMeasure1: fields[22] as String,
      strMeasure2: fields[23] as String,
      strMeasure3: fields[24] as String,
      strMeasure4: fields[25] as String,
      strMeasure5: fields[26] as String,
      strCreativeCommonsConfirmed: fields[27] as String,
      dateModified: fields[28] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DrinkHiveModal obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.idDrink)
      ..writeByte(1)
      ..write(obj.strDrink)
      ..writeByte(2)
      ..write(obj.strDrinkAlternate)
      ..writeByte(3)
      ..write(obj.strTags)
      ..writeByte(4)
      ..write(obj.strVideo)
      ..writeByte(5)
      ..write(obj.strCategory)
      ..writeByte(6)
      ..write(obj.strIba)
      ..writeByte(7)
      ..write(obj.strAlcoholic)
      ..writeByte(8)
      ..write(obj.strGlass)
      ..writeByte(9)
      ..write(obj.strInstructions)
      ..writeByte(10)
      ..write(obj.strInstructionsEs)
      ..writeByte(11)
      ..write(obj.strInstructionsDe)
      ..writeByte(12)
      ..write(obj.strInstructionsFr)
      ..writeByte(13)
      ..write(obj.strInstructionsIt)
      ..writeByte(14)
      ..write(obj.strInstructionsZhHans)
      ..writeByte(15)
      ..write(obj.strInstructionsZhHant)
      ..writeByte(16)
      ..write(obj.strDrinkThumb)
      ..writeByte(17)
      ..write(obj.strIngredient1)
      ..writeByte(18)
      ..write(obj.strIngredient2)
      ..writeByte(19)
      ..write(obj.strIngredient3)
      ..writeByte(20)
      ..write(obj.strIngredient4)
      ..writeByte(21)
      ..write(obj.strIngredient5)
      ..writeByte(22)
      ..write(obj.strMeasure1)
      ..writeByte(23)
      ..write(obj.strMeasure2)
      ..writeByte(24)
      ..write(obj.strMeasure3)
      ..writeByte(25)
      ..write(obj.strMeasure4)
      ..writeByte(26)
      ..write(obj.strMeasure5)
      ..writeByte(27)
      ..write(obj.strCreativeCommonsConfirmed)
      ..writeByte(28)
      ..write(obj.dateModified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkHiveModalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
