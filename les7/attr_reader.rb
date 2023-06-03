class MyReader
 	
 def name
 	@name
 end

 def name=(srt)
 	@name = str
end

reader = MyReader.new
reader.name = 'Oles'



class Module
  def var(method_name)
    inst_variable_name = "#{method_name}".to_sym
    define_method method_name do
      instance_variable_get inst_variable_name
    end
    define_method "#{method_name}=" do |new_value|
      instance_variable_set inst_variable_name, new_value
    end
  end
end