# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.EmailVerificationResult do
  @moduledoc """
  Email verification result. Valid means email address exists according to response from mail server running at the domain and port given.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"domainName",
    :"emailAddress",
    :"error",
    :"isValid",
    :"port"
  ]

  @type t :: %__MODULE__{
    :"domainName" => String.t,
    :"emailAddress" => String.t,
    :"error" => String.t | nil,
    :"isValid" => boolean(),
    :"port" => integer()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.EmailVerificationResult do
  def decode(value, _options) do
    value
  end
end

