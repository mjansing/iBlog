# encoding: UTF-8
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

module ApplicationHelper

  def notification(type, message)
    type = :danger if type == 'error'

    content_tag :div, :class => "alert alert-#{type}" do
      content = ActiveSupport::SafeBuffer.new
      content << link_to("&times;".html_safe, "", :class => "close", :"data-dismiss" => "alert")
      content << message
      content
    end
  end

  def glyph(name, color = nil)
    color_suffix = color ? " icon-white" : ""

    @glyphs = {
      :edit   => "<i class='icon-edit#{color_suffix}'></i> Bearbeiten".html_safe,
      :delete => "<i class='icon-trash#{color_suffix}'></i> Löschen".html_safe,
      :tags   => "<i class='icon-tag#{color_suffix}'></i>".html_safe
    }
    @glyphs[name.to_sym]
  end
end
