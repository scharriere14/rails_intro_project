class DataController < ApplicationController
  def import
    import_data_from_json
    redirect_to root_path, notice: "Data imported successfully"
  end
end
