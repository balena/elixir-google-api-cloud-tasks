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

defmodule GoogleApi.CloudTasks.V2.Model.Policy do
  @moduledoc """
  Defines an Identity and Access Management (IAM) policy. It is used to specify access control policies for Cloud Platform resources.   A &#x60;Policy&#x60; consists of a list of &#x60;bindings&#x60;. A &#x60;binding&#x60; binds a list of &#x60;members&#x60; to a &#x60;role&#x60;, where the members can be user accounts, Google groups, Google domains, and service accounts. A &#x60;role&#x60; is a named list of permissions defined by IAM.  **JSON Example**      {       \&quot;bindings\&quot;: [         {           \&quot;role\&quot;: \&quot;roles/owner\&quot;,           \&quot;members\&quot;: [             \&quot;user:mike@example.com\&quot;,             \&quot;group:admins@example.com\&quot;,             \&quot;domain:google.com\&quot;,             \&quot;serviceAccount:my-other-app@appspot.gserviceaccount.com\&quot;           ]         },         {           \&quot;role\&quot;: \&quot;roles/viewer\&quot;,           \&quot;members\&quot;: [\&quot;user:sean@example.com\&quot;]         }       ]     }  **YAML Example**      bindings:     - members:       - user:mike@example.com       - group:admins@example.com       - domain:google.com       - serviceAccount:my-other-app@appspot.gserviceaccount.com       role: roles/owner     - members:       - user:sean@example.com       role: roles/viewer   For a description of IAM and its features, see the [IAM developer&#39;s guide](https://cloud.google.com/iam/docs).

  ## Attributes

  - bindings ([Binding]): Associates a list of &#x60;members&#x60; to a &#x60;role&#x60;. &#x60;bindings&#x60; with no members will result in an error. Defaults to: `null`.
  - etag (binary()): &#x60;etag&#x60; is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the &#x60;etag&#x60; in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An &#x60;etag&#x60; is returned in the response to &#x60;getIamPolicy&#x60;, and systems are expected to put that etag in the request to &#x60;setIamPolicy&#x60; to ensure that their change will be applied to the same version of the policy.  If no &#x60;etag&#x60; is provided in the call to &#x60;setIamPolicy&#x60;, then the existing policy is overwritten blindly. Defaults to: `null`.
  - version (integer()): Deprecated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"bindings" => list(GoogleApi.CloudTasks.V2.Model.Binding.t()),
    :"etag" => any(),
    :"version" => any()
  }

  field(:"bindings", as: GoogleApi.CloudTasks.V2.Model.Binding, type: :list)
  field(:"etag")
  field(:"version")
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2.Model.Policy do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


