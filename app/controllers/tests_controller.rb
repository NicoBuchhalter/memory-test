class TestsController < InheritedResources::Base

  def new
    @test = Test.new
    @templates = Template.all.order(updated_at: :desc)
    render :new
  end

  def create
    template = Template.find(test_params[:template_id])
    error_indexes = []
    evaluation_splitted = test_params[:evaluation].split
    template.content.split.each_with_index do |element, index|
      error_indexes << index if evaluation_splitted[index] != element
    end
    test = Test.create!(test_params.merge!(error_indexes: error_indexes))
    redirect_to test_path(test.id)
  end

  def show
    @test = Test.find(params[:id])
    render :show
  end

  private

    def test_params
      params.require(:test).permit(:template_id, :evaluation, :user_id)
    end
end
