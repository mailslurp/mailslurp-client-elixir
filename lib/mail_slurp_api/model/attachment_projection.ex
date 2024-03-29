# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.AttachmentProjection do
  @moduledoc """
  Email attachment data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"contentLength",
    :"userId",
    :"attachmentId",
    :"createdAt",
    :"updatedAt",
    :"contentType"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"contentLength" => integer() | nil,
    :"userId" => String.t,
    :"attachmentId" => String.t,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t,
    :"contentType" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.AttachmentProjection do
  def decode(value, _options) do
    value
  end
end

