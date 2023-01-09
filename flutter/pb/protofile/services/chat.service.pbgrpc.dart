///
//  Generated code. Do not modify.
//  source: protofile/services/chat.service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../messages/request.pb.dart' as $0;
export 'chat.service.pb.dart';

class ChatClient extends $grpc.Client {
  static final _$send = $grpc.ClientMethod<$0.Request, $0.Reply>(
      '/ding4.Chat/Send',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));
  static final _$broadcast = $grpc.ClientMethod<$0.Request, $0.Reply>(
      '/ding4.Chat/Broadcast',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Reply.fromBuffer(value));

  ChatClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Reply> send($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }

  $grpc.ResponseFuture<$0.Reply> broadcast($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$broadcast, request, options: options);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'ding4.Chat';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Reply>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Reply>(
        'Broadcast',
        broadcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Reply value) => value.writeToBuffer()));
  }

  $async.Future<$0.Reply> send_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return send(call, await request);
  }

  $async.Future<$0.Reply> broadcast_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return broadcast(call, await request);
  }

  $async.Future<$0.Reply> send($grpc.ServiceCall call, $0.Request request);
  $async.Future<$0.Reply> broadcast($grpc.ServiceCall call, $0.Request request);
}
