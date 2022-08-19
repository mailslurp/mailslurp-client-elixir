# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.DescribeMailServerDomainResult do
  @moduledoc """
  Name Server lookup result
  """

  @derive [Poison.Encoder]
  defstruct [
    :"mxRecords",
    :"domain",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"mxRecords" => [NameServerRecord],
    :"domain" => String.t,
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.DescribeMailServerDomainResult do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"mxRecords", :list, MailSlurpAPI.Model.NameServerRecord, options)
  end
end

