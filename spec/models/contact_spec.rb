#require "spec_helper"
require "rails_helper"


describe Contact do 
	it { should validate_presence_of (:email) } 
end