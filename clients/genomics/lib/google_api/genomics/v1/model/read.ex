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

defmodule GoogleApi.Genomics.V1.Model.Read do
  @moduledoc """
  A read alignment describes a linear alignment of a string of DNA to a reference sequence, in addition to metadata about the fragment (the molecule of DNA sequenced) and the read (the bases which were read by the sequencer). A read is equivalent to a line in a SAM file. A read belongs to exactly one read group and exactly one read group set.  For more genomics resource definitions, see [Fundamentals of Google Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)  ### Reverse-stranded reads  Mapped reads (reads having a non-null &#x60;alignment&#x60;) can be aligned to either the forward or the reverse strand of their associated reference. Strandedness of a mapped read is encoded by &#x60;alignment.position.reverseStrand&#x60;.  If we consider the reference to be a forward-stranded coordinate space of &#x60;[0, reference.length)&#x60; with &#x60;0&#x60; as the left-most position and &#x60;reference.length&#x60; as the right-most position, reads are always aligned left to right. That is, &#x60;alignment.position.position&#x60; always refers to the left-most reference coordinate and &#x60;alignment.cigar&#x60; describes the alignment of this read to the reference from left to right. All per-base fields such as &#x60;alignedSequence&#x60; and &#x60;alignedQuality&#x60; share this same left-to-right orientation; this is true of reads which are aligned to either strand. For reverse-stranded reads, this means that &#x60;alignedSequence&#x60; is the reverse complement of the bases that were originally reported by the sequencing machine.  ### Generating a reference-aligned sequence string  When interacting with mapped reads, it&#39;s often useful to produce a string representing the local alignment of the read to reference. The following pseudocode demonstrates one way of doing this:      out &#x3D; \&quot;\&quot;     offset &#x3D; 0     for c in read.alignment.cigar {       switch c.operation {       case \&quot;ALIGNMENT_MATCH\&quot;, \&quot;SEQUENCE_MATCH\&quot;, \&quot;SEQUENCE_MISMATCH\&quot;:         out +&#x3D; read.alignedSequence[offset:offset+c.operationLength]         offset +&#x3D; c.operationLength         break       case \&quot;CLIP_SOFT\&quot;, \&quot;INSERT\&quot;:         offset +&#x3D; c.operationLength         break       case \&quot;PAD\&quot;:         out +&#x3D; repeat(\&quot;*\&quot;, c.operationLength)         break       case \&quot;DELETE\&quot;:         out +&#x3D; repeat(\&quot;-\&quot;, c.operationLength)         break       case \&quot;SKIP\&quot;:         out +&#x3D; repeat(\&quot; \&quot;, c.operationLength)         break       case \&quot;CLIP_HARD\&quot;:         break       }     }     return out  ### Converting to SAM&#39;s CIGAR string  The following pseudocode generates a SAM CIGAR string from the &#x60;cigar&#x60; field. Note that this is a lossy conversion (&#x60;cigar.referenceSequence&#x60; is lost).      cigarMap &#x3D; {       \&quot;ALIGNMENT_MATCH\&quot;: \&quot;M\&quot;,       \&quot;INSERT\&quot;: \&quot;I\&quot;,       \&quot;DELETE\&quot;: \&quot;D\&quot;,       \&quot;SKIP\&quot;: \&quot;N\&quot;,       \&quot;CLIP_SOFT\&quot;: \&quot;S\&quot;,       \&quot;CLIP_HARD\&quot;: \&quot;H\&quot;,       \&quot;PAD\&quot;: \&quot;P\&quot;,       \&quot;SEQUENCE_MATCH\&quot;: \&quot;&#x3D;\&quot;,       \&quot;SEQUENCE_MISMATCH\&quot;: \&quot;X\&quot;,     }     cigarStr &#x3D; \&quot;\&quot;     for c in read.alignment.cigar {       cigarStr +&#x3D; c.operationLength + cigarMap[c.operation]     }     return cigarStr
  """

  @derive [Poison.Encoder]
  defstruct [
    :"info",
    :"alignedQuality",
    :"alignedSequence",
    :"alignment",
    :"duplicateFragment",
    :"failedVendorQualityChecks",
    :"fragmentLength",
    :"fragmentName",
    :"id",
    :"nextMatePosition",
    :"numberReads",
    :"properPlacement",
    :"readGroupId",
    :"readGroupSetId",
    :"readNumber",
    :"secondaryAlignment",
    :"supplementaryAlignment"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.Read do
  import GoogleApi.Genomics.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"alignment", :struct, GoogleApi.Genomics.V1.Model.LinearAlignment, options)
    |> deserialize(:"nextMatePosition", :struct, GoogleApi.Genomics.V1.Model.Position, options)
  end
end

