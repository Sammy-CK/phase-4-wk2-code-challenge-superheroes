hero1 = Hero.create(name: "Clark kent",super_name: 'Superman')
hero2 = Hero.create(name: "Bruce Wayne", super_name: 'Batman')
hero3 = Hero.create(name: "Diana Prince", super_name: 'Wonder Woman')

power1 = Power.create(name: 'Flight', description: 'Ability to fly through the air')
power2 = Power.create(name: 'Super Strength', description: 'Ability to lift heavy objects and destroy obstacles')
power3 = Power.create(name: 'Invisibility', description: 'Ability to become invisible to the naked eye')
power4 = Power.create(name: 'Telekinesis', description: 'Ability to move objects with the power of the mind')
power5 = Power.create(name: 'Time Travel', description: 'Ability to travel through time')
power6 = Power.create(name: 'Shape-Shifting', description: 'Ability to change physical form')

HeroPower.create(hero_id: hero1.id, power_id: power2.id, strength: 'Strong')
HeroPower.create(hero_id: hero2.id, power_id: power3.id, strength: 'Weak')
HeroPower.create(hero_id: hero3.id, power_id: power1.id, strength: 'Average')
