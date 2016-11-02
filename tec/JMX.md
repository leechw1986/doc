Java Management Extensions
=========

# Defined

#### Object Names

```

Every JMX MBean has an Object Name.
It is very important to choose consistent[一致] and usable[有用] Object Names as described[描述] here.
Bear in mind [记住] that the client interacting[影响] with your model might be showing these Object Names directly[直接] to a human (for example, it is a JMX-aware console);
  or it might be a program that is accessing MBeans in your model whose names you have clearly defined.
Also, of course, MBeans should be named consistently across the model and, as far as possible, between models.

```

#### Object Name Syntax[语法]
- Object Name (规范)

```
An Object Name is an instance of javax.management.ObjectName.
实现javax.management.ObjectName

An Object Name is either the name of an MBean, or it is a pattern, potentially matching the names of many MBeans.
ObjectName 可以是绝对匹配,也可以是正则匹配

It looks like this:
domain: key-property-list
For example:
com.sun.someapp:type=Whatsit,name=25

Here, domain is an arbitrary[任意] string.
If the domain is empty, it implies the default domain for the MBean Server where the Object Name is used.
domain 为空获取默认的MBEAN

If the domain contains at least one * or ? character then the Object Name is a pattern. These characters cannot be used in the name of an MBean, only when matching MBeans.
包含* or ? 为正则

The domain cannot contain the colon character ( :).
```
- key-property-list

```
The key-property-list in an MBean name contains one or more key properties.
A key property looks like name= value,
for example type=Thread.
When there is more than one key property, they are separated with commas, for example type=Thread,name=DGC.

Spaces are significant[有意义] everywhere in an Object Name.
Do not write type=Thread, name=DGC (with a space after the comma) because it will be interpreted as having a key called "  name", with a leading space in the name.
空格有意义
Object Names are case sensitive.
区分大小写

The order of key properties is not significant. There is no difference between type=Thread,name=DGC and name=DGC,type=Thread.
无序

The set of characters in a key is limited. It is recommended to stick to legal Java identifiers.
The set of characters in a value is also limited. If special characters may occur, it is recommended that the value be quoted, using ObjectName.quote. If the value for a given key is sometimes quoted, then it should always be quoted. By default, if a value is a string (rather than a number, say), then it should be quoted unless you are sure that it will never contain special characters. Here are some examples of Object Names containing quoted values:
com.sun.someapp:type=Whatsit,name="25"
com.sun.someapp:type=Whatsit,name="25,26"
The second example would be illegal without quoting.
符合JAVA规范的KEY

In a pattern, the key-property-list can have the same form as just described; or it can be a single * ; or it can be empty (equivalent to a *); or it can be a list followed by ,*. These forms match Object Names that have the exact key properties given (if any) plus any arbitrary other key properties. For example, *:type=Thread,* matches somedomain:type=Thread and somedomain:type=Thread,name=DGC.

```

- Object Name Conventions(协议)

```
Object Names should be predictable(可预见).
This means that if you know that there is going to be an MBean representing(表现) a certain object, then you should be able to know what its name will be.
The name should not contain properties that are not an inherent(本来的) part of the object's identity.
The name of the same object should not change between different executions of the application, so for example it should not contain items like a "JVM id" or the "MBean Server Id" that will change with each execution.
(The concept(观念) of "the same object" is not always clear or meaningful, but when it is, the same object should always have the same name.)
命名唯一

The domain part of an Object Name should start with a Java package name. This prevents(阻止) collisions(碰撞) between MBeans coming from different subsystems. There might be additional text after the package name. Examples:

com.sun.someapp:type=Whatsit,name=5
com.sun.appserv.Domain1:type=Whatever

The domain should not contain the character slash ( /). That character is reserved(保留) for MBean Server hierarchies(等级制) ("cascading")(瀑布). This will be detailed further in a later version of this document.

Every Object Name should contain a type= key property. This property should be different for every object type in a given domain.
JSR 77 (J2EE management) defines a j2eeType= key property with essentially the same semantics.
Since JSR 77 allows arbitrary extra keys in addition to the standard ones it defines, it is possible to add a type= key in addition to the j2eeType= one.
Note that allowing extra keys like this contradicts the predictability requirement stated above and is not recommended for new JMX models.
It makes writing non-interactive clients unnecessarily difficult (you always have to query before accessing any object to discover its actual name).

Every Object Name with a given type should have the same set of key properties with the same syntax and semantics for their values.

If there can only be one instance of a given type in a given domain, there should not usually be any other key properties than type.

If there can be several instances of a given type, they can be differentiated either by being in different domains or by further key properties. Most often, domains are relatively fixed, and variable parts of names are in key properties.

The most usual key property in addition to type is name. Often, type=X,name=Y is enough to name an MBean. Some JMX-aware consoles are able to display this form of name using a shorthand that is easier to read than other names.

Sometimes it is useful to define additional properties as well as name, to facilitate searches using patterns as described above. For example, there might be a category or group property, allowing patterns such as:

com.sun.someapp:group=configuration,*
```
