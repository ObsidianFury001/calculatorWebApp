<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Calculator.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Razer Calculator</title>
    <link rel="stylesheet" href="style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    <script type="text/javascript"></script>
</head>
<body class="page">
        <form id="form1" runat="server">
        <center>
         <div class="calculator">
             <h1 class="active text-info">Razer Calculator</h1>
                <div class="row">
                <div class="col">
                    <div class="screen">
                        <input id="result" class ="result" type="text" value="0" />
                    </div>
                </div>
                </div>
                <div class="controls">
                    <div class="control-row">
                            <input id="btn-1" class="button" type="button" onclick="display(1);" value="1" />
                            <input id="btn-2" class="button" type="button" onclick="display(2);" value="2" />
                            <input id="btn-3" class="button" type="button" onclick="display(3);" value="3" />
                            <input id="add" class="button" type="button" onclick="display('+');" value="+" />
                    </div>
                    <div class="control-row">
                            <input id="btn-4" class="button" type="button" onclick="display(4);"  value="4" />
                            <input id="btn-5" class="button" type="button" onclick="display(5);"  value="5" />
                            <input id="btn-6" class="button" type="button" onclick="display(6);"  value="6" />
                            <input id="sub" class="button" type="button" onclick="display('-');"  value="-" />
                    </div>
                    <div class="control-row">
                            <input id="btn-7" class="button" type="button" onclick="display(7);" value="7" />
                            <input id="btn-8" class="button" type="button" onclick="display(8);" value="8" />
                            <input id="btn-9" class="button" type="button" onclick="display(9);" value="9" />
                            <input id="mul" class="button" type="button" onclick="display('*');" value="*" />
                    </div>
                    <div class="control-row">
                            <input id="btn-0" class="button" type="button" onclick="display(0);" value="0" />
                            <input id="btn-." class="button" type="button" onclick="display('.');" value="." />
                            <input id="btn-cal" class="button" type="button" onclick="calculate()" value="=" />
                            <input id="div" class="button" type="button" onclick="display('/');" value="/" />
                    </div>
                    <div class="control-row">
                            <input id="clear" class="button-clear" type="button" onclick="cls();" value="Clear" />
                    </div>
                </div>
            </div>
        </center>
    </form>
</body>
<script type="text/javascript">

    var screen = document.querySelector(".result");
    function display(value) {
        var val = screen.value;
        if (screen.value == 0)
            screen.value = value;
        else
            screen.value += value;
    }
    function cls(value) {
        screen.value = 0;
    }
    function calculate() {
        
        if (!eval(screen))
            screen.value = "Invalid Input";
        else
            screen.value = eval(screen.value);
    }
</script>
</html>
