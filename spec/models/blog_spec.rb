require 'rails_helper'

RSpec.describe Blog, type: :model do
  let!(:blog) {create(:blog)}

  context "when validated" do

    context "when blog is valid" do
      let(:valid_blog) {build(:blog)}
      it {expect(valid_blog).to be_valid}
    end
    
    context "when title of blog is invalid" do
      let(:blog1) {build(:blog, title: nil)}
      let(:blog2) {build(:blog, title: '1')}
      let(:blog3) {build(:blog, title: '1' * 51)}

      it {expect(blog1).to_not be_valid}
      it {expect(blog2).to_not be_valid}
      it {expect(blog3).to_not be_valid}
    end
    
    context "when content_text of blog is invalid" do
      let(:blog1) {build(:blog, content_text: nil)}
      let(:blog2) {build(:blog, content_text: '1')}
      let(:blog3) {build(:blog, content_text: '1' * 1001)}

      it {expect(blog1).to_not be_valid}
      it {expect(blog2).to_not be_valid}
      it {expect(blog3).to_not be_valid}
    end
    
  end
  
end
