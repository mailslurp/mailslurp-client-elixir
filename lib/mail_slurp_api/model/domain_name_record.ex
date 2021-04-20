# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.DomainNameRecord do
  @moduledoc """
  DNS Record required for verification of a domain
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"recordEntries",
    :"recordType",
    :"ttl"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"recordEntries" => [String.t],
    :"recordType" => String.t,
    :"ttl" => integer()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.DomainNameRecord do
  def decode(value, _options) do
    value
  end
end

