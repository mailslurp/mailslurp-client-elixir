# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.UpdateInboxOptions do
  @moduledoc """
  Options for updating inbox properties
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"expiresAt",
    :"favourite",
    :"name",
    :"tags"
  ]

  @type t :: %__MODULE__{
    :"description" => String.t | nil,
    :"expiresAt" => DateTime.t | nil,
    :"favourite" => boolean() | nil,
    :"name" => String.t | nil,
    :"tags" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.UpdateInboxOptions do
  def decode(value, _options) do
    value
  end
end

