module JPTSExtractor
  module Exceptions
    class Error < StandardError
    end

    class StackError < Error
    end

    class StackEmptyError < StackError
    end

    class StackIndexOutOfBoundsError < StackError
    end

    class TextError < Error
    end

    class UnknownTextStyleError < TextError
    end

    class HandlerError < Error
    end

    class NullHandlerError < HandlerError
    end

    class BadParseError < HandlerError
    end
  end
end
