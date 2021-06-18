// To parse this JSON data, do
//
//     final orders = ordersFromJson(jsonString);

import 'dart:convert';

Orders ordersFromJson(String str) => Orders.fromJson(json.decode(str));

String ordersToJson(Orders data) => json.encode(data.toJson());

class Orders {
  Orders({
    this.order,
  });

  List<Order> order;

  factory Orders.fromJson(Map<String, dynamic> json) => Orders(
    order: List<Order>.from(json["Order"].map((x) => Order.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Order": List<dynamic>.from(order.map((x) => x.toJson())),
  };
}

class Order {
  Order({
    this.orderId,
    this.deliveryDate,
    this.quantity,
    this.orderType,
    this.orderValue,
    this.status,
    this.buyerInfo,
    this.supplierInfo,
    this.products,
    this.documents,
    this.payments,
    this.info,
    this.createdAt,
    this.updatedAt,
  });

  int orderId;
  String deliveryDate;
  String quantity;
  String orderType;
  String orderValue;
  String status;
  ErInfo buyerInfo;
  ErInfo supplierInfo;
  Products products;
  Documents documents;
  Payments payments;
  Info info;
  String createdAt;
  String updatedAt;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    orderId: json["OrderId"],
    deliveryDate: json["DeliveryDate"],
    quantity: json["Quantity"],
    orderType: json["OrderType"],
    orderValue: json["OrderValue"],
    status: json["Status"],
    buyerInfo: ErInfo.fromJson(json["buyer_info"]),
    supplierInfo: ErInfo.fromJson(json["supplier_info"]),
    products: Products.fromJson(json["products"]),
    documents: Documents.fromJson(json["documents"]),
    payments: Payments.fromJson(json["payments"]),
    info: Info.fromJson(json["info"]),
    createdAt: json["CreatedAt"],
    updatedAt: json["UpdatedAt"],
  );

  Map<String, dynamic> toJson() => {
    "OrderId": orderId,
    "DeliveryDate": deliveryDate,
    "Quantity": quantity,
    "OrderType": orderType,
    "OrderValue": orderValue,
    "Status": status,
    "buyer_info": buyerInfo.toJson(),
    "supplier_info": supplierInfo.toJson(),
    "products": products.toJson(),
    "documents": documents.toJson(),
    "payments": payments.toJson(),
    "info": info.toJson(),
    "CreatedAt": createdAt,
    "UpdatedAt": updatedAt,
  };
}

class ErInfo {
  ErInfo({
    this.companyName,
    this.contactName,
    this.phone,
    this.email,
    this.address,
    this.id,
  });

  String companyName;
  String contactName;
  String phone;
  String email;
  String address;
  int id;

  factory ErInfo.fromJson(Map<String, dynamic> json) => ErInfo(
    companyName: json["CompanyName"],
    contactName: json["ContactName"],
    phone: json["Phone"],
    email: json["Email"],
    address: json["Address"],
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "CompanyName": companyName,
    "ContactName": contactName,
    "Phone": phone,
    "Email": email,
    "Address": address,
    "id": id == null ? null : id,
  };
}

class Documents {
  Documents({
    this.images,
  });

  dynamic images;

  factory Documents.fromJson(Map<String, dynamic> json) => Documents(
    images: json["Images"],
  );

  Map<String, dynamic> toJson() => {
    "Images": images,
  };
}

class Info {
  Info({
    this.containers,
    this.weightLimit,
  });

  String containers;
  String weightLimit;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    containers: json["Containers"],
    weightLimit: json["WeightLimit"],
  );

  Map<String, dynamic> toJson() => {
    "Containers": containers,
    "WeightLimit": weightLimit,
  };
}

class Payments {
  Payments({
    this.status,
    this.terms,
  });

  String status;
  String terms;

  factory Payments.fromJson(Map<String, dynamic> json) => Payments(
    status: json["Status"],
    terms: json["Terms"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Terms": terms,
  };
}

class Products {
  Products({
    this.products,
  });

  List<Product> products;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    products: json["Products"] == null ? null : List<Product>.from(json["Products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Products": products == null ? null : List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Product {
  Product({
    this.id,
    this.name,
    this.quantity,
    this.unitPrice,
    this.thumbnail,
    this.images,
    this.supplierInfo,
  });

  int id;
  String name;
  String quantity;
  String unitPrice;
  String thumbnail;
  List<String> images;
  SupplierInfo supplierInfo;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["Id"],
    name: json["Name"],
    quantity: json["Quantity"],
    unitPrice: json["UnitPrice"],
    thumbnail: json["Thumbnail"],
    images: json["Images"] == null ? null : List<String>.from(json["Images"].map((x) => x)),
    supplierInfo: SupplierInfo.fromJson(json["SupplierInfo"]),
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
    "Quantity": quantity,
    "UnitPrice": unitPrice,
    "Thumbnail": thumbnail,
    "Images": images == null ? null : List<dynamic>.from(images.map((x) => x)),
    "SupplierInfo": supplierInfo.toJson(),
  };
}

class SupplierInfo {
  SupplierInfo({
    this.companyName,
    this.phone,
    this.contactName,
    this.id,
  });

  String companyName;
  String phone;
  String contactName;
  int id;

  factory SupplierInfo.fromJson(Map<String, dynamic> json) => SupplierInfo(
    companyName: json["CompanyName"],
    phone: json["Phone"],
    contactName: json["ContactName"],
    id: json["Id"],
  );

  Map<String, dynamic> toJson() => {
    "CompanyName": companyName,
    "Phone": phone,
    "ContactName": contactName,
    "Id": id,
  };
}
