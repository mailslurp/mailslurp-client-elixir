# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ValidateEmailAddressListResult do
  @moduledoc """
  Result of validating a list of email addresses
  """

  @derive [Poison.Encoder]
  defstruct [
    :"validEmailAddresses",
    :"invalidEmailAddresses",
    :"resultMapEmailAddressIsValid"
  ]

  @type t :: %__MODULE__{
    :"validEmailAddresses" => [String.t],
    :"invalidEmailAddresses" => [String.t],
    :"resultMapEmailAddressIsValid" => %{optional(String.t) => boolean()}
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ValidateEmailAddressListResult do
  def decode(value, _options) do
    value
  end
end

