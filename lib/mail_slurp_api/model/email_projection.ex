# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.EmailProjection do
  @moduledoc """
  A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the &#x60;getEmail&#x60; method with the email projection&#39;s ID. See &#x60;EmailDto&#x60; for documentation on projection properties.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"from",
    :"subject",
    :"attachments",
    :"inboxId",
    :"to",
    :"bcc",
    :"cc",
    :"createdAt",
    :"read",
    :"bodyMD5Hash",
    :"bodyExcerpt",
    :"teamAccess"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"from" => String.t | nil,
    :"subject" => String.t | nil,
    :"attachments" => [String.t] | nil,
    :"inboxId" => String.t,
    :"to" => [String.t],
    :"bcc" => [String.t] | nil,
    :"cc" => [String.t] | nil,
    :"createdAt" => DateTime.t,
    :"read" => boolean() | nil,
    :"bodyMD5Hash" => String.t | nil,
    :"bodyExcerpt" => String.t | nil,
    :"teamAccess" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.EmailProjection do
  def decode(value, _options) do
    value
  end
end

