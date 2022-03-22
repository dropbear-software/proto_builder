///
//  Generated code. Do not modify.
//  source: example/bookstore_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../google/protobuf/empty.pb.dart' as $0;
import 'bookstore_service.pb.dart' as $1;
export 'bookstore_service.pb.dart';

class BookstoreClient extends $grpc.Client {
  static final _$listShelves =
      $grpc.ClientMethod<$0.Empty, $1.ListShelvesResponse>(
          '/example.bookstore.Bookstore/ListShelves',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListShelvesResponse.fromBuffer(value));
  static final _$createShelf =
      $grpc.ClientMethod<$1.CreateShelfRequest, $1.Shelf>(
          '/example.bookstore.Bookstore/CreateShelf',
          ($1.CreateShelfRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Shelf.fromBuffer(value));
  static final _$getShelf = $grpc.ClientMethod<$1.GetShelfRequest, $1.Shelf>(
      '/example.bookstore.Bookstore/GetShelf',
      ($1.GetShelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Shelf.fromBuffer(value));
  static final _$deleteShelf =
      $grpc.ClientMethod<$1.DeleteShelfRequest, $0.Empty>(
          '/example.bookstore.Bookstore/DeleteShelf',
          ($1.DeleteShelfRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$listBooks =
      $grpc.ClientMethod<$1.ListBooksRequest, $1.ListBooksResponse>(
          '/example.bookstore.Bookstore/ListBooks',
          ($1.ListBooksRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListBooksResponse.fromBuffer(value));
  static final _$createBook = $grpc.ClientMethod<$1.CreateBookRequest, $1.Book>(
      '/example.bookstore.Bookstore/CreateBook',
      ($1.CreateBookRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Book.fromBuffer(value));
  static final _$getBook = $grpc.ClientMethod<$1.GetBookRequest, $1.Book>(
      '/example.bookstore.Bookstore/GetBook',
      ($1.GetBookRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Book.fromBuffer(value));
  static final _$deleteBook =
      $grpc.ClientMethod<$1.DeleteBookRequest, $0.Empty>(
          '/example.bookstore.Bookstore/DeleteBook',
          ($1.DeleteBookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  BookstoreClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.ListShelvesResponse> listShelves($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listShelves, request, options: options);
  }

  $grpc.ResponseFuture<$1.Shelf> createShelf($1.CreateShelfRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createShelf, request, options: options);
  }

  $grpc.ResponseFuture<$1.Shelf> getShelf($1.GetShelfRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShelf, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteShelf($1.DeleteShelfRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteShelf, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListBooksResponse> listBooks(
      $1.ListBooksRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBooks, request, options: options);
  }

  $grpc.ResponseFuture<$1.Book> createBook($1.CreateBookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBook, request, options: options);
  }

  $grpc.ResponseFuture<$1.Book> getBook($1.GetBookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBook, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteBook($1.DeleteBookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBook, request, options: options);
  }
}

abstract class BookstoreServiceBase extends $grpc.Service {
  $core.String get $name => 'example.bookstore.Bookstore';

  BookstoreServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ListShelvesResponse>(
        'ListShelves',
        listShelves_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ListShelvesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateShelfRequest, $1.Shelf>(
        'CreateShelf',
        createShelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateShelfRequest.fromBuffer(value),
        ($1.Shelf value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetShelfRequest, $1.Shelf>(
        'GetShelf',
        getShelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetShelfRequest.fromBuffer(value),
        ($1.Shelf value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteShelfRequest, $0.Empty>(
        'DeleteShelf',
        deleteShelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteShelfRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListBooksRequest, $1.ListBooksResponse>(
        'ListBooks',
        listBooks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListBooksRequest.fromBuffer(value),
        ($1.ListBooksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateBookRequest, $1.Book>(
        'CreateBook',
        createBook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateBookRequest.fromBuffer(value),
        ($1.Book value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetBookRequest, $1.Book>(
        'GetBook',
        getBook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetBookRequest.fromBuffer(value),
        ($1.Book value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteBookRequest, $0.Empty>(
        'DeleteBook',
        deleteBook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteBookRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListShelvesResponse> listShelves_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return listShelves(call, await request);
  }

  $async.Future<$1.Shelf> createShelf_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateShelfRequest> request) async {
    return createShelf(call, await request);
  }

  $async.Future<$1.Shelf> getShelf_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetShelfRequest> request) async {
    return getShelf(call, await request);
  }

  $async.Future<$0.Empty> deleteShelf_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteShelfRequest> request) async {
    return deleteShelf(call, await request);
  }

  $async.Future<$1.ListBooksResponse> listBooks_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListBooksRequest> request) async {
    return listBooks(call, await request);
  }

  $async.Future<$1.Book> createBook_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateBookRequest> request) async {
    return createBook(call, await request);
  }

  $async.Future<$1.Book> getBook_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetBookRequest> request) async {
    return getBook(call, await request);
  }

  $async.Future<$0.Empty> deleteBook_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteBookRequest> request) async {
    return deleteBook(call, await request);
  }

  $async.Future<$1.ListShelvesResponse> listShelves(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Shelf> createShelf(
      $grpc.ServiceCall call, $1.CreateShelfRequest request);
  $async.Future<$1.Shelf> getShelf(
      $grpc.ServiceCall call, $1.GetShelfRequest request);
  $async.Future<$0.Empty> deleteShelf(
      $grpc.ServiceCall call, $1.DeleteShelfRequest request);
  $async.Future<$1.ListBooksResponse> listBooks(
      $grpc.ServiceCall call, $1.ListBooksRequest request);
  $async.Future<$1.Book> createBook(
      $grpc.ServiceCall call, $1.CreateBookRequest request);
  $async.Future<$1.Book> getBook(
      $grpc.ServiceCall call, $1.GetBookRequest request);
  $async.Future<$0.Empty> deleteBook(
      $grpc.ServiceCall call, $1.DeleteBookRequest request);
}
