# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.BounceProjection do
  @moduledoc """
  Bounced email event
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"sender",
    :"subject",
    :"createdAt",
    :"bounceType",
    :"bounceMta"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"sender" => String.t,
    :"subject" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"bounceType" => String.t | nil,
    :"bounceMta" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.BounceProjection do
  def decode(value, _options) do
    value
  end
end

