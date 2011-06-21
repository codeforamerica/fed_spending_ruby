module FedSpending
  class Client
    module Api
      
      def fdps(params={}, options={})
        if !params[:zip_code].nil?
          params["ZIPCode"] = params[:zip_code]
          params.delete(:zip_code)
        end
        if !params[:vendor_country_code].nil?
          params["vendorCountryCode"] = params[:vendor_country_code]
          params.delete(:vendor_country_code)
        end
        if !params[:state_code].nil?
          params["stateCode"] = params[:state_code]
          params.delete(:state_code)
        end
        if !params[:place_of_performance_zip_code].nil?
          params["placeOfPerformanceZIPCode"] = params[:place_of_performance_zip_code]
          params.delete(:place_of_performance_zip_code)
        end
        if !params[:place_of_performance_country_code].nil?
          params["placeOfPerformanceCountryCode"] = params[:place_of_performance_country_code]
          params.delete(:place_of_performance_country_code)
        end
        if !params[:description_of_contract_requirement].nil?
          params["descriptionOfContractRequirement"] = params[:description_of_contract_requirement]
          params.delete(:description_of_contract_requirement)
        end
        if !params[:piid].nil?
          params["PIID"] = params[:piid]
          params.delete(:piid)
        end
        if !params[:sort_by].nil?
          params["sortby"] = params[:sort_by]
          params.delete(:sort_by)
        end
        request = ""
        params.each do|key, value|
          request += key.to_s + "=" + value.to_s + "&"
        end
        get("fpds/fdps.php?datatype=X&#{request}")
      end
      
      def faads(params={}, options={})
        request = ""
        params.each do|key, value|
          request += key.to_s + "=" + value.to_s + "&"
        end
        get("faads/faads.php?datatype=X&#{request}")
      end
      
    end
  end
end