greet <- function(name,age){
    if (age>0 && age<=11){
        print(paste("hello",name, "you are a child" ))
    }
    else if (age>=12 && age<=19) {
       print(paste("hello",name, "you are a teenager" ))
    }
    else if (age>=20 && age<=29) {
       print(paste("hello",name, "you are a young adult" ))
    }
    else if (age>=30 && age<=60) {
       print(paste("hello",name, "you are an adult" ))
    }
    else {
       print(paste("hello",name, "you are a senior adult" ))
    }
}

greet("Ali",19)

