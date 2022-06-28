# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.GroupDto do
  @moduledoc """
  Contact group data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"description",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"description" => String.t | nil,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.GroupDto do
  def decode(value, _options) do
    value
  end
end

