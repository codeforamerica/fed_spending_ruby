require 'helper'

describe FedSpending::Client::Api do

  before do
    @client = FedSpending::Client.new
  end
  
  describe ".fpds" do
    before do
      stub_get("fpds/fdps.php?datatype=X&detail=-1&state=AL").
        to_return(:status => 200, :body => fixture("fedspending_search_results.xml"))
    end
    
    it "Should return the correct item" do
      test = @client.fdps()
      a_get("fpds/fdps.php?datatype=X&detail=-1&state=AL").should have_been_made
      test.fedspendingSearchResults.data.record.totals.rank_among_states.should == "20"
    end
  end
    
    
  
end
