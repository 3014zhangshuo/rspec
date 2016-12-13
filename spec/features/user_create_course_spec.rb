require "rails_helper"

describe "user create course", :type => :feature do
  scenario "valid" do
    course = build_stubbed(:course)
    course = Course.create(title:"title", description:"description")
    expect(page).to have_text(course.title)
  end
  scenario "invalid" do
  course = Course.create "", ""
    expect(page).to have_text("Add a course")
  end
end
