from faker import Faker

faker = Faker('pt_BR')

def get_user_fake_account():
    account = {
        "email": faker.email(),
        "name":  faker.name(),
        "senha": faker.password,
    }
    return account

def get_user_fake_account_standard():
    account = {
        "email": "alessandro@gmail.com",
        "senha": "934925",
    }
    return account