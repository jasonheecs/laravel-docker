# frozen_string_literal: true

require 'docker'
require 'serverspec'
require 'spec_helper'

describe 'Dockerfile' do
  before(:all) do
    @image = Docker::Image.build_from_dir('./7.4')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, @image.id
  end

  it 'has the maintainer label' do
    expect(@image.json['Config']['Labels'].key?('maintainer'))
  end

  describe 'required laravel php extensions' do
    %w[
      bcmath
      ctype
      json
      mbstring
      openssl
      pdo
      tokenizer
      xml
      zip
    ].each do |extension|
      context php_extension(extension) do
        it { should be_loaded }
      end
    end
  end

  describe 'php database extensions' do
    %w[
      pdo_mysql
      pdo_pgsql
      pdo_sqlite
    ].each do |extension|
      context php_extension(extension) do
        it { should be_loaded }
      end
    end
  end
end
