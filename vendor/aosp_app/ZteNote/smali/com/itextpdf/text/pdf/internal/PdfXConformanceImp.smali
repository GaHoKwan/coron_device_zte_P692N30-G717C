.class public Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;
.super Ljava/lang/Object;
.source "PdfXConformanceImp.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfXConformance;


# static fields
.field public static final PDFXKEY_CMYK:I = 0x2

.field public static final PDFXKEY_COLOR:I = 0x1

.field public static final PDFXKEY_FONT:I = 0x4

.field public static final PDFXKEY_GSTATE:I = 0x6

.field public static final PDFXKEY_IMAGE:I = 0x5

.field public static final PDFXKEY_LAYER:I = 0x7

.field public static final PDFXKEY_RGB:I = 0x3


# instance fields
.field protected pdfxConformance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    return-void
.end method

.method public static checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V
    .locals 17
    .parameter "writer"
    .parameter "key"
    .parameter "obj1"

    .prologue
    .line 183
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPdfX()Z

    move-result v12

    if-nez v12, :cond_1

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPDFXConformance()I

    move-result v1

    .line 186
    .local v1, conf:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 190
    :pswitch_2
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/itextpdf/text/pdf/ExtendedColor;

    if-eqz v12, :cond_2

    move-object/from16 v3, p2

    .line 191
    check-cast v3, Lcom/itextpdf/text/pdf/ExtendedColor;

    .line 192
    .local v3, ec:Lcom/itextpdf/text/pdf/ExtendedColor;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType()I

    move-result v12

    packed-switch v12, :pswitch_data_2

    goto :goto_0

    .line 197
    :pswitch_3
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "colorspace.rgb.is.not.allowed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_4
    move-object v8, v3

    .line 199
    check-cast v8, Lcom/itextpdf/text/pdf/SpotColor;

    .line 200
    .local v8, sc:Lcom/itextpdf/text/pdf/SpotColor;
    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfSpotColor;->getAlternativeCS()Lcom/itextpdf/text/BaseColor;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    goto :goto_0

    .end local v8           #sc:Lcom/itextpdf/text/pdf/SpotColor;
    :pswitch_5
    move-object v11, v3

    .line 203
    check-cast v11, Lcom/itextpdf/text/pdf/ShadingColor;

    .line 204
    .local v11, xc:Lcom/itextpdf/text/pdf/ShadingColor;
    const/4 v12, 0x1

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/ShadingColor;->getPdfShadingPattern()Lcom/itextpdf/text/pdf/PdfShadingPattern;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getShading()Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfShading;->getColorSpace()Lcom/itextpdf/text/BaseColor;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    goto :goto_0

    .end local v11           #xc:Lcom/itextpdf/text/pdf/ShadingColor;
    :pswitch_6
    move-object v7, v3

    .line 207
    check-cast v7, Lcom/itextpdf/text/pdf/PatternColor;

    .line 208
    .local v7, pc:Lcom/itextpdf/text/pdf/PatternColor;
    const/4 v12, 0x1

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PatternColor;->getPainter()Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getDefaultColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    goto :goto_0

    .line 212
    .end local v3           #ec:Lcom/itextpdf/text/pdf/ExtendedColor;
    .end local v7           #pc:Lcom/itextpdf/text/pdf/PatternColor;
    :cond_2
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/itextpdf/text/BaseColor;

    if-eqz v12, :cond_0

    .line 213
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "colorspace.rgb.is.not.allowed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 220
    :pswitch_7
    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    .line 221
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "colorspace.rgb.is.not.allowed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_8
    move-object/from16 v12, p2

    .line 224
    check-cast v12, Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/BaseFont;->isEmbedded()Z

    move-result v12

    if-nez v12, :cond_0

    .line 225
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "all.the.fonts.must.be.embedded.this.one.isn.t.1"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    check-cast p2, Lcom/itextpdf/text/pdf/BaseFont;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .restart local p2
    :pswitch_9
    move-object/from16 v5, p2

    .line 228
    check-cast v5, Lcom/itextpdf/text/pdf/PdfImage;

    .line 229
    .local v5, image:Lcom/itextpdf/text/pdf/PdfImage;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->SMASK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfImage;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 230
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "the.smask.key.is.not.allowed.in.images"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 231
    :cond_3
    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    .line 233
    :pswitch_a
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfImage;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 234
    .local v2, cs:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 237
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 238
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "colorspace.rgb.is.not.allowed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 240
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 241
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->CALRGB:Lcom/itextpdf/text/pdf/PdfName;

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #cs:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 242
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "colorspace.calrgb.is.not.allowed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v5           #image:Lcom/itextpdf/text/pdf/PdfImage;
    :pswitch_b
    move-object/from16 v4, p2

    .line 248
    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 249
    .local v4, gs:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 250
    .local v6, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v6, :cond_5

    sget-object v12, Lcom/itextpdf/text/pdf/PdfGState;->BM_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    sget-object v12, Lcom/itextpdf/text/pdf/PdfGState;->BM_COMPATIBLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 251
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "blend.mode.1.not.allowed"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 252
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->CA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 253
    const-wide/16 v9, 0x0

    .line 254
    .local v9, v:D
    if-eqz v6, :cond_6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v6           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v12, 0x3ff0

    cmpl-double v12, v9, v12

    if-eqz v12, :cond_6

    .line 255
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "transparency.is.not.allowed.ca.eq.1"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 256
    :cond_6
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ca:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 257
    .restart local v6       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    const-wide/16 v9, 0x0

    .line 258
    if-eqz v6, :cond_0

    check-cast v6, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v6           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v12, 0x3ff0

    cmpl-double v12, v9, v12

    if-eqz v12, :cond_0

    .line 259
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "transparency.is.not.allowed.ca.eq.1"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 262
    .end local v4           #gs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v9           #v:D
    :pswitch_c
    new-instance v12, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v13, "layers.are.not.allowed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 192
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 231
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public completeExtraCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 4
    .parameter "extraCatalog"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfX()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfA1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTINTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTINTENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 166
    .local v0, out:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTCONDITION:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "SWOP CGATS TR 001-1995"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 167
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTCONDITIONIDENTIFIER:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "CGATS TR 001"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 168
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->REGISTRYNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "http://www.color.org"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 169
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 170
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->GTS_PDFX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 171
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTINTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 174
    .end local v0           #out:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    return-void
.end method

.method public completeInfoDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfX()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfA1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->GTS_PDFXVERSION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfX1A2001()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->GTS_PDFXVERSION:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "PDF/X-1:2001"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 145
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "GTS_PDFXConformance"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "PDF/X-1a:2001"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 150
    :cond_0
    :goto_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "Pdf document"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 153
    :cond_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CREATOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 154
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CREATOR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "Unknown"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 156
    :cond_2
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TRAPPED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 157
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TRAPPED:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "False"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 160
    :cond_3
    return-void

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfX32002()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->GTS_PDFXVERSION:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "PDF/X-3:2002"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public getPDFXConformance()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    return v0
.end method

.method public isPdfA1()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPdfA1A()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPdfX()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPdfX1A2001()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPdfX32002()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPDFXConformance(I)V
    .locals 0
    .parameter "pdfxConformance"

    .prologue
    .line 92
    iput p1, p0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->pdfxConformance:I

    .line 93
    return-void
.end method
