FactoryBot.define do

  factory :user do
    name                  {"たろう"}
    slack                 {"slack"}
    email                 {"example@gmail.com"}
    password              {"0000000a"}
    password_confirmation {"0000000a"}
    period                {60}
    style                 {1}
    team_id               {"A"}
    output_times          {0}
    on_off                {0}
    admin                 {0}
  end

end