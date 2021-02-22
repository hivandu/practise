class Weapon:
    def __init__(self,name,damage):
        '''武器基础属性'''
        self.name = name
        self.damage = damage
        
    def take_weapon(self,hro):
        '''将武器赋值给英雄'''
        print(f'将武器{self.name}装备给英雄{hro.name}')
        hro.damage+=self.damage
        print(f'{hro.name}的攻击力变为{hro.damage}')
        