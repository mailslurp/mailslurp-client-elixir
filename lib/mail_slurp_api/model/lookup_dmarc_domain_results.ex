# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.LookupDmarcDomainResults do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"valid",
    :"query",
    :"records",
    :"errors",
    :"warnings"
  ]

  @type t :: %__MODULE__{
    :"valid" => boolean(),
    :"query" => DnsLookupOptions,
    :"records" => [DnsLookupResult],
    :"errors" => [String.t],
    :"warnings" => [String.t]
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.LookupDmarcDomainResults do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"query", :struct, MailSlurpAPI.Model.DnsLookupOptions, options)
    |> deserialize(:"records", :list, MailSlurpAPI.Model.DnsLookupResult, options)
  end
end

