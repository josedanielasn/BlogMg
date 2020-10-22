require 'rails_helper'

RSpec.describe Comment, type: :model do
  let!(:blog) {create(:blog)}

  context "when validate" do

    context "when comment is valid" do
      let(:valid_comment) {build(:comment)}
      it {expect(valid_comment).to be_valid}
    end
    
    context "when title is invalid" do
      let(:comment1) {build(:comment, commenter: nil)}
      let(:comment2) {build(:comment, commenter: '1')}
      let(:comment3) {build(:comment, commenter: '1' * 31)}

      it {expect(comment1).to_not be_valid}
      it {expect(comment2).to_not be_valid}
      it {expect(comment3).to_not be_valid}
    end
    
    context "when title is invalid" do
      let(:comment1) {build(:comment, comment_text: nil)}
      let(:comment2) {build(:comment, comment_text: '1')}
      let(:comment3) {build(:comment, comment_text: '1' * 301)}

      it {expect(comment1).to_not be_valid}
      it {expect(comment2).to_not be_valid}
      it {expect(comment3).to_not be_valid}
    end
    
  end
  
end
