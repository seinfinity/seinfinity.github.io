# frozen_string_literal: true

require 'jekyll-watch'

module Jekyll
  module Watcher
    extend self

    # 원래 메소드를 체크하고, 없으면 새로 정의합니다.
    unless method_defined?(:original_listen_ignore_paths)
      def original_listen_ignore_paths(options)
        # 원래 Jekyll Watcher에서 제공하는 기본 ignore path 리스트를 여기에 정의
        # 예를 들어, 빈 배열을 반환하거나 기본적으로 무시해야 할 경로를 지정
        []
      end
    end

    # original_listen_ignore_paths가 확실히 존재함을 보장한 후에 alias_method를 사용합니다.
    alias_method :original_listen_ignore_paths, :original_listen_ignore_paths

    def listen_ignore_paths(options)
      original_listen_ignore_paths(options) + [%r!.*\.TMP!i]
    end
  end
end
