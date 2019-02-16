require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "sign page" do
    before { visit signin_path}

    it { should have_content ('Sing In') }
    it { should have_title ('Sign In') }
  end
end
