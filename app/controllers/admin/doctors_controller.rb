module Admin
  class DoctorsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Doctor.
    #     page(params[:page]).
    #     per(10)
    # end

    def resource_params
      params["doctor"]["speciality"] = params["doctor"]["speciality"].split(' ')
      params.require(resource_name).permit(*dashboard.permitted_attributes, speciality: [])
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Doctor.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
