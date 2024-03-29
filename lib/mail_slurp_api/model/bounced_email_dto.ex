# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.BouncedEmailDto do
  @moduledoc """
  Bounced email
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"notificationType",
    :"sentToRecipients",
    :"sender",
    :"bounceMta",
    :"bounceType",
    :"bounceRecipients",
    :"bounceSubType",
    :"sentEmailId",
    :"subject",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t,
    :"notificationType" => String.t,
    :"sentToRecipients" => [String.t] | nil,
    :"sender" => String.t,
    :"bounceMta" => String.t | nil,
    :"bounceType" => String.t | nil,
    :"bounceRecipients" => [String.t] | nil,
    :"bounceSubType" => String.t | nil,
    :"sentEmailId" => String.t | nil,
    :"subject" => String.t | nil,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.BouncedEmailDto do
  def decode(value, _options) do
    value
  end
end

