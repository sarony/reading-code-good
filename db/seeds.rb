# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

languages = Language.create([
  {
    name: "ruby",
    id: 1
  },
  {
    name: "python",
    id: 2
  },
  {
    name: "php",
    id: 3
  }
])

faqs = Faq.create(
  [
    {
      question: "What is a code club?",
      answer: "It's a book club for code!"
    },
    {
      question: "How do I start one?",
      answer: "Find a meetup near you!"
    }
  ]
)

loc = Loc.create(
  [
    {
      range: "~100",
      id: 1
    },
    {
      range: "100-500",
      id: 2
    }
  ]
)

code_bases = CodeBase.create(
  [
    {
      name: "GoogleBooks",
      link: "https://github.com/zeantsoi/GoogleBooks",
      language_id: 1,
      loc_id: 1
    },
    {
      name: "Dotenv",
      link: "https://github.com/bkeepers/dotenv",
      language_id: 1,
      loc_id: 1
    },
    {
      name: "Figaro",
      link: "https://github.com/laserlemon/figaro",
      language_id: 1,
      loc_id: 2
    },
    {
      name: "Omniauth-Meetup",
      link: "https://github.com/tapster/omniauth-meetup",
      language_id: 1,
      loc_id: 1
    },
    {
      name: "Country Select",
      link: "https://github.com/37signals/country_and_region_select",
      language_id: 1,
      loc_id: 1
    },
    {
      name: "Gravatar Image Tag",
      link: "https://github.com/mdeering/gravatar_image_tag",
      language_id: 1,
      loc_id: 1
    }
  ]
)






