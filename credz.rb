# frozen_string_literal: true

class Credz < Formula
  desc 'AWS Okta Assume Role CLI'
  homepage 'https://github.com/ryangraham/credz'
  url 'https://github.com/ryangraham/credz/archive/v0.0.1-cd4dd01.tar.gz'
  sha256 '81a13c5406eb0d7441c511548826ce9717d809c194d93b10406f8fbda74fa19b'
  head 'https://github.com/ryangraham/credz.git', branch: 'master'

  depends_on 'cmake'
  depends_on 'boost'
  depends_on 'aws-sdk-cpp'
  depends_on 'nlohmann/json/nlohmann_json'

  def install
    mkdir 'build' do
      system 'make', 'install'
    end
  end

  test do
    system '/usr/local/bin/credz -v'
  end
end
