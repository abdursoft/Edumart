<div id="admitCard"
    style="
  max-width:650px;
  margin:auto;
  padding:20px;
  border:1px solid #ccc;
  font-family:sans-serif;
  font-size:14px;
  background:#fff;
  color:#333;
  cursor:none;
  user-select: none;
  position:relative;
" onselect="return false" ondragstart="return false" oncontextmenu="return false">
    <div id="watarmark"
        style="
    width:100%;
    height:100%;
    top:0;
    left:0;
    position:absolute;
    opacity: .15;
  ">
        <img class="watermark" src="{{ asset('static/images/watarmark.png') }}"
            style="width:300px;height:300px;position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);"
            alt="">
    </div>
    <div style="text-align:center;margin-bottom:20px;">
        <h1 style="font-size:18px;font-weight:bold;">{{$institute->site_name ?? ''}}</h1>
        <h2 style="font-size:15px;">{{$exam->name ?? ''}}</h2>
        <p>Held in {{$exam->start_date ?? 'N/A'}}</p>
        <div style="font-weight:bold;padding:5px 10px;display:inline-block;margin-top:10px;">Grade Sheet</div>
    </div>

    <div style="display:flex;justify-content:space-between;margin-bottom:20px;">
        <div style="width:60%;">
            <p><strong>Name of Examinee:</strong> {{$student?->name}}</p>
            <p><strong>Father's Name:</strong> {{$student?->fa_name_en}}</p>
            <p><strong>Mother's Name:</strong> {{$student->mo_name_en}}</p>
            <p><strong>Class/Technology:</strong> {{$exam?->eduClass->name}}</p>
            <p><strong>Type:</strong> {{$exam?->type}}</p>
        </div>
        <div style="width:36%;">
            <p><strong>Roll No:</strong> {{$student?->id}}</p>
            <p><strong>Registration No:</strong> 1800001771</p>
            <p><strong>Session:</strong> {{$exam?->session}}</p>
            <p><strong>Code:</strong> {{$exam?->code}}</p>
            <p><strong>Year:</strong> {{$exam?->year}}</p>
        </div>
    </div>

    <table style="width:100%;border-collapse:collapse;margin-bottom:20px;">
        <thead>
            <tr style="background:#f0f0f0;">
                <th style="border:1px solid #ccc;padding:8px;text-align:left;">Code</th>
                <th style="border:1px solid #ccc;padding:8px;text-align:left;">Subject</th>
                <th style="border:1px solid #ccc;padding:8px;text-align:left;">Marks</th>
                <th style="border:1px solid #ccc;padding:8px;text-align:left;">Grade</th>
                <th style="border:1px solid #ccc;padding:8px;text-align:left;">Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach($subjects as $subject)
                <tr>
                    <td style="border:1px solid #ccc;padding:8px;">{{$subject?->subject->code}}</td>
                    <td style="border:1px solid #ccc;padding:8px;">{{$subject?->subject->name}}</td>
                    <td style="border:1px solid #ccc;padding:8px;">{{$subject->total_marks}}</td>
                    <td style="border:1px solid #ccc;padding:8px;">{{$subject->grade}}</td>
                    <td style="border:1px solid #ccc;padding:8px;"><strong>{{($subject->is_passed) ? 'Passed' : 'Failed'}}</strong></td>
                </tr>
            @endforeach
            <tr>
                <td style="border:1px solid #ccc;padding:8px;">Percentage</td>
                <td style="border:1px solid #ccc;padding:8px;">{{$marksheet?->percentage}}%</td>
                <td style="border:1px solid #ccc;padding:8px;text-align:right;" colspan="2">Overall</td>
                <td style="border:1px solid #ccc;padding:8px;"><strong>{{($marksheet?->grade)}}</strong></td>
            </tr>
        </tbody>
    </table>

    <div style="font-size:12px;color:#555;margin-bottom:20px;">
        <p>1. Students must bring this Admit Card and Registration Card to the exam hall.</p>
        <p>2. Mobile phones are strictly prohibited.</p>
    </div>

    <div style="text-align:right;">
        <p><strong>Controller of Examinations</strong></p>
        <p>{{$institute->site_name}}</p>
    </div>
</div>


<div style="text-align:center;margin-top:20px;">
  <button onclick="printSection()" style="background:#2563eb;color:#fff;padding:10px 20px;border:none;border-radius:4px;margin-right:10px;">
    Print Mark Sheet
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
    pdf.save('mark-sheet-{{time()}}.pdf');
  }

  function printSection() {
    const content = document.getElementById('admitCard').innerHTML;
    const printWindow = window.open('', '', 'width=800,height=600');
    printWindow.document.write(`
      <html>
        <head>
          <title>Mark-sheet-{{time()}}</title>
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
