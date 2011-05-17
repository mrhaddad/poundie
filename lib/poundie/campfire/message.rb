module Poundie
  module Campfire
    class Message
      def initialize(room, hash)
        @room, @hash = room, hash
      end

      def id
        @hash[:id]
      end

      def body
        @hash[:body]
      end

      def room_id
        @hash[:room_id]
      end

      def created_at
        @hash[:created_at]
      end

      def user
        Poundie::Campfire::User.get(@room, @hash[:user_id])
      end

      def type
        @hash[:type]
      end

      def text?
        type == "TextMessage"
      end

      def paste?
        type == "PasteMessage"
      end

      def sound?
        type == "SoundMessage"
      end

      def tweet?
        type == "TweetMessage"
      end
    end
  end
end
