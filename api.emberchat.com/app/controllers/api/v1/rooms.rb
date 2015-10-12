module API
  module V1
    class Rooms < Grape::API
      include API::V1::Defaults

      @user = current_user

      resource :rooms do
        desc "Return all rooms"
        get "", root: :rooms do
          @user.rooms.all
        end

        desc "Return a rooms based on user"
        params do
          requires :id, type: String, desc: "ID of the room"
        end
        get ":id", root: "room" do
          @user.rooms.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
