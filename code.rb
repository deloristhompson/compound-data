people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}

# How many people are in people (excluding children)?
how_many = 0
people.size.times do |how|
  how_many += 1
end
puts "Number of people (excluding children): #{how_many}"

# What are the names of all the people?
print "\nNames of all people:\n"
people.each do |names|
  puts "#{names[0]}"
end

# What is the phone number of Alia O'Conner PhD?
puts "Alia O'Conner PhD phone number: #{people["Alia O'Conner PhD"]["phone"]}"
# How many children does Brian Heller have?
children = 0
 people["Brian Heller"]["children"].each do |kids|
   children += 1
 end
puts "Brian Heller has: #{children} kid/kids"

# What company does Dr. Adela DuBuque work for?
puts "Dr. Adela DuBuque company: #{people["Dr. Adela DuBuque"]["company"]}"

# What are the names of the people who have children?
print "\nNames of people who have children:\n"
people.each do |names|
  if names[1].include?("children")
    puts "#{names[0]}"
  end
end

# What are the names of the people who do not have children?
print "\nNames of people who don't have children:\n"
people.each do |names|
  if !names[1].include?("children")
    puts "#{names[0]}"
  end
end

# What is Brian Heller's child's name?
print "\nBrian Heller's child's name: "
puts people["Brian Heller"]["children"]

# What is Maryse Johns' first child's name?
print "\nMaryse Johns' first child's name: "
puts people["Maryse Johns"]["children"][0]

# Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?
people["Dr. Adela DuBuque"]["children"] = "Tomas"
print "\nDr. Adela DuBuque's baby: "
puts people["Dr. Adela DuBuque"]["children"]

sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# How many people are in the first set of people?
puts "\nPeople in first set: #{sets_of_people[0].size}"

# How many people are in the second set of people?
puts "\nPeople in the second set: #{sets_of_people[1].size}"

# What is Ruby Hessel's phone number?
puts "\nRuby Hessel's #: #{sets_of_people[0]["Ruby Hessel"]["phone"]}"

# What are the names of Dr. Sigrid Nader's children?
print "\nDr. Sigrid Nader's children:\n"
puts sets_of_people[1]["Dr. Sigrid Nader"]["children"]

# What is Bernard Feil's child's name?
print "\nBernard Feil's child's name: "
puts sets_of_people[0]["Bernard Feil"]["children"]

# What company does Casandra Kemmer work for?
print "\nCasandra Kemmer works for: "
puts sets_of_people[0]["Casandra Kemmer"]["company"]

# Who are all the people in the first set that have an m in their Company names?
print "\nPeople in first set that have an m in their Company names:\n"
sets_of_people[0].each do |names|
  # puts names[1]["company"]
  if names[1]["company"].downcase.include?("m")
    puts names[0]
  end
end
