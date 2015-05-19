API Documentation
===================


This is a lightweight web service, (REST interface), which provides an easy way to access the E4E blog. 
An API (Application programming interface) is a protocol intended to be used as an interface by software components to communicate with each other.

If you find any bug, or have any questions, or any suggestions please get in touch with us.

----------


API Endpoints
-------------

> - List Categories
> - Category details
> - List Articles
> - Article details


----------


List Categories
-------------------

**HTTP GET**

Endpoint     | Description
-------- | ---
http://e4eblog.herokuapp.com/api/v1/categories | List all categories
         
 


----------


        
**Response**

Key Name     | Description     | Example
-------- | --- | ---
id | Category ID | 1
 name | Category name | Tech
 description | Category description | Tech News
 important |  | false
 created_at | Date Category was created | 2015-05-19T15:52:16.725Z
 updated_at | Date Category was last updated | 2015-05-19T15:52:16.725Z
 
 ----------


Category Details
-------------------

**HTTP GET**

Endpoint     | Description
-------- | ---
http://e4eblog.herokuapp.com/api/v1/categories/ | Returns the information about a specific category
         
     


----------


    
             
**Endpoint Parameters**

Parameter     | Required     | Type     | Default     | Description
-------- | --- | --- | --- | ---
id | Yes | Integer | *null* | The Category ID
         
         


----------


**Response**

Key Name     | Description     | Example
-------- | --- | ---
category.id | Category ID | 1
 category.name | Category name | Tech
 category.description | Category description | Tech News
 category.important |  | false
 category.created_at | Date Category was created | 2015-05-19T15:52:16.725Z
 category.updated_at | Date Category was last updated | 2015-05-19T15:52:16.725Z
articles | Hash of articles with their info (See 'Article Details') that belong to the category | HASH
 


----------


 **Request Example**

    http://e4eblog.herokuapp.com/api/v1/categories/1


----------


**Response Example**

    {
        "category": {
            "id": 1,
            "name": "Tech",
            "description": "Tech News",
            "important": false,
            "created_at": "2015-05-19T15:51:59.809Z",
            "updated_at": "2015-05-19T15:51:59.809Z"
        },
        "articles": [
            {
                "id": 1,
                "title": "Title1",
                "subtitle": "Subtitle1",
                "main_image": {
                    "url": "http://image-url.com"
                },
                "date": "2015-05-10T00:00:00.000Z",
                "category_id": 1,
                "body": "Tech News Body",
                "author_id": 1,
                "created_at": "2015-05-19T15:58:37.928Z",
                "updated_at": "2015-05-19T15:58:37.928Z",
                "author_details": {
                    "id": 1,
                    "name": "Some Author",
                    "email": "sauthor@gmail.com",
                    "main_image": {
                        "url": "http://image-url.com"
                    },
                    "created_at": "2015-05-19T15:57:04.500Z",
                    "updated_at": "2015-05-19T15:57:04.500Z"
                }
            },
            {
                "id": 2,
                "title": "Title2",
                "subtitle": "Subtitle2",
                "main_image": {
                    "url": "http://image-url.com"
                },
                "date": "2015-05-12T00:00:00.000Z",
                "category_id": 1,
                "body": "Tech News Body",
                "author_id": 2,
                "created_at": "2015-05-19T15:58:59.086Z",
                "updated_at": "2015-05-19T15:58:59.086Z",
                "author_details": {
                    "id": 2,
                    "name": "Some Author2",
                    "email": "sauthor2@gmail.com",
                    "main_image": {
                        "url": "http://image-url.com"
                    },
                    "created_at": "2015-05-19T15:57:04.500Z",
                    "updated_at": "2015-05-19T15:57:04.500Z"
                }
            }
        ]
    }


----------

List Articles
-------------------

**HTTP GET**

Endpoint     | Description
-------- | ---
http://e4eblog.herokuapp.com/api/v1/articles | List all articles
         
  


----------


       
**Response**

Key Name     | Description     | Example
-------- | --- | ---
articles | Hash of articles with their details | HASH
 
 ----------


Article Details
-------------------

**HTTP GET**

Endpoint     | Description
-------- | ---
http://e4eblog.herokuapp.com/api/v1/articles/ | Returns the information about a specific article
         
     


----------


    
             
**Endpoint Parameters**

Parameter     | Required     | Type     | Default     | Description
-------- | --- | --- | --- | ---
id | Yes | Integer | *null* | The Article ID
         
         


----------


**Response**

Key Name     | Description     | Example
-------- | --- | ---
id | Article ID | 1
title | Article title | Title1
subtitle | Article subtitle | Subtitle1
main_image.url | Article image URL | http://image-url.com
date | Article publish date | 2015-05-10T00:00:00.000Z
category_id | Article's Category ID | 1
body | Article body | Some body 
author_id | Article's Author ID | 1  
created_at | Date Article was created | 2015-05-19T15:58:37.928Z  
updated_at | Date Article was last updated | 2015-05-19T15:58:37.928Z  
author_details | Hash containing the author's details | HASH  
category_details | Hash containing the category details | HASH  


----------


 **Request Example**

    http://e4eblog.herokuapp.com/api/v1/articles/1


----------


**Response Example**

        {
        "article": {
            "id": 1,
            "title": "Title1",
            "subtitle": "Subtitle1",
            "main_image": {
                "url": "http://image-url.com"
            },
            "date": "2015-05-10T00:00:00.000Z",
            "category_id": 1,
            "body": "Tech News Body",
            "author_id": 1,
            "created_at": "2015-05-19T15:58:37.928Z",
            "updated_at": "2015-05-19T15:58:37.928Z",
            "author_details": {
                "id": 1,
                "name": "Some Author",
                "email": "sauthor@gmail.com",
                "main_image": {
                    "url": "http://image-url.com"
                },
                "created_at": "2015-05-19T15:57:04.500Z",
                "updated_at": "2015-05-19T15:57:04.500Z"
            },
            "category_details": {
                "id": 1,
                "name": "Tech",
                "description": "Tech News",
                "important": false,
                "created_at": "2015-05-19T15:51:59.809Z",
                "updated_at": "2015-05-19T15:51:59.809Z"
            }
        }
    }