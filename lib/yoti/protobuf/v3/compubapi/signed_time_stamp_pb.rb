# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: signed_time_stamp.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "compubapi_v3.SignedTimestamp" do
    optional :version, :int32, 1
    optional :timestamp, :uint64, 2
    optional :message_digest, :bytes, 3
    optional :chain_digest, :bytes, 4
    optional :chain_digest_skip1, :bytes, 5
    optional :chain_digest_skip2, :bytes, 6
  end
end

module CompubapiV3
  SignedTimestamp = Google::Protobuf::DescriptorPool.generated_pool.lookup("compubapi_v3.SignedTimestamp").msgclass
end
