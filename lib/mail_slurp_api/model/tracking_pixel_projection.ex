# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.TrackingPixelProjection do
  @moduledoc """
  Tracking pixel data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"id",
    :"inboxId",
    :"userId",
    :"createdAt",
    :"sentEmailId",
    :"recipient",
    :"seen",
    :"seenAt"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"id" => String.t,
    :"inboxId" => String.t | nil,
    :"userId" => String.t,
    :"createdAt" => DateTime.t,
    :"sentEmailId" => String.t | nil,
    :"recipient" => String.t | nil,
    :"seen" => boolean(),
    :"seenAt" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.TrackingPixelProjection do
  def decode(value, _options) do
    value
  end
end

