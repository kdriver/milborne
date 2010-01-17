SMS_FADDR=2

SMR_BIND=10

class SM
     def initialize
	@msg = []
     end

      def create_smr_bind
	  @msg[0] = SMS_FADDR
	  @msg[1] = 0
	  @msg[2] = 4
	  @msg[3] = 0
	  @msg[4] = SMR_BIND
	  @msg[5] = 0
	  @msg[6] = 0
	  @msg[7] = 1 + 2 + 4 + 16
    return @msg
      end
end

class MM
     def initialize
		@msg = Array.new(512,0)
    @num = 0
		@msg[0] = @num
     end

     def add( ele )
	       @num = @num + 1
	       @msg[0] = @num
         @index=1;
        
         ele.each() { |i| @msg[@index] = i ; @index=@index + 1; }
     end 

     def get_buffer 
            return @msg
     end
end

