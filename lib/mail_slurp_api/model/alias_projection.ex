# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.AliasProjection do
  @moduledoc """
  Representation of a alias
  """

  @derive [Poison.Encoder]
  defstruct [
    :"createdAt",
    :"emailAddress",
    :"id",
    :"inboxId",
    :"name",
    :"updatedAt",
    :"useThreads",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"createdAt" => DateTime.t,
    :"emailAddress" => String.t,
    :"id" => String.t,
    :"inboxId" => String.t,
    :"name" => String.t | nil,
    :"updatedAt" => DateTime.t,
    :"useThreads" => boolean() | nil,
    :"userId" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.AliasProjection do
  def decode(value, _options) do
    value
  end
end

