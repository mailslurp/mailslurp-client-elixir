# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.EmailAnalysis do
  @moduledoc """
  Analysis result for email. Each verdict property is a string PASS|FAIL|GRAY or dynamic error message
  """

  @derive [Poison.Encoder]
  defstruct [
    :"dkimVerdict",
    :"dmarcVerdict",
    :"spamVerdict",
    :"spfVerdict",
    :"virusVerdict"
  ]

  @type t :: %__MODULE__{
    :"dkimVerdict" => String.t | nil,
    :"dmarcVerdict" => String.t | nil,
    :"spamVerdict" => String.t | nil,
    :"spfVerdict" => String.t | nil,
    :"virusVerdict" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.EmailAnalysis do
  def decode(value, _options) do
    value
  end
end

