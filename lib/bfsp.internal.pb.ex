defmodule Bfsp.Internal.InternalFileServerMessage.GetUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_ids, 1, repeated: true, type: :int64, json_name: "userIds"
end

defmodule Bfsp.Internal.InternalFileServerMessage.GetStorageCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_ids, 1, repeated: true, type: :int64, json_name: "userIds"
end

defmodule Bfsp.Internal.InternalFileServerMessage.SetStorageCap.StorageCapsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :int64
  field :value, 2, type: :uint64
end

defmodule Bfsp.Internal.InternalFileServerMessage.SetStorageCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :storage_caps, 1,
    repeated: true,
    type: Bfsp.Internal.InternalFileServerMessage.SetStorageCap.StorageCapsEntry,
    json_name: "storageCaps",
    map: true
end

defmodule Bfsp.Internal.InternalFileServerMessage.SuspendUsers.SuspensionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :int64
  field :value, 2, type: Bfsp.Internal.Suspension
end

defmodule Bfsp.Internal.InternalFileServerMessage.SuspendUsers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :suspensions, 1,
    repeated: true,
    type: Bfsp.Internal.InternalFileServerMessage.SuspendUsers.SuspensionsEntry,
    map: true
end

defmodule Bfsp.Internal.InternalFileServerMessage.GetSuspensions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_ids, 1, repeated: true, type: :int64, json_name: "userIds"
end

defmodule Bfsp.Internal.InternalFileServerMessage.QueueAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :action, 1, type: Bfsp.Internal.ActionInfo
end

defmodule Bfsp.Internal.InternalFileServerMessage.GetQueuedActions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_ids, 1, repeated: true, type: :int64, json_name: "userIds"
end

defmodule Bfsp.Internal.InternalFileServerMessage.DeleteQueuedAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :action_id, 1, type: :int32, json_name: "actionId"
end

defmodule Bfsp.Internal.InternalFileServerMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :message, 0

  field :get_usage, 1,
    type: Bfsp.Internal.InternalFileServerMessage.GetUsage,
    json_name: "getUsage",
    oneof: 0

  field :get_storage_cap, 2,
    type: Bfsp.Internal.InternalFileServerMessage.GetStorageCap,
    json_name: "getStorageCap",
    oneof: 0

  field :set_storage_cap, 3,
    type: Bfsp.Internal.InternalFileServerMessage.SetStorageCap,
    json_name: "setStorageCap",
    oneof: 0

  field :suspend_users, 4,
    type: Bfsp.Internal.InternalFileServerMessage.SuspendUsers,
    json_name: "suspendUsers",
    oneof: 0

  field :get_suspensions, 5,
    type: Bfsp.Internal.InternalFileServerMessage.GetSuspensions,
    json_name: "getSuspensions",
    oneof: 0

  field :queue_action, 6,
    type: Bfsp.Internal.InternalFileServerMessage.QueueAction,
    json_name: "queueAction",
    oneof: 0

  field :get_queued_actions, 7,
    type: Bfsp.Internal.InternalFileServerMessage.GetQueuedActions,
    json_name: "getQueuedActions",
    oneof: 0

  field :delete_queued_action, 8,
    type: Bfsp.Internal.InternalFileServerMessage.DeleteQueuedAction,
    json_name: "deleteQueuedAction",
    oneof: 0
end

defmodule Bfsp.Internal.ActionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, proto3_optional: true, type: :int32
  field :action, 2, type: :string
  field :execute_at, 3, type: Google.Protobuf.Timestamp, json_name: "executeAt"
  field :status, 4, type: :string
  field :user_id, 5, type: :int64, json_name: "userId"
end

defmodule Bfsp.Internal.Suspension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :read_suspended, 1, type: :bool, json_name: "readSuspended"
  field :query_suspended, 2, type: :bool, json_name: "querySuspended"
  field :write_suspended, 3, type: :bool, json_name: "writeSuspended"
  field :delete_suspended, 4, type: :bool, json_name: "deleteSuspended"
end

defmodule Bfsp.Internal.EncryptedInternalFileServerMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :nonce, 1, type: :bytes
  field :enc_message, 2, type: :bytes, json_name: "encMessage"
end

defmodule Bfsp.Internal.GetUsageResp.Usage.UsagesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :int64
  field :value, 2, type: :uint64
end

defmodule Bfsp.Internal.GetUsageResp.Usage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :usages, 1, repeated: true, type: Bfsp.Internal.GetUsageResp.Usage.UsagesEntry, map: true
end

defmodule Bfsp.Internal.GetUsageResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :response, 0

  field :usage, 1, type: Bfsp.Internal.GetUsageResp.Usage, oneof: 0
  field :err, 2, type: :string, oneof: 0
end

defmodule Bfsp.Internal.GetStorageCapResp.StorageCap.StorageCapsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :int64
  field :value, 2, type: :uint64
end

defmodule Bfsp.Internal.GetStorageCapResp.StorageCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :storage_caps, 1,
    repeated: true,
    type: Bfsp.Internal.GetStorageCapResp.StorageCap.StorageCapsEntry,
    json_name: "storageCaps",
    map: true
end

defmodule Bfsp.Internal.GetStorageCapResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :response, 0

  field :storage_caps, 1,
    type: Bfsp.Internal.GetStorageCapResp.StorageCap,
    json_name: "storageCaps",
    oneof: 0

  field :err, 2, type: :string, oneof: 0
end

defmodule Bfsp.Internal.SetStorageCapResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :err, 1, proto3_optional: true, type: :string
end

defmodule Bfsp.Internal.SuspendUsersResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :err, 1, proto3_optional: true, type: :string
end

defmodule Bfsp.Internal.GetSuspensionsResp.Suspensions.SuspensionInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :int64
  field :value, 2, type: Bfsp.Internal.Suspension
end

defmodule Bfsp.Internal.GetSuspensionsResp.Suspensions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :suspension_info, 1,
    repeated: true,
    type: Bfsp.Internal.GetSuspensionsResp.Suspensions.SuspensionInfoEntry,
    json_name: "suspensionInfo",
    map: true
end

defmodule Bfsp.Internal.GetSuspensionsResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :response, 0

  field :suspensions, 1, type: Bfsp.Internal.GetSuspensionsResp.Suspensions, oneof: 0
  field :err, 2, type: :string, oneof: 0
end

defmodule Bfsp.Internal.QueueActionResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :response, 0

  field :action, 1, type: Bfsp.Internal.ActionInfo, oneof: 0
  field :err, 2, type: :string, oneof: 0
end

defmodule Bfsp.Internal.GetQueuedActionResp.Actions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :actions, 1, repeated: true, type: Bfsp.Internal.ActionInfo
end

defmodule Bfsp.Internal.GetQueuedActionResp.ActionsPerUser.ActionInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :int64
  field :value, 2, type: Bfsp.Internal.GetQueuedActionResp.Actions
end

defmodule Bfsp.Internal.GetQueuedActionResp.ActionsPerUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :action_info, 1,
    repeated: true,
    type: Bfsp.Internal.GetQueuedActionResp.ActionsPerUser.ActionInfoEntry,
    json_name: "actionInfo",
    map: true
end

defmodule Bfsp.Internal.GetQueuedActionResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :response, 0

  field :actions, 1, type: Bfsp.Internal.GetQueuedActionResp.ActionsPerUser, oneof: 0
  field :err, 2, type: :string, oneof: 0
end

defmodule Bfsp.Internal.DeleteQueuedActionResp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :err, 1, proto3_optional: true, type: :string
end