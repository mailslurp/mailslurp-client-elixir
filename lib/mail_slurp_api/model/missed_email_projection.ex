# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.MissedEmailProjection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"createdAt",
    :"from",
    :"id",
    :"subject",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"createdAt" => DateTime.t,
    :"from" => String.t | nil,
    :"id" => String.t,
    :"subject" => String.t | nil,
    :"userId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.MissedEmailProjection do
  def decode(value, _options) do
    value
  end
end

