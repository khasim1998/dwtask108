%dw 2.0
output application/json
var employee=[
 {"name":"reva","salary":10000,"age":20,"dept":"IT"},
 {"name":"sai","salary":70000,"age":27,"dept":"physics"},
 {"name":"mala","salary":80000,"age":22,"dept":"science"},
 {"name":"rishi","salary":5000,"age":26,"dept":"IT"}
]
---
employee map (value,index) -> {
 "eligible":value.age match{
 case age if(age>25) -> "eligible for credit "
 case age if(age<=25) -> "not eligible for credit" 
 },
 "name":value.name,
 "starType":value.name match{
 case str if(str=="reva" or str=="mala") -> "superstar"
 else -> "star"
 }
}
