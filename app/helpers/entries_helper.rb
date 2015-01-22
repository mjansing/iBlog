# Copyright 2014 innoQ Deutschland GmbH

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
module EntriesHelper

  def format_entry_section(section)
    content_tag :div, :class => "entry-section" do
      raw section
    end
  end

  def tags(entry)
    entry.tags.map { |tag|
      content_tag :span, :class => "label label-default tag" do
        link_to tag.name, tag_path(:tag => tag.name)
      end
    }.join(' ').html_safe
  end

end
