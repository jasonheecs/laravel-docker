# frozen_string_literal: true

require 'docker'

set :backend, :exec

Dir[File.join(__dir__, 'support', '*.rb')].sort.each { |file| require file }

Docker.options = { read_timeout: 800, write_timeout: 800 }
