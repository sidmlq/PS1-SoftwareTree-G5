// 
// JDX (version: 05.03) reverse engineered class
// JDX is a product of Software Tree, LLC.
// 
// DBURL=jdbc:mysql://localhost:3306/test, Database=MySQL, Version: 8.0.37
// Date: Mon Jun 17 18:12:42 IST 2024
// 
package com.softwaretree.jdxmysqlsakilaexample.reversed.json.model;

import org.json.JSONException;
import org.json.JSONObject;

import com.softwaretree.jdx.JDX_JSONObject;

public class Dept extends JDX_JSONObject {
    public  Emp[]  listEmp;

    public Dept() {
        super();
    }

    public Dept(JSONObject jsonObject) throws JSONException {
        super(jsonObject);
    }
}
