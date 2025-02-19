require "optparse"

module OptparseEx
  class ::OptionParser
    attr_reader :p
    alias :_on :on

    def on(attr, *args, default: nil, &block)
      if attr.is_a?(Symbol)
        self.class.class_eval do
          unless method_defined?(attr)
            attr_accessor attr 
          else
            raise "Method #{attr} is already defined in OptionParser class"
          end
        end

        self.send("#{attr}=", default) if default

        unless args.first.to_s =~ /^\-/
          self.send("#{attr}=", args.shift)
        end

        _on(*args) do |i|
          self.send("#{attr}=", i)
          block.call(i) if block
        end
      else
        args.unshift attr
        _on(*args, block)
      end
    end
  end
end

