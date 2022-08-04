# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WaitForSmsConditions do
  @moduledoc """
  Conditions to apply to emails that you are waiting for
  """

  @derive [Poison.Encoder]
  defstruct [
    :"phoneNumberId",
    :"limit",
    :"count",
    :"delayTimeout",
    :"timeout",
    :"unreadOnly",
    :"countType",
    :"matches",
    :"sortDirection",
    :"since",
    :"before"
  ]

  @type t :: %__MODULE__{
    :"phoneNumberId" => String.t,
    :"limit" => integer() | nil,
    :"count" => integer(),
    :"delayTimeout" => integer() | nil,
    :"timeout" => integer(),
    :"unreadOnly" => boolean() | nil,
    :"countType" => String.t | nil,
    :"matches" => [SmsMatchOption] | nil,
    :"sortDirection" => String.t | nil,
    :"since" => DateTime.t | nil,
    :"before" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WaitForSmsConditions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"matches", :list, MailSlurpAPI.Model.SmsMatchOption, options)
  end
end
