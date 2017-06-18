#encoding:utf-8
from zhanglei_02.class_dog import Doggie


class Dog(object):
    def __init__(self,name,clouse):
        self.name=name
        self.clouse=clouse
        
    def swim(self):
        print "I see a %s" % self.clouse,self.name ,". It is swimming."
    
    def eat(self):
        print "a ",self.clouse,self.name,"is eating."
        
    def drink(self):
        print "a ",self.clouse,self.name,"is drinking."
        
if __name__ == "__main__":
    dog1 = Dog("hua", "red")
    dog1.eat()
    dog1.drink()
    dog1.swim()

    dog2 = Dog("hei", "black")
    dog2.eat()
    dog2.drink()
    dog2.swim()

    
    dog3 = Doggie("xiaoming","yellow")
    dog3.eat()
    dog3.drink()
    dog3.swim()