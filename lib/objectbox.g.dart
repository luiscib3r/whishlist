// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'app/data/models/task.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8122000722164806290),
      name: 'Task',
      lastPropertyId: const IdUid(8, 5700434660808068298),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1627911302895342018),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4017632989483776947),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7547513211611755838),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2123623945038378191),
            name: 'dueDate',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6319099146630856425),
            name: 'resolver',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5049207589183329416),
            name: 'author',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 9194866903916702583),
            name: 'state',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 5700434660808068298),
            name: 'type',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 8122000722164806290),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Task: EntityDefinition<Task>(
        model: _entities[0],
        toOneRelations: (Task object) => [],
        toManyRelations: (Task object) => {},
        getId: (Task object) => object.id,
        setId: (Task object, int id) {
          object.id = id;
        },
        objectToFB: (Task object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          final descriptionOffset = fbb.writeString(object.description);
          final resolverOffset = fbb.writeString(object.resolver);
          final authorOffset = fbb.writeString(object.author);
          fbb.startTable(9);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, titleOffset);
          fbb.addOffset(2, descriptionOffset);
          fbb.addInt64(3, object.dueDate.millisecondsSinceEpoch);
          fbb.addOffset(4, resolverOffset);
          fbb.addOffset(5, authorOffset);
          fbb.addInt64(6, object.state);
          fbb.addInt64(7, object.type);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Task(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              title:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              description:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              type: const fb.Int64Reader().vTableGet(buffer, rootOffset, 18, 0),
              dueDate: DateTime.fromMillisecondsSinceEpoch(
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0)),
              resolver:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 12, ''),
              author:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 14, ''),
              state:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Task] entity fields to define ObjectBox queries.
class Task_ {
  /// see [Task.id]
  static final id = QueryIntegerProperty<Task>(_entities[0].properties[0]);

  /// see [Task.title]
  static final title = QueryStringProperty<Task>(_entities[0].properties[1]);

  /// see [Task.description]
  static final description =
      QueryStringProperty<Task>(_entities[0].properties[2]);

  /// see [Task.dueDate]
  static final dueDate = QueryIntegerProperty<Task>(_entities[0].properties[3]);

  /// see [Task.resolver]
  static final resolver = QueryStringProperty<Task>(_entities[0].properties[4]);

  /// see [Task.author]
  static final author = QueryStringProperty<Task>(_entities[0].properties[5]);

  /// see [Task.state]
  static final state = QueryIntegerProperty<Task>(_entities[0].properties[6]);

  /// see [Task.type]
  static final type = QueryIntegerProperty<Task>(_entities[0].properties[7]);
}
