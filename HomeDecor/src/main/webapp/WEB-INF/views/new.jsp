<html>
<head>
    <title>Convert JSON Data to HTML Table Example</title>
    <style>
        table, th, td 
        {
            margin:20px 0;
            border:solid 1px #333;
            padding:4px 8px;
            font:20px Times New Roman;
        }
        th {
            font-weight:bold;
        }
    </style>
</head>
<body>
    <input type="button" onclick="CreateTableFromJSON()" value="Create" />
    <div id="showData"></div>
</body>
<script>
    function CreateTableFromJSON() {
        var Products = [
	{
    "Pid": "1",
    "Name": "Dining Table",
    "Price": "Rs. 20,000",
    "Image": "",
    "Buttons ":"View More"
	},
	{
    
    "Pid": "2",
    "Name": "Beds",
    "Price": "Rs. 30,000",
    "Image": ""
	},
	{
    "Pid": "3",
    "Name": "Dining Table",
    "Price": "Rs. 27,000",
    "Image": ""
	}
    
 ]
    
        // EXTRACT VALUE FOR HTML HEADER. 
        // ('Book ID', 'Book Name', 'Category' and 'Price')
        var col = [];
        for (var i = 0; i < Products.length; i++) {
            for (var key in Products[i]) {
                if (col.indexOf(key) === -1) {
                    col.push(key);
                }
            }
        }

        // CREATE DYNAMIC TABLE.
        var table = document.createElement("table");

        // CREATE HTML TABLE HEADER ROW USING THE EXTRACTED HEADERS ABOVE.

        var tr = table.insertRow(-1);                   // TABLE ROW.

        for (var i = 0; i < col.length; i++) {
            var th = document.createElement("th");      // TABLE HEADER.
            th.innerHTML = col[i];
            tr.appendChild(th);
        }

        // ADD JSON DATA TO THE TABLE AS ROWS.
        for (var i = 0; i < Products.length; i++) {

            tr = table.insertRow(-1);

            for (var j = 0; j < col.length; j++) {
                var tabCell = tr.insertCell(-1);
                tabCell.innerHTML = Products[i][col[j]];
            }
        }

        // FINALLY ADD THE NEWLY CREATED TABLE WITH JSON DATA TO A CONTAINER.
        var divContainer = document.getElementById("showData");
        divContainer.innerHTML = "";
        divContainer.appendChild(table);
        }
</script>
</html>