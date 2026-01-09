<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
@page {
    size: A4 landscape;
    margin: 15mm;
}

body {
    margin: 0;
    padding: 0;
    background: #f5c97a;
    font-family: "Times New Roman", serif;
}

.cert-wrapper {
    width: 100%;
    height: 100%;
    background: #ffffff;
    border: 12px solid #f1c27d;
}

.cert-inner {
    border: 4px solid #e0b25c;
    padding: 30px;
}

.title {
    font-size: 48px;
    letter-spacing: 3px;
    text-align: center;
    font-weight: bold;
    color: #333;
}

.subtitle {
    text-align: center;
    font-size: 18px;
    letter-spacing: 2px;
    color: #d4a04c;
    margin-top: 8px;
}

.presented {
    text-align: center;
    font-size: 14px;
    letter-spacing: 1px;
    margin-top: 30px;
    color: #777;
}

.name {
    text-align: center;
    font-size: 42px;
    font-style: italic;
    margin: 25px 0;
    border-bottom: 1px solid #333;
    display: inline-block;
    padding-bottom: 5px;
}

.description {
    text-align: center;
    font-size: 16px;
    width: 70%;
    margin: auto;
    line-height: 1.6;
    color: #555;
}

.signature {
    font-size: 14px;
    text-align: center;
}

.signature-line {
    border-top: 1px solid #000;
    width: 200px;
    margin: 10px auto;
}

.seal {
    width: 90px;
    height: 90px;
    border-radius: 50%;
    background: #e0a848;
    color: white;
    text-align: center;
    font-size: 11px;
    line-height: 90px;
    margin: auto;
}
</style>
</head>

<body>

<table width="100%" height="100%">
<tr>
<td class="cert-wrapper">
    <table width="100%" height="100%">
        <tr>
            <td class="cert-inner">

                <!-- TITLE -->
                <table width="100%">
                    <tr>
                        <td class="title">CERTIFICATE</td>
                    </tr>
                    <tr>
                        <td class="subtitle">OF ACHIEVEMENT</td>
                    </tr>
                </table>

                <!-- PRESENTED -->
                <table width="100%">
                    <tr>
                        <td class="presented">
                            THIS CERTIFICATE IS PROUDLY PRESENTED TO
                        </td>
                    </tr>
                </table>

                <!-- NAME -->
                <table width="100%">
                    <tr>
                        <td align="center">
                            <span class="name">Anthony Jhonson</span>
                        </td>
                    </tr>
                </table>

                <!-- DESCRIPTION -->
                <table width="100%">
                    <tr>
                        <td class="description">
                            For outstanding achievement and dedication in successfully
                            completing the program with excellence and commitment.
                        </td>
                    </tr>
                </table>

                <!-- SEAL -->
                <table width="100%" style="margin-top:30px;">
                    <tr>
                        <td align="center">
                            <div class="seal">ACHIEVEMENT</div>
                        </td>
                    </tr>
                </table>

                <!-- SIGNATURES -->
                <table width="100%" style="margin-top:40px;">
                    <tr>
                        <td class="signature">
                            <div class="signature-line"></div>
                            Charles Blake<br>
                            <small>President Director</small>
                        </td>

                        <td align="center">
                            &nbsp;
                        </td>

                        <td class="signature">
                            <div class="signature-line"></div>
                            Julie S. Smith<br>
                            <small>General Manager</small>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>
</td>
</tr>
</table>

</body>
</html>
