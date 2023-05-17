# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.TrackingPixelDto do
  @moduledoc """
  Tracking pixel
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"seen",
    :"recipient",
    :"html",
    :"url",
    :"inboxId",
    :"sentEmailId",
    :"seenAt",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"seen" => boolean(),
    :"recipient" => String.t | nil,
    :"html" => String.t,
    :"url" => String.t,
    :"inboxId" => String.t | nil,
    :"sentEmailId" => String.t | nil,
    :"seenAt" => DateTime.t | nil,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.TrackingPixelDto do
  def decode(value, _options) do
    value
  end
end

