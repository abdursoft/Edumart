@extends('layouts.download')

@section('title', 'Home Page')

@section('meta')
    {{ metaContent('Home Page', 'This is the home page of the website.', theme_asset('images/home-banner.jpg'), 'home, page, website') }}
@endsection

@section('content')
@include(theme('components.partials.admit-card'))



<div style="text-align:center;margin-top:20px;">
  <button onclick="printSection()" style="background:#2563eb;color:#fff;padding:10px 20px;border:none;border-radius:4px;margin-right:10px;">
    Print Admit Card
  </button>
  <button onclick="generatePDF()" style="background:#16a34a;color:#fff;padding:10px 20px;border:none;border-radius:4px;">
    Download PDF
  </button>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
<script>

  async function generatePDF() {
    const { jsPDF } = window.jspdf;
    const card = document.getElementById('admitCard');
    const canvas = await html2canvas(card, { scale: 3 });
    const imgData = canvas.toDataURL('image/png');
    const pdf = new jsPDF('p', 'mm', 'a4');
    const width = pdf.internal.pageSize.getWidth();
    const height = (canvas.height * width) / canvas.width;
    pdf.addImage(imgData, 'PNG', 0, 0, width, height);
    pdf.save('admit-card.pdf');
  }

  function printSection() {
    const content = document.getElementById('admitCard').innerHTML;
    const printWindow = window.open('', '', 'width=800,height=600');
    printWindow.document.write(`
      <html>
        <head>
          <title>Print Admit Card</title>
          <style>
            body {
              font-family: sans-serif;
              font-size: 12px;
              color: #333;
              padding: 20px;
              background: #fff;
            }
            table {
              width: 100%;
              border-collapse: collapse;
              margin-bottom: 20px;
            }
            th, td {
              border: 1px solid #ccc;
              padding: 8px;
              text-align: left;
              font-size:12px !important;
            }
            h1{font-size:15px !important;}
            h2{font-size:13px !important;}
            h1, h2 {
              margin: 0;
              padding: 0;
            }
            .title {
              background: #dc2626;
              color: white;
              padding: 5px 10px;
              display: inline-block;
              margin-top: 10px;
              font-weight: bold;
            }
            .watermark{
                top:35% !important;
            }
          </style>
        </head>
        <body>
          ${content}
        </body>
      </html>
    `);
    printWindow.document.close();
    printWindow.focus();
    printWindow.print();
    printWindow.close();
  }
</script>


@endsection
