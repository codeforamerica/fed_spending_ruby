module FedSpending
  class Client
    module Api
      
      # Allows access to modified FPDS data on Federal contracts.
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.fedspending.org/api_fpds.php
      # @example
      #   fdps({:detail => -1, :state => 'AL'})
      
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
        get("fpds/fdps.php?datype=X&#{request}")
      end
      
      # Allows access to modified FAADS data on Federal contracts.
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.fedspending.org/api_faads.php
      # @example
      #   faads({:detail => -1, :recipient_name => 'Smith', :fiscal_year => 2006})
      
      def faads(params={}, options={})
        if !params[:sort_by].nil?
          params["sortby"] = params[:sort_by]
          params.delete(:sort_by)
        end
        request = ""
        params.each do|key, value|
          request += key.to_s + "=" + value.to_s + "&"
        end
        get("faads/faads.php?datype=X&#{request}")
      end
      
      # Allows access to modified recovery data on Federal contracts.
      # @param params [Hash] The parameters for the lookup
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.fedspending.org/api_rcv.php
      # @example
      #   rcv({:detail => -1, :recipient_state => 'IA'})
      
      def rcv(params={}, options={})
        if !params[:sort_by].nil?
          params["sortp"] = params[:sort_by]
          params.delete(:sort_by)
        end
        if !params[:recipient_state].nil?
          params["recipient_st"] = params[:recipient_state]
          params.delete(:recipient_state)
        end
        request = ""
        params.each do|key, value|
          request += key.to_s + "=" + value.to_s + "&"
        end
        get("rcv/rcv.php?datype=X&#{request}")
      end
      
    end
  end
end
