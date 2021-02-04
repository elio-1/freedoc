# FreeDoc - Réserve ton docteur :rocket:

## Le pitch
Implementer des bases de données dans des apps avec Rails

-------

### Telecharger le repo

```
$ git clone https://github.com/elio75006/freedoc.git
```

### Installer la gem Faker et Bundle install

Cette application utilise la gem Faker (https://github.com/faker-ruby/faker) pour générer la seed
```
$ gem install faker
```
Ensuite 
```
$ bundle install
```
Créer la base de donnée :
```
$ rake db:reset db:seed
```

### Test
```
$ rails console
```
Vous pouvez faire des tests comme par exemple :
```
2.7.1 :001 > a = Appointment.create(doctor_id: 2, patient_id: 1)
# Crée un rdv
2.7.1 :001 > a.doctor
# Renvera la ligne du docteur ayant pour id 2
```


