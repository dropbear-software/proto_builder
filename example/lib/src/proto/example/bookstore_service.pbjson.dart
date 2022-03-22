///
//  Generated code. Do not modify.
//  source: protos/example/bookstore_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use shelfDescriptor instead')
const Shelf$json = const {
  '1': 'Shelf',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'theme', '3': 2, '4': 1, '5': 9, '10': 'theme'},
  ],
};

/// Descriptor for `Shelf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shelfDescriptor = $convert.base64Decode('CgVTaGVsZhIOCgJpZBgBIAEoA1ICaWQSFAoFdGhlbWUYAiABKAlSBXRoZW1l');
@$core.Deprecated('Use bookDescriptor instead')
const Book$json = const {
  '1': 'Book',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'author', '3': 2, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `Book`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookDescriptor = $convert.base64Decode('CgRCb29rEg4KAmlkGAEgASgDUgJpZBIWCgZhdXRob3IYAiABKAlSBmF1dGhvchIUCgV0aXRsZRgDIAEoCVIFdGl0bGU=');
@$core.Deprecated('Use listShelvesResponseDescriptor instead')
const ListShelvesResponse$json = const {
  '1': 'ListShelvesResponse',
  '2': const [
    const {'1': 'shelves', '3': 1, '4': 3, '5': 11, '6': '.endpoints.examples.bookstore.Shelf', '10': 'shelves'},
  ],
};

/// Descriptor for `ListShelvesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listShelvesResponseDescriptor = $convert.base64Decode('ChNMaXN0U2hlbHZlc1Jlc3BvbnNlEj0KB3NoZWx2ZXMYASADKAsyIy5lbmRwb2ludHMuZXhhbXBsZXMuYm9va3N0b3JlLlNoZWxmUgdzaGVsdmVz');
@$core.Deprecated('Use createShelfRequestDescriptor instead')
const CreateShelfRequest$json = const {
  '1': 'CreateShelfRequest',
  '2': const [
    const {'1': 'shelf', '3': 1, '4': 1, '5': 11, '6': '.endpoints.examples.bookstore.Shelf', '10': 'shelf'},
  ],
};

/// Descriptor for `CreateShelfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createShelfRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVTaGVsZlJlcXVlc3QSOQoFc2hlbGYYASABKAsyIy5lbmRwb2ludHMuZXhhbXBsZXMuYm9va3N0b3JlLlNoZWxmUgVzaGVsZg==');
@$core.Deprecated('Use getShelfRequestDescriptor instead')
const GetShelfRequest$json = const {
  '1': 'GetShelfRequest',
  '2': const [
    const {'1': 'shelf', '3': 1, '4': 1, '5': 3, '10': 'shelf'},
  ],
};

/// Descriptor for `GetShelfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getShelfRequestDescriptor = $convert.base64Decode('Cg9HZXRTaGVsZlJlcXVlc3QSFAoFc2hlbGYYASABKANSBXNoZWxm');
@$core.Deprecated('Use deleteShelfRequestDescriptor instead')
const DeleteShelfRequest$json = const {
  '1': 'DeleteShelfRequest',
  '2': const [
    const {'1': 'shelf', '3': 1, '4': 1, '5': 3, '10': 'shelf'},
  ],
};

/// Descriptor for `DeleteShelfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteShelfRequestDescriptor = $convert.base64Decode('ChJEZWxldGVTaGVsZlJlcXVlc3QSFAoFc2hlbGYYASABKANSBXNoZWxm');
@$core.Deprecated('Use listBooksRequestDescriptor instead')
const ListBooksRequest$json = const {
  '1': 'ListBooksRequest',
  '2': const [
    const {'1': 'shelf', '3': 1, '4': 1, '5': 3, '10': 'shelf'},
  ],
};

/// Descriptor for `ListBooksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBooksRequestDescriptor = $convert.base64Decode('ChBMaXN0Qm9va3NSZXF1ZXN0EhQKBXNoZWxmGAEgASgDUgVzaGVsZg==');
@$core.Deprecated('Use listBooksResponseDescriptor instead')
const ListBooksResponse$json = const {
  '1': 'ListBooksResponse',
  '2': const [
    const {'1': 'books', '3': 1, '4': 3, '5': 11, '6': '.endpoints.examples.bookstore.Book', '10': 'books'},
  ],
};

/// Descriptor for `ListBooksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBooksResponseDescriptor = $convert.base64Decode('ChFMaXN0Qm9va3NSZXNwb25zZRI4CgVib29rcxgBIAMoCzIiLmVuZHBvaW50cy5leGFtcGxlcy5ib29rc3RvcmUuQm9va1IFYm9va3M=');
@$core.Deprecated('Use createBookRequestDescriptor instead')
const CreateBookRequest$json = const {
  '1': 'CreateBookRequest',
  '2': const [
    const {'1': 'shelf', '3': 1, '4': 1, '5': 3, '10': 'shelf'},
    const {'1': 'book', '3': 2, '4': 1, '5': 11, '6': '.endpoints.examples.bookstore.Book', '10': 'book'},
  ],
};

/// Descriptor for `CreateBookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBookRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVCb29rUmVxdWVzdBIUCgVzaGVsZhgBIAEoA1IFc2hlbGYSNgoEYm9vaxgCIAEoCzIiLmVuZHBvaW50cy5leGFtcGxlcy5ib29rc3RvcmUuQm9va1IEYm9vaw==');
@$core.Deprecated('Use getBookRequestDescriptor instead')
const GetBookRequest$json = const {
  '1': 'GetBookRequest',
  '2': const [
    const {'1': 'shelf', '3': 1, '4': 1, '5': 3, '10': 'shelf'},
    const {'1': 'book', '3': 2, '4': 1, '5': 3, '10': 'book'},
  ],
};

/// Descriptor for `GetBookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBookRequestDescriptor = $convert.base64Decode('Cg5HZXRCb29rUmVxdWVzdBIUCgVzaGVsZhgBIAEoA1IFc2hlbGYSEgoEYm9vaxgCIAEoA1IEYm9vaw==');
@$core.Deprecated('Use deleteBookRequestDescriptor instead')
const DeleteBookRequest$json = const {
  '1': 'DeleteBookRequest',
  '2': const [
    const {'1': 'shelf', '3': 1, '4': 1, '5': 3, '10': 'shelf'},
    const {'1': 'book', '3': 2, '4': 1, '5': 3, '10': 'book'},
  ],
};

/// Descriptor for `DeleteBookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBookRequestDescriptor = $convert.base64Decode('ChFEZWxldGVCb29rUmVxdWVzdBIUCgVzaGVsZhgBIAEoA1IFc2hlbGYSEgoEYm9vaxgCIAEoA1IEYm9vaw==');
