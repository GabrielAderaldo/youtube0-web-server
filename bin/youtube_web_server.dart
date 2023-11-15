import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart' as shelf_static;

void main(List<String> arguments) async {
  final port = int.parse(Platform.environment['PORT'] ?? '3000');
  final app = Router();
  app.get('/app', (Request req) {
    return Response.ok('Hello world');
  });
  await shelf_io.serve(app, 'localhost', port);
}
