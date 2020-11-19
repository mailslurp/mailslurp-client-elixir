# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.VerifyEmailAddressOptions do
  @moduledoc """
  Options for verifying that an email address exists at a remote mail server.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"mailServerDomain",
    :"emailAddress",
    :"senderEmailAddress",
    :"port"
  ]

  @type t :: %__MODULE__{
    :"mailServerDomain" => String.t | nil,
    :"emailAddress" => String.t,
    :"senderEmailAddress" => String.t | nil,
    :"port" => integer() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.VerifyEmailAddressOptions do
  def decode(value, _options) do
    value
  end
end
