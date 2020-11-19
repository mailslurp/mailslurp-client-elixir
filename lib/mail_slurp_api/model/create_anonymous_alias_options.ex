# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.CreateAnonymousAliasOptions do
  @moduledoc """
  Create anonymous email alias options. Email aliases can be used to mask real email addresses behind an ID
  """

  @derive [Poison.Encoder]
  defstruct [
    :"emailAddress"
  ]

  @type t :: %__MODULE__{
    :"emailAddress" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.CreateAnonymousAliasOptions do
  def decode(value, _options) do
    value
  end
end
