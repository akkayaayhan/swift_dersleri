import UIKit

var greeting = "Hello, playground"

var films=["testere","kill bill","arog"]

var allList=["1",1,true,"ayhan",2.5] as [Any] //karışık liste

//as -> casting
//any -> any object

allList[0]
allList[1]

films[0].uppercased()
//karışık listelerde metotlar kullanılamaz
films.count
films[films.count-1]//son elemanı verir.
films.last//son elemanı verir
films.sort()//sıralar


//Set
//Set diziden farkı
//1. index olayı yoktur
//2. hazır metotları yoktur
//3. sırasızdırlar
//4. aynı elemanlar sadece 1 kere yazılır
var mySet : Set=[1,2,3,4,5,5,2,1,4]
var myStringSet : Set = ["a","b","a","e"]

var myList=[1,2,3,4,2,5,7,4,2,1,3]
var mySet2 = Set(myList) //Liste set yapısına döndü
print(myList)
print(mySet2)


var set1 : Set = [1,2,3]
var set2 : Set = [4,5,6]

var set3 = set1.union(set2)//set leri birleştirir


//Sözlükler

var myDict=["Door":"Kapı","Table":"Masa","Open":"Açık"]
myDict["Door"]
myDict["Close"]="Kapatmak"
myDict

















