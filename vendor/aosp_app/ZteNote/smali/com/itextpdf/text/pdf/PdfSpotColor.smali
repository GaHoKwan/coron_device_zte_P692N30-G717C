.class public Lcom/itextpdf/text/pdf/PdfSpotColor;
.super Ljava/lang/Object;
.source "PdfSpotColor.java"


# instance fields
.field public altcs:Lcom/itextpdf/text/BaseColor;

.field public name:Lcom/itextpdf/text/pdf/PdfName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/BaseColor;)V
    .locals 1
    .parameter "name"
    .parameter "altcs"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->name:Lcom/itextpdf/text/pdf/PdfName;

    .line 73
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    .line 74
    return-void
.end method


# virtual methods
.method public getAlternativeCS()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method protected getSpotObject(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 14
    .parameter "writer"

    .prologue
    const/high16 v13, 0x437f

    const/high16 v5, 0x3f80

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 85
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SEPARATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 86
    .local v6, array:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->name:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 87
    const/4 v8, 0x0

    .line 88
    .local v8, func:Lcom/itextpdf/text/pdf/PdfFunction;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    instance-of v0, v0, Lcom/itextpdf/text/pdf/ExtendedColor;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    check-cast v0, Lcom/itextpdf/text/pdf/ExtendedColor;

    iget v9, v0, Lcom/itextpdf/text/pdf/ExtendedColor;->type:I

    .line 90
    .local v9, type:I
    packed-switch v9, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only.rgb.gray.and.cmyk.are.supported.as.alternative.color.spaces"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 93
    new-array v1, v11, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    new-array v3, v12, [F

    const/4 v0, 0x0

    aput v0, v3, v10

    new-array v4, v12, [F

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    check-cast v0, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v0

    aput v0, v4, v10

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfFunction;->type2(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[F[FF)Lcom/itextpdf/text/pdf/PdfFunction;

    move-result-object v8

    .line 110
    .end local v9           #type:I
    :goto_0
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfFunction;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 111
    return-object v6

    .line 96
    .restart local v9       #type:I
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 97
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    check-cast v7, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 98
    .local v7, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    new-array v1, v11, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    const/4 v0, 0x4

    new-array v4, v0, [F

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v0

    aput v0, v4, v10

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v0

    aput v0, v4, v12

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v0

    aput v0, v4, v11

    const/4 v0, 0x3

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v10

    aput v10, v4, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfFunction;->type2(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[F[FF)Lcom/itextpdf/text/pdf/PdfFunction;

    move-result-object v8

    .line 100
    goto :goto_0

    .line 106
    .end local v7           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    .end local v9           #type:I
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 107
    new-array v1, v11, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v3, v0, [F

    fill-array-data v3, :array_4

    const/4 v0, 0x3

    new-array v4, v0, [F

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    aput v0, v4, v10

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    aput v0, v4, v12

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSpotColor;->altcs:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    aput v0, v4, v11

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfFunction;->type2(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[F[FF)Lcom/itextpdf/text/pdf/PdfFunction;

    move-result-object v8

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 93
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 98
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 107
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
