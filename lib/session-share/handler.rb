module Session
  module Share
    class Handler
      def initialize(redis_namespace, options)
        @redis_namespace = redis_namespace
        @config = {
          :prefix => 'session_share_default'
        }.merge(options)
      end

      def set(session_id, data)
        @redis_namespace.set(session_id, data.to_json)
      end

      def get(session_id)
        value = @redis_namespace.get(session_id)
        value.blank? ? {} : JSON.parse(value)
      end
    end
  end
end
