# Redmine WikiFormat openSUSE
# The MIT License (MIT)
#
# Copyright (c) 2013 Ancor González Sosa
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require 'redmine'

Redmine::Plugin.register :wikiformat_opensuse do
  name 'WikiFormat openSUSE'
  author 'Ancor Gonzalez Sosa'
  description 'Adds openSUSE and SUSE related markup to Redmine Redcarpet Formatter plugin'
  version '0.0.3'
  url 'https://github.com/openSUSE-Team/redmine-wikiformat-opensuse'
  author_url 'https://github.com/ancorgs'

  requires_redmine_plugin :redmine_redcarpet_formatter, :version_or_higher => "2.0"
end

require 'render_overrides'
