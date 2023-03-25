hero1 = Hero.create(name: "Clark kent",super_name: 'Superman')
hero2 = Hero.create(name: "Bruce Wayne", super_name: 'Batman')
hero3 = Hero.create(name: "Diana Prince", super_name: 'Wonder Woman')

power1 = Power.create(name: 'Flight', description: 'Ability to fly through the air')
power2 = Power.create(name: 'Super Strength', description: 'Ability to lift heavy objects and destroy obstacles')
power3 = Power.create(name: 'Invisibility', description: 'Ability to become invisible to the naked eye')

HeroPower.create(hero_id: hero1, power_id: power1, strength: 'Strong')
HeroPower.create(hero_id: hero1, power_id: power2, strength: 'Strong')
HeroPower.create(hero_id: hero2, power_id: power2, strength: 'Average')
HeroPower.create(hero_id: hero2, power_id: power3, strength: 'Weak')
HeroPower.create(hero_id: hero3, power_id: power1, strength: 'Average')
HeroPower.create(hero_id: hero3, power_id: power3, strength: 'Strong')          