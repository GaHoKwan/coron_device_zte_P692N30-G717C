.class public Lcom/itextpdf/text/pdf/PdfShading;
.super Ljava/lang/Object;
.source "PdfShading.java"


# instance fields
.field protected antiAlias:Z

.field protected bBox:[F

.field protected colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

.field private cspace:Lcom/itextpdf/text/BaseColor;

.field protected shading:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected shadingName:Lcom/itextpdf/text/pdf/PdfName;

.field protected shadingReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected shadingType:I

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->antiAlias:Z

    .line 77
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfShading;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 78
    return-void
.end method

.method public static checkCompatibleColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)V
    .locals 5
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {p0}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v0

    .line 120
    .local v0, type1:I
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v1

    .line 121
    .local v1, type2:I
    if-eq v0, v1, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "both.colors.must.be.of.the.same.type"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    check-cast p0, Lcom/itextpdf/text/pdf/SpotColor;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v2

    check-cast p1, Lcom/itextpdf/text/pdf/SpotColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the.spot.color.must.be.the.same.only.the.tint.can.vary"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_1
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 126
    :cond_2
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfShading;->throwColorSpaceError()V

    .line 127
    :cond_3
    return-void
.end method

.method public static getColorArray(Lcom/itextpdf/text/BaseColor;)[F
    .locals 9
    .parameter "color"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/high16 v6, 0x437f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-static {p0}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v1

    .line 131
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 146
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfShading;->throwColorSpaceError()V

    .line 147
    const/4 v2, 0x0

    .end local p0
    :goto_0
    return-object v2

    .line 133
    .restart local p0
    :pswitch_0
    new-array v2, v5, [F

    check-cast p0, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v3

    aput v3, v2, v4

    goto :goto_0

    .restart local p0
    :pswitch_1
    move-object v0, p0

    .line 136
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 137
    .local v0, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    const/4 v2, 0x4

    new-array v2, v2, [F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v3

    aput v3, v2, v4

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v3

    aput v3, v2, v5

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v3

    aput v3, v2, v7

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v3

    aput v3, v2, v8

    goto :goto_0

    .line 140
    .end local v0           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_2
    new-array v2, v5, [F

    check-cast p0, Lcom/itextpdf/text/pdf/SpotColor;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v3

    aput v3, v2, v4

    goto :goto_0

    .line 143
    .restart local p0
    :pswitch_3
    new-array v2, v8, [F

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    aput v3, v2, v4

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    aput v3, v2, v5

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    aput v3, v2, v7

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static simpleAxial(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfShading;
    .locals 9
    .parameter "writer"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "startColor"
    .parameter "endColor"

    .prologue
    const/4 v7, 0x1

    .line 197
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfShading;->simpleAxial(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;ZZ)Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    return-object v0
.end method

.method public static simpleAxial(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;ZZ)Lcom/itextpdf/text/pdf/PdfShading;
    .locals 6
    .parameter "writer"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "startColor"
    .parameter "endColor"
    .parameter "extendStart"
    .parameter "extendEnd"

    .prologue
    .line 190
    invoke-static {p5, p6}, Lcom/itextpdf/text/pdf/PdfShading;->checkCompatibleColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)V

    .line 191
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {p5}, Lcom/itextpdf/text/pdf/PdfShading;->getColorArray(Lcom/itextpdf/text/BaseColor;)[F

    move-result-object v3

    invoke-static {p6}, Lcom/itextpdf/text/pdf/PdfShading;->getColorArray(Lcom/itextpdf/text/BaseColor;)[F

    move-result-object v4

    const/high16 v5, 0x3f80

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfFunction;->type2(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[F[FF)Lcom/itextpdf/text/pdf/PdfFunction;

    move-result-object v4

    .line 193
    .local v4, function:Lcom/itextpdf/text/pdf/PdfFunction;
    const/4 v0, 0x4

    new-array v2, v0, [F

    const/4 v0, 0x0

    aput p1, v2, v0

    const/4 v0, 0x1

    aput p2, v2, v0

    const/4 v0, 0x2

    aput p3, v2, v0

    const/4 v0, 0x3

    aput p4, v2, v0

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Z

    const/4 v0, 0x0

    aput-boolean p7, v5, v0

    const/4 v0, 0x1

    aput-boolean p8, v5, v0

    move-object v0, p0

    move-object v1, p5

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfShading;->type2(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;[F[FLcom/itextpdf/text/pdf/PdfFunction;[Z)Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    return-object v0

    .line 191
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static simpleRadial(Lcom/itextpdf/text/pdf/PdfWriter;FFFFFFLcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfShading;
    .locals 11
    .parameter "writer"
    .parameter "x0"
    .parameter "y0"
    .parameter "r0"
    .parameter "x1"
    .parameter "y1"
    .parameter "r1"
    .parameter "startColor"
    .parameter "endColor"

    .prologue
    .line 208
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/itextpdf/text/pdf/PdfShading;->simpleRadial(Lcom/itextpdf/text/pdf/PdfWriter;FFFFFFLcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;ZZ)Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    return-object v0
.end method

.method public static simpleRadial(Lcom/itextpdf/text/pdf/PdfWriter;FFFFFFLcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;ZZ)Lcom/itextpdf/text/pdf/PdfShading;
    .locals 6
    .parameter "writer"
    .parameter "x0"
    .parameter "y0"
    .parameter "r0"
    .parameter "x1"
    .parameter "y1"
    .parameter "r1"
    .parameter "startColor"
    .parameter "endColor"
    .parameter "extendStart"
    .parameter "extendEnd"

    .prologue
    .line 201
    invoke-static {p7, p8}, Lcom/itextpdf/text/pdf/PdfShading;->checkCompatibleColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)V

    .line 202
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {p7}, Lcom/itextpdf/text/pdf/PdfShading;->getColorArray(Lcom/itextpdf/text/BaseColor;)[F

    move-result-object v3

    invoke-static {p8}, Lcom/itextpdf/text/pdf/PdfShading;->getColorArray(Lcom/itextpdf/text/BaseColor;)[F

    move-result-object v4

    const/high16 v5, 0x3f80

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfFunction;->type2(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[F[FF)Lcom/itextpdf/text/pdf/PdfFunction;

    move-result-object v4

    .line 204
    .local v4, function:Lcom/itextpdf/text/pdf/PdfFunction;
    const/4 v0, 0x6

    new-array v2, v0, [F

    const/4 v0, 0x0

    aput p1, v2, v0

    const/4 v0, 0x1

    aput p2, v2, v0

    const/4 v0, 0x2

    aput p3, v2, v0

    const/4 v0, 0x3

    aput p4, v2, v0

    const/4 v0, 0x4

    aput p5, v2, v0

    const/4 v0, 0x5

    aput p6, v2, v0

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Z

    const/4 v0, 0x0

    aput-boolean p9, v5, v0

    const/4 v0, 0x1

    aput-boolean p10, v5, v0

    move-object v0, p0

    move-object v1, p7

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfShading;->type3(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;[F[FLcom/itextpdf/text/pdf/PdfFunction;[Z)Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    return-object v0

    .line 202
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static throwColorSpaceError()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a.tiling.or.shading.pattern.cannot.be.used.as.a.color.space.in.a.shading.pattern"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static type1(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;[F[FLcom/itextpdf/text/pdf/PdfFunction;)Lcom/itextpdf/text/pdf/PdfShading;
    .locals 5
    .parameter "writer"
    .parameter "colorSpace"
    .parameter "domain"
    .parameter "tMatrix"
    .parameter "function"

    .prologue
    .line 151
    new-instance v0, Lcom/itextpdf/text/pdf/PdfShading;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfShading;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 152
    .local v0, sp:Lcom/itextpdf/text/pdf/PdfShading;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 153
    const/4 v1, 0x1

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shadingType:I

    .line 154
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SHADINGTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfShading;->shadingType:I

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 155
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfShading;->setColorSpace(Lcom/itextpdf/text/BaseColor;)V

    .line 156
    if-eqz p2, :cond_0

    .line 157
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DOMAIN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 158
    :cond_0
    if-eqz p3, :cond_1

    .line 159
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 160
    :cond_1
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FUNCTION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfFunction;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 161
    return-object v0
.end method

.method public static type2(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;[F[FLcom/itextpdf/text/pdf/PdfFunction;[Z)Lcom/itextpdf/text/pdf/PdfShading;
    .locals 8
    .parameter "writer"
    .parameter "colorSpace"
    .parameter "coords"
    .parameter "domain"
    .parameter "function"
    .parameter "extend"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    new-instance v1, Lcom/itextpdf/text/pdf/PdfShading;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/PdfShading;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 166
    .local v1, sp:Lcom/itextpdf/text/pdf/PdfShading;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v2, v1, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 167
    const/4 v2, 0x2

    iput v2, v1, Lcom/itextpdf/text/pdf/PdfShading;->shadingType:I

    .line 168
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SHADINGTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v5, v1, Lcom/itextpdf/text/pdf/PdfShading;->shadingType:I

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 169
    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfShading;->setColorSpace(Lcom/itextpdf/text/BaseColor;)V

    .line 170
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COORDS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4, p2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 171
    if-eqz p3, :cond_0

    .line 172
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DOMAIN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4, p3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 173
    :cond_0
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FUNCTION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfFunction;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 174
    if-eqz p5, :cond_2

    aget-boolean v2, p5, v6

    if-nez v2, :cond_1

    aget-boolean v2, p5, v7

    if-eqz v2, :cond_2

    .line 175
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    aget-boolean v2, p5, v6

    if-eqz v2, :cond_3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    :goto_0
    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 176
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    aget-boolean v2, p5, v7

    if-eqz v2, :cond_4

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    :goto_1
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 177
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->EXTEND:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 179
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    return-object v1

    .line 175
    :cond_3
    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto :goto_0

    .line 176
    .restart local v0       #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto :goto_1
.end method

.method public static type3(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;[F[FLcom/itextpdf/text/pdf/PdfFunction;[Z)Lcom/itextpdf/text/pdf/PdfShading;
    .locals 5
    .parameter "writer"
    .parameter "colorSpace"
    .parameter "coords"
    .parameter "domain"
    .parameter "function"
    .parameter "extend"

    .prologue
    .line 183
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/text/pdf/PdfShading;->type2(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;[F[FLcom/itextpdf/text/pdf/PdfFunction;[Z)Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    .line 184
    .local v0, sp:Lcom/itextpdf/text/pdf/PdfShading;
    const/4 v1, 0x3

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shadingType:I

    .line 185
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SHADINGTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfShading;->shadingType:I

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 186
    return-object v0
.end method


# virtual methods
.method addToBody()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->bBox:[F

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfShading;->bBox:[F

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->antiAlias:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ANTIALIAS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfShading;->getShadingReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 231
    return-void
.end method

.method public getBBox()[F
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->bBox:[F

    return-object v0
.end method

.method getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    return-object v0
.end method

.method public getColorSpace()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->cspace:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method getShadingName()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->shadingName:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method getShadingReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->shadingReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->shadingReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->shadingReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method getWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    return-object v0
.end method

.method public isAntiAlias()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->antiAlias:Z

    return v0
.end method

.method public setAntiAlias(Z)V
    .locals 0
    .parameter "antiAlias"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfShading;->antiAlias:Z

    .line 257
    return-void
.end method

.method public setBBox([F)V
    .locals 3
    .parameter "bBox"

    .prologue
    .line 246
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bbox.must.be.a.4.element.array"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfShading;->bBox:[F

    .line 249
    return-void
.end method

.method protected setColorSpace(Lcom/itextpdf/text/BaseColor;)V
    .locals 5
    .parameter "color"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfShading;->cspace:Lcom/itextpdf/text/BaseColor;

    .line 82
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v2

    .line 83
    .local v2, type:I
    const/4 v0, 0x0

    .line 84
    .local v0, colorSpace:Lcom/itextpdf/text/pdf/PdfObject;
    packed-switch v2, :pswitch_data_0

    .line 104
    :goto_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    .line 107
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfShading;->shading:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 108
    return-void

    .line 86
    :pswitch_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    .line 87
    goto :goto_1

    .line 90
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    .line 91
    goto :goto_1

    :pswitch_2
    move-object v1, p1

    .line 94
    check-cast v1, Lcom/itextpdf/text/pdf/SpotColor;

    .line 95
    .local v1, spot:Lcom/itextpdf/text/pdf/SpotColor;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfShading;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/PdfSpotColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfShading;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 96
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfShading;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    .line 97
    goto :goto_1

    .line 101
    .end local v1           #spot:Lcom/itextpdf/text/pdf/SpotColor;
    :pswitch_3
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfShading;->throwColorSpaceError()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method setName(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 222
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfShading;->shadingName:Lcom/itextpdf/text/pdf/PdfName;

    .line 223
    return-void
.end method
