# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ReplyToAliasEmailOptions do
  @moduledoc """
  Options for replying to an alias email using the alias inbox
  """

  @derive [Poison.Encoder]
  defstruct [
    :"attachments",
    :"body",
    :"charset",
    :"isHTML",
    :"sendStrategy",
    :"template",
    :"templateVariables"
  ]

  @type t :: %__MODULE__{
    :"attachments" => [String.t] | nil,
    :"body" => String.t | nil,
    :"charset" => String.t | nil,
    :"isHTML" => boolean() | nil,
    :"sendStrategy" => String.t | nil,
    :"template" => String.t | nil,
    :"templateVariables" => Map | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ReplyToAliasEmailOptions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"templateVariables", :struct, MailSlurpAPI.Model.Map, options)
  end
end
