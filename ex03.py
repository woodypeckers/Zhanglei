class Student(object):
    def __init__(self, name, age):
        self.__name = name
        self.__age = age

    def detail(self):
        print "my name is :", self.__name
        print "my age is :", self.__age

    def get_name(self):
        return self.__name

    def get_age(self):
        return self.__age

    def set_name(self, name):
        self.__name = name

    def set_age(self, age):
        self.__age = age


class PrimaryStudent(Student):

    def __init__(self, name, age, sex):
        self.__name = name
        self.__age = age
        self.__sex = sex

    def lol(self):
        print self.__name, "is doing LOL"

if __name__=="__main__":

    Sam=Student("Sam",27)
    print Sam.get_name()
    print Sam.get_age()
    #print Sam.__name
    #print self.__age
    Sam.set_name("Amad")
    print Sam.get_name()
    stu1=PrimaryStudent("xiaoming",7, "male")
    stu1.lol()
    pass