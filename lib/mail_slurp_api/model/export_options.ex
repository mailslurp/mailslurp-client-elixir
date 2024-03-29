# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ExportOptions do
  @moduledoc """
  Options for exporting user data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"outputFormat",
    :"excludePreviouslyExported",
    :"createdEarliestTime",
    :"createdOldestTime",
    :"filter",
    :"listSeparatorToken"
  ]

  @type t :: %__MODULE__{
    :"outputFormat" => String.t,
    :"excludePreviouslyExported" => boolean() | nil,
    :"createdEarliestTime" => DateTime.t | nil,
    :"createdOldestTime" => DateTime.t | nil,
    :"filter" => String.t | nil,
    :"listSeparatorToken" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ExportOptions do
  def decode(value, _options) do
    value
  end
end

