// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: btc_fork.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Transaction_Utxo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var txHash: String = String()

  var vout: Int32 = 0

  var amount: Int64 = 0

  var address: String = String()

  var scriptPubKey: String = String()

  var derivedPath: String = String()

  var sequence: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Transaction_BtcForkTxInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var to: String = String()

  var amount: Int64 = 0

  var unspents: [Transaction_Utxo] = []

  var memo: String = String()

  var fee: Int64 = 0

  var changeIdx: UInt32 = 0

  var changeAddress: String = String()

  var network: String = String()

  var segWit: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Transaction_BtcForkSignedTxOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var signature: String = String()

  var txHash: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "transaction"

extension Transaction_Utxo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Utxo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "txHash"),
    2: .same(proto: "vout"),
    3: .same(proto: "amount"),
    4: .same(proto: "address"),
    5: .same(proto: "scriptPubKey"),
    6: .same(proto: "derivedPath"),
    7: .same(proto: "sequence"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.txHash)
      case 2: try decoder.decodeSingularInt32Field(value: &self.vout)
      case 3: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 4: try decoder.decodeSingularStringField(value: &self.address)
      case 5: try decoder.decodeSingularStringField(value: &self.scriptPubKey)
      case 6: try decoder.decodeSingularStringField(value: &self.derivedPath)
      case 7: try decoder.decodeSingularInt64Field(value: &self.sequence)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.txHash.isEmpty {
      try visitor.visitSingularStringField(value: self.txHash, fieldNumber: 1)
    }
    if self.vout != 0 {
      try visitor.visitSingularInt32Field(value: self.vout, fieldNumber: 2)
    }
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 3)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 4)
    }
    if !self.scriptPubKey.isEmpty {
      try visitor.visitSingularStringField(value: self.scriptPubKey, fieldNumber: 5)
    }
    if !self.derivedPath.isEmpty {
      try visitor.visitSingularStringField(value: self.derivedPath, fieldNumber: 6)
    }
    if self.sequence != 0 {
      try visitor.visitSingularInt64Field(value: self.sequence, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Transaction_Utxo, rhs: Transaction_Utxo) -> Bool {
    if lhs.txHash != rhs.txHash {return false}
    if lhs.vout != rhs.vout {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.address != rhs.address {return false}
    if lhs.scriptPubKey != rhs.scriptPubKey {return false}
    if lhs.derivedPath != rhs.derivedPath {return false}
    if lhs.sequence != rhs.sequence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Transaction_BtcForkTxInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BtcForkTxInput"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "to"),
    2: .same(proto: "amount"),
    3: .same(proto: "unspents"),
    4: .same(proto: "memo"),
    5: .same(proto: "fee"),
    6: .same(proto: "changeIdx"),
    7: .same(proto: "changeAddress"),
    8: .same(proto: "network"),
    9: .same(proto: "segWit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.to)
      case 2: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.unspents)
      case 4: try decoder.decodeSingularStringField(value: &self.memo)
      case 5: try decoder.decodeSingularInt64Field(value: &self.fee)
      case 6: try decoder.decodeSingularUInt32Field(value: &self.changeIdx)
      case 7: try decoder.decodeSingularStringField(value: &self.changeAddress)
      case 8: try decoder.decodeSingularStringField(value: &self.network)
      case 9: try decoder.decodeSingularStringField(value: &self.segWit)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 1)
    }
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 2)
    }
    if !self.unspents.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.unspents, fieldNumber: 3)
    }
    if !self.memo.isEmpty {
      try visitor.visitSingularStringField(value: self.memo, fieldNumber: 4)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 5)
    }
    if self.changeIdx != 0 {
      try visitor.visitSingularUInt32Field(value: self.changeIdx, fieldNumber: 6)
    }
    if !self.changeAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.changeAddress, fieldNumber: 7)
    }
    if !self.network.isEmpty {
      try visitor.visitSingularStringField(value: self.network, fieldNumber: 8)
    }
    if !self.segWit.isEmpty {
      try visitor.visitSingularStringField(value: self.segWit, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Transaction_BtcForkTxInput, rhs: Transaction_BtcForkTxInput) -> Bool {
    if lhs.to != rhs.to {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unspents != rhs.unspents {return false}
    if lhs.memo != rhs.memo {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.changeIdx != rhs.changeIdx {return false}
    if lhs.changeAddress != rhs.changeAddress {return false}
    if lhs.network != rhs.network {return false}
    if lhs.segWit != rhs.segWit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Transaction_BtcForkSignedTxOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BtcForkSignedTxOutput"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
    2: .same(proto: "txHash"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.signature)
      case 2: try decoder.decodeSingularStringField(value: &self.txHash)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularStringField(value: self.signature, fieldNumber: 1)
    }
    if !self.txHash.isEmpty {
      try visitor.visitSingularStringField(value: self.txHash, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Transaction_BtcForkSignedTxOutput, rhs: Transaction_BtcForkSignedTxOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.txHash != rhs.txHash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}