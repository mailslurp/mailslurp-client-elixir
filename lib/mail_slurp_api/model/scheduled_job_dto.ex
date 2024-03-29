# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ScheduledJobDto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"inboxId",
    :"jobId",
    :"groupId",
    :"triggerId",
    :"status",
    :"sendAtTimestamp",
    :"createdAt",
    :"updatedAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t,
    :"inboxId" => String.t,
    :"jobId" => String.t,
    :"groupId" => String.t,
    :"triggerId" => String.t,
    :"status" => String.t,
    :"sendAtTimestamp" => DateTime.t,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ScheduledJobDto do
  def decode(value, _options) do
    value
  end
end

