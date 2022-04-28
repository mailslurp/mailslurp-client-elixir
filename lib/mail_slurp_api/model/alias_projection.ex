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
    :"userId",
    :"emailAddress",
    :"inboxId",
    :"updatedAt",
    :"createdAt",
    :"useThreads"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"id" => String.t,
    :"userId" => String.t,
    :"emailAddress" => String.t,
    :"inboxId" => String.t,
    :"updatedAt" => DateTime.t,
    :"createdAt" => DateTime.t,
    :"useThreads" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.AliasProjection do
  def decode(value, _options) do
    value
  end
end

