# controller to handle specific data-related actions such as importing data, querying data, or managing data-related operations.
# contain actions and methods tailored to specific areas of your application
class DataController < ApplicationController
  def import
    import_data_from_json
    redirect_to root_path, notice: "Data imported successfully"
  end
end
