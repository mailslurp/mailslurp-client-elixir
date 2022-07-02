# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.SentEmailProjection do
  @moduledoc """
  Collection of items
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"from",
    :"userId",
    :"subject",
    :"createdAt",
    :"attachments",
    :"inboxId",
    :"to",
    :"bcc",
    :"cc",
    :"bodyMD5Hash",
    :"virtualSend"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"from" => String.t | nil,
    :"userId" => String.t,
    :"subject" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"attachments" => [String.t],
    :"inboxId" => String.t,
    :"to" => [String.t],
    :"bcc" => [String.t],
    :"cc" => [String.t],
    :"bodyMD5Hash" => String.t | nil,
    :"virtualSend" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SentEmailProjection do
  def decode(value, _options) do
    value
  end
end

