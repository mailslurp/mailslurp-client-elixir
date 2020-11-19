# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.Inbox do
  @moduledoc """
  Representation of an inbox with an email address. Emails can be sent to or from this email address.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"createdAt",
    :"description",
    :"emailAddress",
    :"expiresAt",
    :"favourite",
    :"id",
    :"name",
    :"tags",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"createdAt" => DateTime.t | nil,
    :"description" => String.t | nil,
    :"emailAddress" => String.t | nil,
    :"expiresAt" => String.t | nil,
    :"favourite" => boolean() | nil,
    :"id" => String.t | nil,
    :"name" => String.t | nil,
    :"tags" => [String.t] | nil,
    :"userId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.Inbox do
  def decode(value, _options) do
    value
  end
end
