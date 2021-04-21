# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.EmailProjection do
  @moduledoc """
  A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the &#x60;getEmail&#x60; method with the email projection&#39;s ID. See &#x60;EmailDto&#x60; for documentation on projection properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"attachments",
    :"bcc",
    :"bodyMD5Hash",
    :"cc",
    :"createdAt",
    :"from",
    :"id",
    :"inboxId",
    :"read",
    :"subject",
    :"teamAccess",
    :"to"
  ]

  @type t :: %__MODULE__{
    :"attachments" => [String.t] | nil,
    :"bcc" => [String.t] | nil,
    :"bodyMD5Hash" => String.t | nil,
    :"cc" => [String.t] | nil,
    :"createdAt" => DateTime.t,
    :"from" => String.t | nil,
    :"id" => String.t,
    :"inboxId" => String.t,
    :"read" => boolean() | nil,
    :"subject" => String.t | nil,
    :"teamAccess" => boolean() | nil,
    :"to" => [String.t]
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.EmailProjection do
  def decode(value, _options) do
    value
  end
end

