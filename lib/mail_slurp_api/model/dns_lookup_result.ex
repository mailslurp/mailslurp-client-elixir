# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.DnsLookupResult do
  @moduledoc """
  DNS lookup result. Includes record type, time to live, raw response, and name value for the name server response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"data",
    :"recordType",
    :"ttl",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"data" => String.t,
    :"recordType" => String.t,
    :"ttl" => integer(),
    :"value" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.DnsLookupResult do
  def decode(value, _options) do
    value
  end
end
