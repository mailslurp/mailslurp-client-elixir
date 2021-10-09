# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ExpirationDefaults do
  @moduledoc """
  Expiration defaults for your account
  """

  @derive [Poison.Encoder]
  defstruct [
    :"canPermanentInbox",
    :"defaultExpirationMillis",
    :"defaultExpiresAt",
    :"maxExpirationMillis",
    :"nextInboxAllowsPermanent"
  ]

  @type t :: %__MODULE__{
    :"canPermanentInbox" => boolean(),
    :"defaultExpirationMillis" => integer() | nil,
    :"defaultExpiresAt" => DateTime.t | nil,
    :"maxExpirationMillis" => integer() | nil,
    :"nextInboxAllowsPermanent" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ExpirationDefaults do
  def decode(value, _options) do
    value
  end
end

