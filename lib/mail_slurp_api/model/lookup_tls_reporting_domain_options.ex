# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.LookupTlsReportingDomainOptions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"host"
  ]

  @type t :: %__MODULE__{
    :"host" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.LookupTlsReportingDomainOptions do
  def decode(value, _options) do
    value
  end
end

