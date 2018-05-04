# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Drive.V3.Model.File do
  @moduledoc """
  The metadata for a file.

  ## Attributes

  - appProperties (%{optional(String.t) &#x3D;&gt; String.t}): A collection of arbitrary key-value pairs which are private to the requesting app. Entries with null values are cleared in update and copy requests. Defaults to: `null`.
  - capabilities (FileCapabilities):  Defaults to: `null`.
  - contentHints (FileContentHints):  Defaults to: `null`.
  - createdTime (DateTime.t): The time at which the file was created (RFC 3339 date-time). Defaults to: `null`.
  - description (String.t): A short description of the file. Defaults to: `null`.
  - explicitlyTrashed (boolean()): Whether the file has been explicitly trashed, as opposed to recursively trashed from a parent folder. Defaults to: `null`.
  - fileExtension (String.t): The final component of fullFileExtension. This is only available for files with binary content in Drive. Defaults to: `null`.
  - folderColorRgb (String.t): The color for a folder as an RGB hex string. The supported colors are published in the folderColorPalette field of the About resource. If an unsupported color is specified, the closest color in the palette will be used instead. Defaults to: `null`.
  - fullFileExtension (String.t): The full file extension extracted from the name field. May contain multiple concatenated extensions, such as \&quot;tar.gz\&quot;. This is only available for files with binary content in Drive. This is automatically updated when the name field changes, however it is not cleared if the new name does not contain a valid extension. Defaults to: `null`.
  - hasAugmentedPermissions (boolean()): Whether any users are granted file access directly on this file. This field is only populated for Team Drive files. Defaults to: `null`.
  - hasThumbnail (boolean()): Whether this file has a thumbnail. This does not indicate whether the requesting app has access to the thumbnail. To check access, look for the presence of the thumbnailLink field. Defaults to: `null`.
  - headRevisionId (String.t): The ID of the file&#39;s head revision. This is currently only available for files with binary content in Drive. Defaults to: `null`.
  - iconLink (String.t): A static, unauthenticated link to the file&#39;s icon. Defaults to: `null`.
  - id (String.t): The ID of the file. Defaults to: `null`.
  - imageMediaMetadata (FileImageMediaMetadata):  Defaults to: `null`.
  - isAppAuthorized (boolean()): Whether the file was created or opened by the requesting app. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;drive#file\&quot;. Defaults to: `null`.
  - lastModifyingUser (User): The last user to modify the file. Defaults to: `null`.
  - md5Checksum (String.t): The MD5 checksum for the content of the file. This is only applicable to files with binary content in Drive. Defaults to: `null`.
  - mimeType (String.t): The MIME type of the file. Drive will attempt to automatically detect an appropriate value from uploaded content if no value is provided. The value cannot be changed unless a new revision is uploaded. If a file is created with a Google Doc MIME type, the uploaded content will be imported if possible. The supported import formats are published in the About resource. Defaults to: `null`.
  - modifiedByMe (boolean()): Whether the file has been modified by this user. Defaults to: `null`.
  - modifiedByMeTime (DateTime.t): The last time the file was modified by the user (RFC 3339 date-time). Defaults to: `null`.
  - modifiedTime (DateTime.t): The last time the file was modified by anyone (RFC 3339 date-time). Note that setting modifiedTime will also update modifiedByMeTime for the user. Defaults to: `null`.
  - name (String.t): The name of the file. This is not necessarily unique within a folder. Note that for immutable items such as the top level folders of Team Drives, My Drive root folder, and Application Data folder the name is constant. Defaults to: `null`.
  - originalFilename (String.t): The original filename of the uploaded content if available, or else the original value of the name field. This is only available for files with binary content in Drive. Defaults to: `null`.
  - ownedByMe (boolean()): Whether the user owns the file. Not populated for Team Drive files. Defaults to: `null`.
  - owners ([User]): The owners of the file. Currently, only certain legacy files may have more than one owner. Not populated for Team Drive files. Defaults to: `null`.
  - parents ([String.t]): The IDs of the parent folders which contain the file. If not specified as part of a create request, the file will be placed directly in the user&#39;s My Drive folder. If not specified as part of a copy request, the file will inherit any discoverable parents of the source file. Update requests must use the addParents and removeParents parameters to modify the parents list. Defaults to: `null`.
  - permissionIds ([String.t]): List of permission IDs for users with access to this file. Defaults to: `null`.
  - permissions ([Permission]): The full list of permissions for the file. This is only available if the requesting user can share the file. Not populated for Team Drive files. Defaults to: `null`.
  - properties (%{optional(String.t) &#x3D;&gt; String.t}): A collection of arbitrary key-value pairs which are visible to all apps. Entries with null values are cleared in update and copy requests. Defaults to: `null`.
  - quotaBytesUsed (String.t): The number of storage quota bytes used by the file. This includes the head revision as well as previous revisions with keepForever enabled. Defaults to: `null`.
  - shared (boolean()): Whether the file has been shared. Not populated for Team Drive files. Defaults to: `null`.
  - sharedWithMeTime (DateTime.t): The time at which the file was shared with the user, if applicable (RFC 3339 date-time). Defaults to: `null`.
  - sharingUser (User): The user who shared the file with the requesting user, if applicable. Defaults to: `null`.
  - size (String.t): The size of the file&#39;s content in bytes. This is only applicable to files with binary content in Drive. Defaults to: `null`.
  - spaces ([String.t]): The list of spaces which contain the file. The currently supported values are &#39;drive&#39;, &#39;appDataFolder&#39; and &#39;photos&#39;. Defaults to: `null`.
  - starred (boolean()): Whether the user has starred the file. Defaults to: `null`.
  - teamDriveId (String.t): ID of the Team Drive the file resides in. Defaults to: `null`.
  - thumbnailLink (String.t): A short-lived link to the file&#39;s thumbnail, if available. Typically lasts on the order of hours. Only populated when the requesting app can access the file&#39;s content. Defaults to: `null`.
  - thumbnailVersion (String.t): The thumbnail version for use in thumbnail cache invalidation. Defaults to: `null`.
  - trashed (boolean()): Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the owner may trash a file, and other users cannot see files in the owner&#39;s trash. Defaults to: `null`.
  - trashedTime (DateTime.t): The time that the item was trashed (RFC 3339 date-time). Only populated for Team Drive files. Defaults to: `null`.
  - trashingUser (User): If the file has been explicitly trashed, the user who trashed it. Only populated for Team Drive files. Defaults to: `null`.
  - version (String.t): A monotonically increasing version number for the file. This reflects every change made to the file on the server, even those not visible to the user. Defaults to: `null`.
  - videoMediaMetadata (FileVideoMediaMetadata):  Defaults to: `null`.
  - viewedByMe (boolean()): Whether the file has been viewed by this user. Defaults to: `null`.
  - viewedByMeTime (DateTime.t): The last time the file was viewed by the user (RFC 3339 date-time). Defaults to: `null`.
  - viewersCanCopyContent (boolean()): Whether users with only reader or commenter permission can copy the file&#39;s content. This affects copy, download, and print operations. Defaults to: `null`.
  - webContentLink (String.t): A link for downloading the content of the file in a browser. This is only available for files with binary content in Drive. Defaults to: `null`.
  - webViewLink (String.t): A link for opening the file in a relevant Google editor or viewer in a browser. Defaults to: `null`.
  - writersCanShare (boolean()): Whether users with only writer permission can modify the file&#39;s permissions. Not populated for Team Drive files. Defaults to: `null`.
  """

  defstruct [
    :appProperties,
    :capabilities,
    :contentHints,
    :createdTime,
    :description,
    :explicitlyTrashed,
    :fileExtension,
    :folderColorRgb,
    :fullFileExtension,
    :hasAugmentedPermissions,
    :hasThumbnail,
    :headRevisionId,
    :iconLink,
    :id,
    :imageMediaMetadata,
    :isAppAuthorized,
    :kind,
    :lastModifyingUser,
    :md5Checksum,
    :mimeType,
    :modifiedByMe,
    :modifiedByMeTime,
    :modifiedTime,
    :name,
    :originalFilename,
    :ownedByMe,
    :owners,
    :parents,
    :permissionIds,
    :permissions,
    :properties,
    :quotaBytesUsed,
    :shared,
    :sharedWithMeTime,
    :sharingUser,
    :size,
    :spaces,
    :starred,
    :teamDriveId,
    :thumbnailLink,
    :thumbnailVersion,
    :trashed,
    :trashedTime,
    :trashingUser,
    :version,
    :videoMediaMetadata,
    :viewedByMe,
    :viewedByMeTime,
    :viewersCanCopyContent,
    :webContentLink,
    :webViewLink,
    :writersCanShare
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.File do
  import GoogleApi.Drive.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :capabilities,
      :struct,
      GoogleApi.Drive.V3.Model.FileCapabilities,
      options
    )
    |> deserialize(
      :contentHints,
      :struct,
      GoogleApi.Drive.V3.Model.FileContentHints,
      options
    )
    |> deserialize(:createdTime, :date, nil, options)
    |> deserialize(
      :imageMediaMetadata,
      :struct,
      GoogleApi.Drive.V3.Model.FileImageMediaMetadata,
      options
    )
    |> deserialize(:lastModifyingUser, :struct, GoogleApi.Drive.V3.Model.User, options)
    |> deserialize(:modifiedByMeTime, :date, nil, options)
    |> deserialize(:modifiedTime, :date, nil, options)
    |> deserialize(:owners, :list, GoogleApi.Drive.V3.Model.User, options)
    |> deserialize(:permissions, :list, GoogleApi.Drive.V3.Model.Permission, options)
    |> deserialize(:sharedWithMeTime, :date, nil, options)
    |> deserialize(:sharingUser, :struct, GoogleApi.Drive.V3.Model.User, options)
    |> deserialize(:trashedTime, :date, nil, options)
    |> deserialize(:trashingUser, :struct, GoogleApi.Drive.V3.Model.User, options)
    |> deserialize(
      :videoMediaMetadata,
      :struct,
      GoogleApi.Drive.V3.Model.FileVideoMediaMetadata,
      options
    )
    |> deserialize(:viewedByMeTime, :date, nil, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.File do
  def encode(value, options) do
    GoogleApi.Drive.V3.Deserializer.serialize_non_nil(value, options)
  end
end