module SessionShare
  class Handler
    def initialize(redis_namespace, options = {})
      @redis_namespace = redis_namespace
      @config = {}.merge(options)
    end

    def set(session_id, data)
      @redis_namespace.set(session_id, data.to_json)
    end

    def get(session_id)
      value = @redis_namespace.get(session_id)
      if !value.blank?
        json = JSON.parse(value)
        symbolized = json.symbolize_keys
      end

      value.blank? ? {} : json.merge(symbolized)
    end

    def delete(session_id)
      @redis_namespace.del(session_id)
    end
  end
end
