# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PageMissedEmailProjection do
  @moduledoc """
  Paginated MissedEmail results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content",
    :"pageable",
    :"total",
    :"totalElements",
    :"totalPages",
    :"last",
    :"size",
    :"number",
    :"sort",
    :"numberOfElements",
    :"first",
    :"empty"
  ]

  @type t :: %__MODULE__{
    :"content" => [MissedEmailProjection] | nil,
    :"pageable" => PageableObject | nil,
    :"total" => integer() | nil,
    :"totalElements" => integer() | nil,
    :"totalPages" => integer() | nil,
    :"last" => boolean() | nil,
    :"size" => integer() | nil,
    :"number" => integer() | nil,
    :"sort" => Sort | nil,
    :"numberOfElements" => integer() | nil,
    :"first" => boolean() | nil,
    :"empty" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PageMissedEmailProjection do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"content", :list, MailSlurpAPI.Model.MissedEmailProjection, options)
    |> deserialize(:"pageable", :struct, MailSlurpAPI.Model.PageableObject, options)
    |> deserialize(:"sort", :struct, MailSlurpAPI.Model.Sort, options)
  end
end

