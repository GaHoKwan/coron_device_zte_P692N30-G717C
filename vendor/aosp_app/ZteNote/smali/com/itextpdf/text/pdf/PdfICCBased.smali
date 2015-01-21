.class public Lcom/itextpdf/text/pdf/PdfICCBased;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "PdfICCBased.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfICCBased;-><init>(Lcom/itextpdf/text/pdf/ICC_Profile;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/ICC_Profile;I)V
    .locals 5
    .parameter "profile"
    .parameter "compressionLevel"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 77
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/ICC_Profile;->getNumComponents()I

    move-result v1

    .line 78
    .local v1, numberOfComponents:I
    packed-switch v1, :pswitch_data_0

    .line 89
    :pswitch_0
    new-instance v2, Lcom/itextpdf/text/pdf/PdfException;

    const-string v3, "1.component.s.is.not.supported"

    invoke-static {v3, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #numberOfComponents:I
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #numberOfComponents:I
    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ALTERNATE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfICCBased;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 91
    :goto_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfICCBased;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 92
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/ICC_Profile;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfICCBased;->bytes:[B

    .line 93
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfICCBased;->bytes:[B

    array-length v4, v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfICCBased;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfICCBased;->flateCompress(I)V

    .line 98
    return-void

    .line 83
    :pswitch_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ALTERNATE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfICCBased;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 86
    :pswitch_3
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ALTERNATE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfICCBased;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
