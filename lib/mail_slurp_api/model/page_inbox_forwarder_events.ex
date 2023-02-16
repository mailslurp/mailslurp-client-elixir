# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PageInboxForwarderEvents do
  @moduledoc """
  Paginated inbox forwarder events. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content",
    :"pageable",
    :"total",
    :"totalPages",
    :"totalElements",
    :"last",
    :"size",
    :"number",
    :"sort",
    :"numberOfElements",
    :"first",
    :"empty"
  ]

  @type t :: %__MODULE__{
    :"content" => [InboxForwarderEventProjection] | nil,
    :"pageable" => PageableObject | nil,
    :"total" => integer() | nil,
    :"totalPages" => integer() | nil,
    :"totalElements" => integer() | nil,
    :"last" => boolean() | nil,
    :"size" => integer() | nil,
    :"number" => integer() | nil,
    :"sort" => Sort | nil,
    :"numberOfElements" => integer() | nil,
    :"first" => boolean() | nil,
    :"empty" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PageInboxForwarderEvents do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"content", :list, MailSlurpAPI.Model.InboxForwarderEventProjection, options)
    |> deserialize(:"pageable", :struct, MailSlurpAPI.Model.PageableObject, options)
    |> deserialize(:"sort", :struct, MailSlurpAPI.Model.Sort, options)
  end
end

