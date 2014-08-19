require 'spec_helper'

describe NavCell, type: :cell do

  context 'cell rendering' do
    context 'rendering header' do
      subject { render_cell(:nav, :header) }

      it { is_expected.to have_selector('h1', text: 'Nav#header') }
      it { is_expected.to have_selector('p', text: 'Find me in app/cells/nav/header.html') }
    end

    context 'rendering footer' do
      subject { render_cell(:nav, :footer) }

      it { is_expected.to have_selector('h1', text: 'Nav#footer') }
      it { is_expected.to have_selector('p', text: 'Find me in app/cells/nav/footer.html') }
    end
  end

end
