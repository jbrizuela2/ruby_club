# No arguments
def greet
  p "Hi"
end

greet

# Mandatory argument
def greet(name)
  p "Hi #{name}"
end

greet("Juan")

# Optional argument
def greet(name = "Stranger")
  p "Hi #{name}"
end

greet
greet("Pablo")

# Named argument
def greet(time: "morning", name: "Stranger")
  p "Good #{time} #{name}"
end

greet
greet(time: "Evening", name: "Luis")

# Sponged arguments
def greet(*names)
  p "Hi #{names.join(",")}"
end

greet("Maria", "Guadalupe", "Rosario")

# OUTPUT

# "Hi"
# "Hi Juan"
# "Hi Stranger"
# "Hi Pablo"
# "Good morning Stranger"
# "Good Evening Luis"
# "Hi Maria,Guadalupe,Rosario"