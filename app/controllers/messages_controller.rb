class MessagesController < ApplicationController
  
      def create
        @group = Group.find(params[:Group_id])
        @message = @group.messages.new(message_params)
      end
      
      def show
        @group = Group.find(params[:Group_id])
        @message = Message.find(params[:id])
      end
      
      def update
        @message = Message.find(params[:id])
        @message.update(group_params)
      end
  
      def destroy
        @message = Message.find(params[:id])
      end

      private
        def json_response(object, status = :ok)
            render json: object, status: status
        end
    
        def message_params
          params.require(:message).permit(:author, :content_body)
        end
    end