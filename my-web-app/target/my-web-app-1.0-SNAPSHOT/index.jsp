<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Calculator</title>
    <script>
        function calculate() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var operation = document.getElementById("operation").value;
            var result;
            switch (operation) {
                case "add":
                    result = num1 + num2;
                    break;
                case "subtract":
                    result = num1 - num2;
                    break;
                case "multiply":
                    result = num1 * num2;
                    break;
                case "divide":
                    if (num2 !== 0) {
                        result = num1 / num2;
                    } else {
                        result = "Cannot divide by zero!";
                    }
                    break;
                default:
                    result = "Invalid operation!";
            }

            document.getElementById("result").innerText = "Result: " + result;
        }
    </script>
</head>
<body>
    <h1>Simple Calculator</h1>
    <input type="number" id="num1" placeholder="First Number" required>
    <input type="number" id="num2" placeholder="Second Number" required>
    <select id="operation" required>
        <option value="add">Add</option>
        <option value="subtract">Subtract</option>
        <option value="multiply">Multiply</option>
        <option value="divide">Divide</option>
    </select>
    <button onclick="calculate()">Calculate</button>    
    <h2 id="result"></h2>
</body>
</html>