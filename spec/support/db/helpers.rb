module Test
  module DatabaseHelpers
    module_function

    def rom
      Nnn::Container["persistence.rom"]
    end

    def db
      Nnn::Container["persistence.db"]
    end
  end
end
