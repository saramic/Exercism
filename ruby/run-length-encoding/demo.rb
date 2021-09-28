#!/usr/bin/env ruby

require 'base64'
eval(Base64.decode64(DATA.read))

puts HelloWorld.greeting

__END__
Y2xhc3MgSGVsbG9Xb3JsZAogIGNsYXNzIDw8IHNlbGYKICAgIGRlZiBncmVldGluZwogICAg
ICAiSGVsbG8gV29ybGQhIgogICAgZW5kCiAgZW5kCmVuZAo=
