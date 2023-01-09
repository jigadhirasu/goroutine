

del "flutter/pb" /S /Q

protoc -I=./ ^
 --dart_out=grpc:flutter/pb ^
 protofile/messages/*.proto  ^
 protofile/services/*.proto
