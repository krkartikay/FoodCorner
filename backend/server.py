from flask import *

app = Flask(__name__)
app.secret_key = "dummy secret key"


@app.route("/api/products/<string:vendor>")
def products(vendor):
    if vendor == "NESCAFE":
        return jsonify(
            {
                "data":
                {
                    "drinks": [
                        {"name": "Coca-Cola", "price": 20, "stock": 10,"pid": 1},
                        {"name": "Maaza", "price": 25, "stock": 2,"pid": 2},
                        {"name": "Ice Tea", "price": 20, "stock": 10,"pid": 3},
                    ],
                    "snacks": [
                        {"name": "Burger", "price": 25, "stock": 4, "pid": 4},
                        {"name": "Cheese Burger", "price": 35, "stock": 3, "pid": 5},
                        {"name": "Lays", "price": 20, "stock": 10, "pid": 6},
                    ]
                }
            }
        )
    else:
        return jsonify({"errors": "NO_SUCH_VENDOR"})


app.run(debug=True)
