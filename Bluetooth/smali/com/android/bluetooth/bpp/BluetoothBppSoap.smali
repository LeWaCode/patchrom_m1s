.class public Lcom/android/bluetooth/bpp/BluetoothBppSoap;
.super Ljava/lang/Object;
.source "BluetoothBppSoap.java"


# instance fields
.field public bppJobId:[B

.field public bppOperStatusCode:I

.field mCallback:Landroid/os/Handler;

.field public mDocumentSent:Z

.field public mFileSending:Z

.field public mJobResult:I

.field public mJobStatus:Ljava/lang/String;

.field public mOperationStatus:Ljava/lang/String;

.field public mPrinterStateReason:Ljava/lang/String;

.field public mPrinter_ColorSupported:Ljava/lang/Boolean;

.field public mPrinter_DocFormats:I

.field public mPrinter_JobId:Ljava/lang/String;

.field public mPrinter_MaxCopies:I

.field public mPrinter_Name:Ljava/lang/String;

.field public mPrinter_NumberUp:I

.field public mPrinter_Orientation:[Ljava/lang/String;

.field public mPrinter_Sides:[Ljava/lang/String;

.field public mPrinter_State:Ljava/lang/String;

.field public mPrinter_StateReasons:Ljava/lang/String;

.field public mSoapBodyLen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .parameter "handle"
    .parameter "JobId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    .line 142
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mSoapBodyLen:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Name:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_State:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_StateReasons:Ljava/lang/String;

    .line 148
    iput v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_ColorSupported:Ljava/lang/Boolean;

    .line 150
    iput v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_MaxCopies:I

    .line 151
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Sides:[Ljava/lang/String;

    .line 152
    iput v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_NumberUp:I

    .line 153
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Orientation:[Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_JobId:Ljava/lang/String;

    .line 155
    iput-boolean v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mFileSending:Z

    .line 164
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    .line 165
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinterStateReason:Ljava/lang/String;

    .line 166
    const-string v0, "0x0000"

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mOperationStatus:Ljava/lang/String;

    .line 167
    const-string v0, "waiting"

    iput-object v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobStatus:Ljava/lang/String;

    .line 168
    iput-boolean v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mDocumentSent:Z

    .line 169
    iput-object p2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_JobId:Ljava/lang/String;

    .line 170
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    .line 171
    return-void
.end method

.method private AddPrintDocFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "DocFormat"

    .prologue
    .line 404
    const-string v0, "application/vnd.pwg-xhtml-print+xml:0.95"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const-string v0, "application/vnd.pwg-xhtml-print+xml:1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 410
    :cond_2
    const-string v0, "application/vnd.pwg-multiplexed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 411
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 413
    :cond_3
    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 414
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 416
    :cond_4
    const-string v0, "text/x-vcard:2.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 417
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 419
    :cond_5
    const-string v0, "text/x-vcard:3.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 420
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 422
    :cond_6
    const-string v0, "text/x-vcalendar:1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 423
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 425
    :cond_7
    const-string v0, "text/calendar:2.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 426
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 428
    :cond_8
    const-string v0, "text/x-vmessage:1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 429
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto :goto_0

    .line 431
    :cond_9
    const-string v0, "application/PostScript:2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 432
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto/16 :goto_0

    .line 434
    :cond_a
    const-string v0, "application/PostScript:3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 435
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto/16 :goto_0

    .line 437
    :cond_b
    const-string v0, "application/vnd.hp-PCL:5E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 438
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto/16 :goto_0

    .line 440
    :cond_c
    const-string v0, "application/vnd.hp-PCL:3C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 441
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto/16 :goto_0

    .line 443
    :cond_d
    const-string v0, "application/PDF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 444
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto/16 :goto_0

    .line 446
    :cond_e
    const-string v0, "image/jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 447
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto/16 :goto_0

    .line 449
    :cond_f
    const-string v0, "image/gif:89A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    goto/16 :goto_0
.end method

.method private CreateSoapBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "SoapCmd"

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, SoapBodyBegin:Ljava/lang/String;
    const/4 v2, 0x0

    .line 522
    .local v2, SoapBodyMain:Ljava/lang/String;
    const/4 v1, 0x0

    .line 524
    .local v1, SoapBodyEnd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<s:Envelope\r\nxmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\"\r\ns:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\">\r\n<s:Body>\r\n<u:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xmlns:u=\"urn:schemas-bluetooth-org:service:Printer:1\">\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    const-string v3, "GetPrinterAttributes"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 533
    const-string v2, "<RequestedPrinterAttributes>\r\n<PrinterAttribute>PrinterName</PrinterAttribute>\r\n<PrinterAttribute>PrinterState</PrinterAttribute>\r\n<PrinterAttribute>PrinterStateReasons</PrinterAttribute>\r\n<PrinterAttribute>DocumentFormatsSupported</PrinterAttribute>\r\n<PrinterAttribute>ColorSupported</PrinterAttribute>\r\n<PrinterAttribute>MaxCopiesSupported</PrinterAttribute>\r\n<PrinterAttribute>SideSupported</PrinterAttribute>\r\n<PrinterAttribute>NumberUpSupported</PrinterAttribute>\r\n<PrinterAttribute>OrientationSupported</PrinterAttribute>\r\n<PrinterAttribute>OperationStatus</PrinterAttribute>\r\n</RequestedPrinterAttributes>\r\n"

    .line 571
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</u:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</s:Body>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</s:Envelope>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    if-nez v2, :cond_4

    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 547
    :cond_0
    const-string v3, "CreateJob"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<JobName>MyJob</JobName>\r\n<Copies>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mCopies:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</Copies>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<Sides>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mSides:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</Sides>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<NumberUp>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mNumUp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</NumberUp>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<OrientationRequested>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOrient:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</OrientationRequested>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 561
    :cond_1
    const-string v3, "CancelJob"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "GetEvent"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 563
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<JobId>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_JobId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</JobId>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 568
    :cond_3
    const-string v3, "BluetoothBppSoap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Soap Builder: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not supported Request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 575
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private CreateSoapHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "SoapCmd"

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 512
    .local v0, SoapHdr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTENT-LENGTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mSoapBodyLen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CONTENT-TYPE: text/xml; charset=\"utf-8\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SOAPACTION: \"urn:schemas-bluetooth-org:service:Printer:1#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    return-object v0
.end method

.method private ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "SoapRsp"
    .parameter "AttrName"
    .parameter "paramStr"

    .prologue
    const/4 v10, -0x1

    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, startIdx:I
    const/4 v2, 0x0

    .line 374
    .local v2, endIdx:I
    const/4 v3, 0x0

    .line 375
    .local v3, paramCount:I
    const/4 v4, 0x0

    .line 379
    .local v4, paramLen:I
    const-string v7, "BluetoothBppSoap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extract Attribute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, AttrPrefix:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "</"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, AttrSuffix:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v10, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v10, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 389
    sub-int v4, v2, v5

    .line 390
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 391
    new-array v6, v4, [B

    .line 393
    .local v6, stringBuf:[B
    add-int v7, v5, v4

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v7, v6, v8}, Ljava/lang/String;->getBytes(II[BI)V

    .line 394
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    aput-object v7, p3, v3

    .line 396
    const-string v7, "BluetoothBppSoap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p3, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    add-int/lit8 v3, v3, 0x1

    .line 398
    goto :goto_0

    .line 399
    .end local v6           #stringBuf:[B
    :cond_0
    return v3
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 340
    const-string v0, "media-jam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 341
    const/16 v0, 0x1f5

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const-string v0, "paused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 343
    const/16 v0, 0x1f6

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 344
    :cond_2
    const-string v0, "door-open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 345
    const/16 v0, 0x1f7

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 346
    :cond_3
    const-string v0, "media-low"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 347
    const/16 v0, 0x1f8

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 348
    :cond_4
    const-string v0, "media-empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 349
    const/16 v0, 0x1f9

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 350
    :cond_5
    const-string v0, "output-area-almost-full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 351
    const/16 v0, 0x1fa

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 352
    :cond_6
    const-string v0, "output-area-full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 353
    const/16 v0, 0x1fb

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 354
    :cond_7
    const-string v0, "marker-supply-low"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 355
    const/16 v0, 0x1fc

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 356
    :cond_8
    const-string v0, "marker-supply-empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 357
    const/16 v0, 0x1fd

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 358
    :cond_9
    const-string v0, "marker-failure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 359
    const/16 v0, 0x1fe

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto :goto_0

    .line 360
    :cond_a
    const-string v0, "stopped"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 361
    const/16 v0, 0x1ff

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto/16 :goto_0

    .line 362
    :cond_b
    const-string v0, "aborted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 363
    const/16 v0, 0x200

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto/16 :goto_0

    .line 364
    :cond_c
    const-string v0, "cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 365
    const/16 v0, 0x201

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto/16 :goto_0

    .line 366
    :cond_d
    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/16 v0, 0x202

    iput v0, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized Builder(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "SoapCmd"

    .prologue
    .line 490
    monitor-enter p0

    const/4 v2, 0x0

    .line 491
    .local v2, SoapReqHeader:Ljava/lang/String;
    const/4 v1, 0x0

    .line 492
    .local v1, SoapReqBody:Ljava/lang/String;
    const/4 v0, 0x0

    .line 495
    .local v0, SoapReq:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 497
    .local v3, timestamp:J
    invoke-direct {p0, p1}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->CreateSoapBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mSoapBodyLen:Ljava/lang/String;

    .line 499
    invoke-direct {p0, p1}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->CreateSoapHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    const-string v5, "BluetoothBppSoap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Soap Builder created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Soap Body Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mSoapBodyLen:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    monitor-exit p0

    return-object v0

    .line 490
    .end local v3           #timestamp:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized Parser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "SoapReq"
    .parameter "SoapRsp"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    const-string v7, "BluetoothBppSoap"

    const-string v8, "Parsing SOAP Response..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v5, 0x0

    .line 186
    .local v5, result:Z
    const-string v7, "GetPrinterAttributes"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    .line 188
    const/16 v7, 0x14

    new-array v4, v7, [Ljava/lang/String;

    .line 189
    .local v4, paramString:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 192
    .local v0, countParam:I
    const-string v7, "PrinterName"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Name:Ljava/lang/String;

    .line 196
    :cond_0
    const-string v7, "PrinterState"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_State:Ljava/lang/String;

    .line 200
    :cond_1
    const-string v7, "PrinterStateReasons"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_StateReasons:Ljava/lang/String;

    .line 205
    :cond_2
    const-string v7, "DocumentFormat"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_DocFormats:I

    .line 207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 208
    aget-object v7, v4, v1

    invoke-direct {p0, v7}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->AddPrintDocFormat(Ljava/lang/String;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1           #i:I
    :cond_3
    const-string v7, "ColorSupported"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_ColorSupported:Ljava/lang/Boolean;

    .line 216
    :cond_4
    const-string v7, "MaxCopiesSupported"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_MaxCopies:I

    .line 220
    :cond_5
    const-string v7, "Sides"

    iget-object v8, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Sides:[Ljava/lang/String;

    invoke-direct {p0, p2, v7, v8}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    :cond_6
    const-string v7, "NumberUpSupported"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_NumberUp:I

    .line 228
    :cond_7
    const-string v7, "Orientation"

    iget-object v8, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_Orientation:[Ljava/lang/String;

    invoke-direct {p0, p2, v7, v8}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    .line 336
    .end local v0           #countParam:I
    .end local v4           #paramString:[Ljava/lang/String;
    :cond_8
    :goto_1
    monitor-exit p0

    return v5

    .line 234
    :cond_9
    :try_start_1
    const-string v7, "CreateJob"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_d

    .line 235
    const/16 v7, 0x14

    new-array v4, v7, [Ljava/lang/String;

    .line 238
    .restart local v4       #paramString:[Ljava/lang/String;
    const-string v7, "JobId"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_c

    .line 239
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mPrinter_JobId:Ljava/lang/String;

    .line 240
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 242
    .local v6, tempId:I
    const/4 v1, 0x0

    .line 244
    .restart local v1       #i:I
    const/4 v7, 0x4

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    :cond_a
    move v2, v1

    .line 247
    .end local v1           #i:I
    .local v2, i:I
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 248
    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v6, v7, 0xff

    if-nez v6, :cond_a

    .line 250
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v1, :cond_b

    .line 251
    const-string v7, "BluetoothBppSoap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bppJobId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppJobId:[B

    aget-byte v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 254
    :cond_b
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/16 v8, 0x13

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 259
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v6           #tempId:I
    :cond_c
    const-string v7, "OperationStatus"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppOperStatusCode:I

    .line 261
    const-string v7, "BluetoothBppSoap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bppOperStatusCode : 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->bppOperStatusCode:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 181
    .end local v4           #paramString:[Ljava/lang/String;
    .end local v5           #result:Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 264
    .restart local v5       #result:Z
    :cond_d
    :try_start_2
    const-string v7, "CancelJob"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    .line 265
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    .line 267
    .restart local v4       #paramString:[Ljava/lang/String;
    const-string v7, "JobId"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    const-string v7, "OperationStatus"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 272
    const/4 v5, 0x1

    .line 274
    goto/16 :goto_1

    .line 275
    .end local v4           #paramString:[Ljava/lang/String;
    :cond_e
    const-string v7, "GetEvent"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_15

    .line 276
    iget-boolean v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mDocumentSent:Z

    if-nez v7, :cond_f

    .line 277
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mDocumentSent:Z

    .line 278
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/16 v8, 0x12

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 282
    :cond_f
    const/16 v7, 0x14

    new-array v4, v7, [Ljava/lang/String;

    .line 283
    .restart local v4       #paramString:[Ljava/lang/String;
    const-string v7, "JobState"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_12

    .line 284
    const-string v7, "BluetoothBppSoap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current Job Status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->setStatus(Ljava/lang/String;)V

    .line 286
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "aborted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "cancelled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_11

    .line 290
    :cond_10
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/16 v8, 0x14

    iget v9, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 292
    const/4 v5, 0x1

    .line 295
    :cond_11
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "completed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_12

    .line 296
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 298
    const/4 v5, 0x1

    .line 302
    :cond_12
    const-string v7, "PrinterState"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_13

    .line 303
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->setStatus(Ljava/lang/String;)V

    .line 304
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_13

    .line 305
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/16 v8, 0x14

    iget v9, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 307
    const/4 v5, 0x1

    .line 311
    :cond_13
    const-string v7, "PrinterStateReasons"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_14

    .line 312
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->setStatus(Ljava/lang/String;)V

    .line 313
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "None"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_14

    .line 315
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/16 v8, 0x14

    iget v9, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 317
    const/4 v5, 0x1

    .line 321
    :cond_14
    const-string v7, "OperationStatus"

    invoke-direct {p0, p2, v7, v4}, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->ExtractParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    .line 322
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mOperationStatus:Ljava/lang/String;

    .line 323
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "0x0000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    .line 325
    const/16 v7, 0x203

    iput v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    .line 326
    iget-object v7, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mCallback:Landroid/os/Handler;

    const/16 v8, 0x14

    iget v9, p0, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobResult:I

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 328
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 333
    .end local v4           #paramString:[Ljava/lang/String;
    :cond_15
    const-string v7, "BluetoothBppSoap"

    const-string v8, "Unexpected SOAP Response "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
