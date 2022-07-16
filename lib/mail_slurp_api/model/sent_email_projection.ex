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
    :"inboxId",
    :"bodyMD5Hash",
    :"bcc",
    :"cc",
    :"virtualSend",
    :"attachments",
    :"to",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"from" => String.t | nil,
    :"userId" => String.t,
    :"subject" => String.t | nil,
    :"inboxId" => String.t,
    :"bodyMD5Hash" => String.t | nil,
    :"bcc" => [String.t],
    :"cc" => [String.t],
    :"virtualSend" => boolean(),
    :"attachments" => [String.t],
    :"to" => [String.t],
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SentEmailProjection do
  def decode(value, _options) do
    value
  end
end

