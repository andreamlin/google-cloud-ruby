# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vision/v1/text_annotation.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/cloud/vision/v1/geometry_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.vision.v1.TextAnnotation" do
    repeated :pages, :message, 1, "google.cloud.vision.v1.Page"
    optional :text, :string, 2
  end
  add_message "google.cloud.vision.v1.TextAnnotation.DetectedLanguage" do
    optional :language_code, :string, 1
    optional :confidence, :float, 2
  end
  add_message "google.cloud.vision.v1.TextAnnotation.DetectedBreak" do
    optional :type, :enum, 1, "google.cloud.vision.v1.TextAnnotation.DetectedBreak.BreakType"
    optional :is_prefix, :bool, 2
  end
  add_enum "google.cloud.vision.v1.TextAnnotation.DetectedBreak.BreakType" do
    value :UNKNOWN, 0
    value :SPACE, 1
    value :SURE_SPACE, 2
    value :EOL_SURE_SPACE, 3
    value :HYPHEN, 4
    value :LINE_BREAK, 5
  end
  add_message "google.cloud.vision.v1.TextAnnotation.TextProperty" do
    repeated :detected_languages, :message, 1, "google.cloud.vision.v1.TextAnnotation.DetectedLanguage"
    optional :detected_break, :message, 2, "google.cloud.vision.v1.TextAnnotation.DetectedBreak"
  end
  add_message "google.cloud.vision.v1.Page" do
    optional :property, :message, 1, "google.cloud.vision.v1.TextAnnotation.TextProperty"
    optional :width, :int32, 2
    optional :height, :int32, 3
    repeated :blocks, :message, 4, "google.cloud.vision.v1.Block"
    optional :confidence, :float, 5
  end
  add_message "google.cloud.vision.v1.Block" do
    optional :property, :message, 1, "google.cloud.vision.v1.TextAnnotation.TextProperty"
    optional :bounding_box, :message, 2, "google.cloud.vision.v1.BoundingPoly"
    repeated :paragraphs, :message, 3, "google.cloud.vision.v1.Paragraph"
    optional :block_type, :enum, 4, "google.cloud.vision.v1.Block.BlockType"
    optional :confidence, :float, 5
  end
  add_enum "google.cloud.vision.v1.Block.BlockType" do
    value :UNKNOWN, 0
    value :TEXT, 1
    value :TABLE, 2
    value :PICTURE, 3
    value :RULER, 4
    value :BARCODE, 5
  end
  add_message "google.cloud.vision.v1.Paragraph" do
    optional :property, :message, 1, "google.cloud.vision.v1.TextAnnotation.TextProperty"
    optional :bounding_box, :message, 2, "google.cloud.vision.v1.BoundingPoly"
    repeated :words, :message, 3, "google.cloud.vision.v1.Word"
    optional :confidence, :float, 4
  end
  add_message "google.cloud.vision.v1.Word" do
    optional :property, :message, 1, "google.cloud.vision.v1.TextAnnotation.TextProperty"
    optional :bounding_box, :message, 2, "google.cloud.vision.v1.BoundingPoly"
    repeated :symbols, :message, 3, "google.cloud.vision.v1.Symbol"
    optional :confidence, :float, 4
  end
  add_message "google.cloud.vision.v1.Symbol" do
    optional :property, :message, 1, "google.cloud.vision.v1.TextAnnotation.TextProperty"
    optional :bounding_box, :message, 2, "google.cloud.vision.v1.BoundingPoly"
    optional :text, :string, 3
    optional :confidence, :float, 4
  end
end

module Google
  module Cloud
    module Vision
      module V1
        TextAnnotation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.TextAnnotation").msgclass
        TextAnnotation::DetectedLanguage = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.TextAnnotation.DetectedLanguage").msgclass
        TextAnnotation::DetectedBreak = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.TextAnnotation.DetectedBreak").msgclass
        TextAnnotation::DetectedBreak::BreakType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.TextAnnotation.DetectedBreak.BreakType").enummodule
        TextAnnotation::TextProperty = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.TextAnnotation.TextProperty").msgclass
        Page = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.Page").msgclass
        Block = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.Block").msgclass
        Block::BlockType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.Block.BlockType").enummodule
        Paragraph = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.Paragraph").msgclass
        Word = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.Word").msgclass
        Symbol = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.Symbol").msgclass
      end
    end
  end
end
