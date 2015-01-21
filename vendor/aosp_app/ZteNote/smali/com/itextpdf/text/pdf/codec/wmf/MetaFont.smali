.class public Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;
.super Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
.source "MetaFont.java"


# static fields
.field static final BOLDTHRESHOLD:I = 0x258

.field static final DEFAULT_PITCH:I = 0x0

.field static final ETO_CLIPPED:I = 0x4

.field static final ETO_OPAQUE:I = 0x2

.field static final FF_DECORATIVE:I = 0x5

.field static final FF_DONTCARE:I = 0x0

.field static final FF_MODERN:I = 0x3

.field static final FF_ROMAN:I = 0x1

.field static final FF_SCRIPT:I = 0x4

.field static final FF_SWISS:I = 0x2

.field static final FIXED_PITCH:I = 0x1

.field static final MARKER_BOLD:I = 0x1

.field static final MARKER_COURIER:I = 0x0

.field static final MARKER_HELVETICA:I = 0x4

.field static final MARKER_ITALIC:I = 0x2

.field static final MARKER_SYMBOL:I = 0xc

.field static final MARKER_TIMES:I = 0x8

.field static final VARIABLE_PITCH:I = 0x2

.field static final fontNames:[Ljava/lang/String; = null

.field static final nameSize:I = 0x20


# instance fields
.field angle:F

.field bold:I

.field charset:I

.field faceName:Ljava/lang/String;

.field font:Lcom/itextpdf/text/pdf/BaseFont;

.field height:I

.field italic:I

.field pitchAndFamily:I

.field strikeout:Z

.field underline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Courier"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Courier-Bold"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Courier-Oblique"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Courier-BoldOblique"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Helvetica"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Helvetica-Bold"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Helvetica-Oblique"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Helvetica-BoldOblique"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Times-Roman"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Times-Bold"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Times-Italic"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Times-BoldItalic"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Symbol"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ZapfDingbats"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;-><init>()V

    .line 90
    const-string v0, "arial"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->type:I

    .line 95
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->angle:F

    return v0
.end method

.method public getFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v12, -0x1

    .line 128
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 188
    :goto_0
    return-object v5

    .line 130
    :cond_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v9, "Cp1252"

    const/high16 v10, 0x4120

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    :goto_1
    iget v11, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    if-eqz v11, :cond_1

    move v6, v7

    :cond_1
    or-int/2addr v5, v6

    invoke-static {v8, v9, v7, v10, v5}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;Ljava/lang/String;ZFI)Lcom/itextpdf/text/Font;

    move-result-object v2

    .line 131
    .local v2, ff2:Lcom/itextpdf/text/Font;
    invoke-virtual {v2}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 132
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    goto :goto_0

    .end local v2           #ff2:Lcom/itextpdf/text/Font;
    :cond_2
    move v5, v6

    .line 130
    goto :goto_1

    .line 135
    .restart local v2       #ff2:Lcom/itextpdf/text/Font;
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "courier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "terminal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "fixedsys"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_5

    .line 137
    :cond_4
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .line 182
    .local v3, fontName:Ljava/lang/String;
    :goto_2
    :try_start_0
    const-string v5, "Cp1252"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->font:Lcom/itextpdf/text/pdf/BaseFont;

    goto :goto_0

    .line 139
    .end local v3           #fontName:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "ms sans serif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_6

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "arial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_6

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_7

    .line 141
    :cond_6
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .restart local v3       #fontName:Ljava/lang/String;
    goto :goto_2

    .line 143
    .end local v3           #fontName:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "arial black"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_8

    .line 144
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-object v3, v5, v6

    .restart local v3       #fontName:Ljava/lang/String;
    goto :goto_2

    .line 146
    .end local v3           #fontName:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "times"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_9

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "ms serif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_9

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "roman"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_a

    .line 148
    :cond_9
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x8

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .restart local v3       #fontName:Ljava/lang/String;
    goto :goto_2

    .line 150
    .end local v3           #fontName:Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "symbol"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_b

    .line 151
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v3, v5, v6

    .restart local v3       #fontName:Ljava/lang/String;
    goto/16 :goto_2

    .line 154
    .end local v3           #fontName:Ljava/lang/String;
    :cond_b
    iget v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->pitchAndFamily:I

    and-int/lit8 v4, v5, 0x3

    .line 155
    .local v4, pitch:I
    iget v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->pitchAndFamily:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0x7

    .line 156
    .local v1, family:I
    packed-switch v1, :pswitch_data_0

    .line 170
    packed-switch v4, :pswitch_data_1

    .line 175
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .restart local v3       #fontName:Ljava/lang/String;
    goto/16 :goto_2

    .line 158
    .end local v3           #fontName:Ljava/lang/String;
    :pswitch_0
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .line 159
    .restart local v3       #fontName:Ljava/lang/String;
    goto/16 :goto_2

    .line 161
    .end local v3           #fontName:Ljava/lang/String;
    :pswitch_1
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x8

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .line 162
    .restart local v3       #fontName:Ljava/lang/String;
    goto/16 :goto_2

    .line 166
    .end local v3           #fontName:Ljava/lang/String;
    :pswitch_2
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .line 167
    .restart local v3       #fontName:Ljava/lang/String;
    goto/16 :goto_2

    .line 172
    .end local v3           #fontName:Ljava/lang/String;
    :pswitch_3
    sget-object v5, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    add-int/2addr v6, v7

    aget-object v3, v5, v6

    .line 173
    .restart local v3       #fontName:Ljava/lang/String;
    goto/16 :goto_2

    .line 184
    .end local v1           #family:I
    .end local v4           #pitch:I
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v5, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public getFontSize(Lcom/itextpdf/text/pdf/codec/wmf/MetaState;)F
    .locals 2
    .parameter "state"

    .prologue
    .line 204
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->height:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/itextpdf/text/Document;->wmfFontCorrection:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public init(Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;)V
    .locals 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->height:I

    .line 99
    invoke-virtual {p1, v7}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->skip(I)V

    .line 100
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    int-to-double v8, v4

    const-wide v10, 0x409c200000000000L

    div-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v8, v10

    double-to-float v4, v8

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->angle:F

    .line 101
    invoke-virtual {p1, v7}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->skip(I)V

    .line 102
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    const/16 v8, 0x258

    if-lt v4, v8, :cond_1

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->bold:I

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    :goto_1
    iput v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->italic:I

    .line 104
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->underline:Z

    .line 105
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->strikeout:Z

    .line 106
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->charset:I

    .line 107
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->skip(I)V

    .line 108
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->pitchAndFamily:I

    .line 109
    new-array v3, v12, [B

    .line 111
    .local v3, name:[B
    const/4 v2, 0x0

    .local v2, k:I
    :goto_4
    if-ge v2, v12, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v0

    .line 113
    .local v0, c:I
    if-nez v0, :cond_5

    .line 119
    .end local v0           #c:I
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "Cp1252"

    invoke-direct {v4, v3, v5, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_5
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    .line 125
    return-void

    .end local v2           #k:I
    .end local v3           #name:[B
    :cond_1
    move v4, v6

    .line 102
    goto :goto_0

    :cond_2
    move v4, v6

    .line 103
    goto :goto_1

    :cond_3
    move v4, v6

    .line 104
    goto :goto_2

    :cond_4
    move v5, v6

    .line 105
    goto :goto_3

    .line 116
    .restart local v0       #c:I
    .restart local v2       #k:I
    .restart local v3       #name:[B
    :cond_5
    int-to-byte v4, v0

    aput-byte v4, v3, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 121
    .end local v0           #c:I
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v6, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->faceName:Ljava/lang/String;

    goto :goto_5
.end method

.method public isStrikeout()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->strikeout:Z

    return v0
.end method

.method public isUnderline()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->underline:Z

    return v0
.end method
