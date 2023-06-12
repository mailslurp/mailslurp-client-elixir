# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.AttachmentEntity do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"attachmentId",
    :"bucket",
    :"userId",
    :"contentType",
    :"contentLength",
    :"name",
    :"createdAt",
    :"updatedAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"attachmentId" => String.t,
    :"bucket" => String.t | nil,
    :"userId" => String.t,
    :"contentType" => String.t | nil,
    :"contentLength" => integer() | nil,
    :"name" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.AttachmentEntity do
  def decode(value, _options) do
    value
  end
end

