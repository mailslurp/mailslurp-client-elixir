# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.GenerateTlsReportingRecordOptions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"reportingAddresses",
    :"reportingUrl",
    :"host",
    :"version",
    :"ttl"
  ]

  @type t :: %__MODULE__{
    :"reportingAddresses" => [String.t],
    :"reportingUrl" => String.t | nil,
    :"host" => String.t,
    :"version" => String.t,
    :"ttl" => integer()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.GenerateTlsReportingRecordOptions do
  def decode(value, _options) do
    value
  end
end

