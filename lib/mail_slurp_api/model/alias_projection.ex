# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.AliasProjection do
  @moduledoc """
  Representation of a alias
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"id",
    :"inboxId",
    :"userId",
    :"emailAddress",
    :"createdAt",
    :"useThreads",
    :"updatedAt"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"id" => String.t,
    :"inboxId" => String.t,
    :"userId" => String.t,
    :"emailAddress" => String.t,
    :"createdAt" => DateTime.t,
    :"useThreads" => boolean() | nil,
    :"updatedAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.AliasProjection do
  def decode(value, _options) do
    value
  end
end

