# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudTasks.V2beta2.Model.Queue do
  @moduledoc """
  A queue is a container of related tasks. Queues are configured to manage how those tasks are dispatched. Configurable properties include rate limits, retry options, target types, and others.

  ## Attributes

  - appEngineHttpTarget (AppEngineHttpTarget): App Engine HTTP target.  An App Engine queue is a queue that has an AppEngineHttpTarget. Defaults to: `null`.
  - name (String.t): Caller-specified and required in CreateQueue, after which it becomes output only.  The queue name.  The queue name must have the following format: &#x60;projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID&#x60;  * &#x60;PROJECT_ID&#x60; can contain letters ([A-Za-z]), numbers ([0-9]),    hyphens (-), colons (:), or periods (.).    For more information, see    [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * &#x60;LOCATION_ID&#x60; is the canonical ID for the queue&#39;s location.    The list of available locations can be obtained by calling    ListLocations.    For more information, see https://cloud.google.com/about/locations/. * &#x60;QUEUE_ID&#x60; can contain letters ([A-Za-z]), numbers ([0-9]), or   hyphens (-). The maximum length is 100 characters. Defaults to: `null`.
  - pullTarget (PullTarget): Pull target.  A pull queue is a queue that has a PullTarget. Defaults to: `null`.
  - purgeTime (String.t): Output only. The last time this queue was purged.  All tasks that were created before this time were purged.  A queue can be purged using PurgeQueue, the [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue).  Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged. Defaults to: `null`.
  - rateLimits (RateLimits): Rate limits for task dispatches.  rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways:  * rate_limits controls the total rate of   dispatches from a queue (i.e. all traffic dispatched from the   queue, regardless of whether the dispatch is from a first   attempt or a retry). * retry_config controls what happens to   particular a task after its first attempt fails. That is,   retry_config controls task retries (the   second attempt, third attempt, etc). Defaults to: `null`.
  - retryConfig (RetryConfig): Settings that determine the retry behavior.  * For tasks created using Cloud Tasks: the queue-level retry settings   apply to all tasks in the queue that were created using Cloud Tasks.   Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry   settings apply to all tasks in the queue which do not have retry settings   explicitly set on the task and were created by the App Engine SDK. See   [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks). Defaults to: `null`.
  - state (String.t): Output only. The state of the queue.  &#x60;state&#x60; can only be changed by called PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to change &#x60;state&#x60;. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, RUNNING, PAUSED, DISABLED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"appEngineHttpTarget" => GoogleApi.CloudTasks.V2beta2.Model.AppEngineHttpTarget.t(),
    :"name" => any(),
    :"pullTarget" => GoogleApi.CloudTasks.V2beta2.Model.PullTarget.t(),
    :"purgeTime" => any(),
    :"rateLimits" => GoogleApi.CloudTasks.V2beta2.Model.RateLimits.t(),
    :"retryConfig" => GoogleApi.CloudTasks.V2beta2.Model.RetryConfig.t(),
    :"state" => any()
  }

  field(:"appEngineHttpTarget", as: GoogleApi.CloudTasks.V2beta2.Model.AppEngineHttpTarget)
  field(:"name")
  field(:"pullTarget", as: GoogleApi.CloudTasks.V2beta2.Model.PullTarget)
  field(:"purgeTime")
  field(:"rateLimits", as: GoogleApi.CloudTasks.V2beta2.Model.RateLimits)
  field(:"retryConfig", as: GoogleApi.CloudTasks.V2beta2.Model.RetryConfig)
  field(:"state")
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.Queue do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.Queue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.Queue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


