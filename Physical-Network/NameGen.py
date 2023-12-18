from faker import Faker

def generate_names(num_names):
    fake = Faker()
    generated_names = [fake.name() for _ in range(num_names)]
    return generated_names

if __name__ == "__main__":
    # Specify the number of names you want to generate
    num_names_to_generate = 10

    # Generate names
    names = generate_names(num_names_to_generate)

    # Print the generated names
    print("Generated Names:")
    for name in names:
        print(name)
