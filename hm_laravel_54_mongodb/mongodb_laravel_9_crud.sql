/*
 Navicat Premium Data Transfer

 Source Server         : MongoDB
 Source Server Type    : MongoDB
 Source Server Version : 60008
 Source Host           : localhost:27017
 Source Schema         : laravel_9_crud

 Target Server Type    : MongoDB
 Target Server Version : 60008
 File Encoding         : 65001

 Date: 31/07/2023 16:07:45
*/


// ----------------------------
// Collection structure for books
// ----------------------------
db.getCollection("books").drop();
db.createCollection("books");

// ----------------------------
// Documents of books
// ----------------------------
db.getCollection("books").insert([ {
    _id: ObjectId("64c7797fc59d701f52075cb4"),
    name: "Toán",
    detail: "Lớp 6",
    "updated_at": ISODate("2023-07-31T09:06:07.596Z"),
    "created_at": ISODate("2023-07-31T09:06:07.596Z")
} ]);
db.getCollection("books").insert([ {
    _id: ObjectId("64c77992c59d701f52075cb5"),
    name: "Ngữ văn",
    detail: "lớp 6",
    "updated_at": ISODate("2023-07-31T09:06:26.337Z"),
    "created_at": ISODate("2023-07-31T09:06:26.337Z")
} ]);

// ----------------------------
// Collection structure for posts
// ----------------------------
db.getCollection("posts").drop();
db.createCollection("posts");

// ----------------------------
// Documents of posts
// ----------------------------
db.getCollection("posts").insert([ {
    _id: ObjectId("64c0c10b7a05000089002e74"),
    name: "crud_tutorial",
    detail: "this is details"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c77384c59d701f52075cb2"),
    name: "Nguyen Minh Hieu",
    detail: "16t KG",
    "updated_at": ISODate("2023-07-31T08:40:36.465Z"),
    "created_at": ISODate("2023-07-31T08:40:36.465Z")
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c773b9c59d701f52075cb3"),
    name: "Nguyen Minh Hieu",
    detail: "16t KG",
    "updated_at": ISODate("2023-07-31T08:41:29.36Z"),
    "created_at": ISODate("2023-07-31T08:41:29.36Z")
} ]);
