# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.GenerateDmarcRecordOptions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"domain",
    :"version",
    :"policy",
    :"subdomainPolicy",
    :"reportEmailAddress",
    :"forensicEmailAddress",
    :"percentage",
    :"reportFormat",
    :"secondsBetweenReports",
    :"adkim",
    :"aspf",
    :"fo"
  ]

  @type t :: %__MODULE__{
    :"domain" => String.t,
    :"version" => String.t,
    :"policy" => String.t,
    :"subdomainPolicy" => String.t | nil,
    :"reportEmailAddress" => [String.t] | nil,
    :"forensicEmailAddress" => [String.t] | nil,
    :"percentage" => integer() | nil,
    :"reportFormat" => String.t | nil,
    :"secondsBetweenReports" => integer() | nil,
    :"adkim" => String.t | nil,
    :"aspf" => String.t | nil,
    :"fo" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.GenerateDmarcRecordOptions do
  def decode(value, _options) do
    value
  end
end

