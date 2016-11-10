module PaperclipAttachmentRemovable
  extend ActiveSupport::Concern

  module ClassMethods
    def has_removable_attachments(*args)
      args.each do |name|
        attr_accessor "delete_#{name}".to_sym

        before_validation { send(name).clear if try("delete_#{name}?".to_sym) }

        define_method "delete_#{name}=".to_sym do |value|
          instance_variable_set("@delete_#{name}".to_sym, value)
          try("#{name}_file_name_will_change!".to_sym)
        end

        define_method "delete_#{name}?".to_sym do
          ActiveRecord::Type::Boolean.new.type_cast_from_user(send("delete_#{name}".to_sym))
        end
      end
    end
  end
end
