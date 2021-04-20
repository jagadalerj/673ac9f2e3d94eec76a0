INDEX:
URL: http://localhost:3000/api/users
METHOD: GET
RESPONSE: {"users":[{"id":1,"first_name":"albert","last_name":"einstein","email":"ae@relativity.com"},{"id":2,"first_name":"marie","last_name":"qurie","email":"mc@radiation.com"},{"id":3,"first_name":"issac","last_name":"newton","email":"in@gravity.com"},{"id":4,"first_name":"galileo","last_name":"galilei","email":"gg@astronomy.com"}]}

--------------------------------------------------------------------------------


SHOW:
URL: http://localhost:3000/api/users/1
METHOD: GET
RESPONSE: {"user":{"id":1,"first_name":"albert","last_name":"einstein","email":"ae@relativity.com"}}

--------------------------------------------------------------------------------------------------
typeahed: 

URL: http://localhost:3000/api/typeahed/iss 
METHOD: GET
RESPONSE: {
  "result": [{
    "id": 3,
    "first_name": "issac",
    "last_name": "newton",
    "email": "in@gravity.com"
  }]
}

---------------------------------------------------------------------------------------------

UPDATE
URL: http://localhost:3000/api/users/1
METHOD :PUT/PATCH
BODY: {"user": {"first_name": "albert1"}}
RESPONSE:  {"user":{"id":1,"first_name":"albert1","last_name":"einstein","email":"ae@relativity.com"}}

-------------------------------------------------------------------------------------------------

CREATE
URL: http://localhost:3000/api/users
METHOD: POST
BODY: {"user": {"first_name": "rupchand",
"last_name": "jagadale",
"email": "r.jagadale%40gmail.com"}}
RESPONSE: {"user":{"id":1,"first_name":"rupchand","last_name":"jagadale","email":"r.jagadale@gmail.com"}}


