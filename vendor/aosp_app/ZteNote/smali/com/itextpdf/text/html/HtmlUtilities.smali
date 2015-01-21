.class public Lcom/itextpdf/text/html/HtmlUtilities;
.super Ljava/lang/Object;
.source "HtmlUtilities.java"


# static fields
.field public static final DEFAULT_FONT_SIZE:F = 12.0f

.field public static final FONTSIZES:[I

.field private static sizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    const-string v1, "xx-small"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    const-string v1, "x-small"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x40c0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    const-string v1, "small"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4100

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    const-string v1, "medium"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4120

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    const-string v1, "large"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4150

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    const-string v1, "x-large"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4190

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    const-string v1, "xx-large"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x41d0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/html/HtmlUtilities;->FONTSIZES:[I

    return-void

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignmentValue(Ljava/lang/String;)I
    .locals 2
    .parameter "alignment"

    .prologue
    const/4 v0, -0x1

    .line 337
    if-nez p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    const-string v1, "center"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    :cond_2
    const-string v1, "left"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_3
    const-string v1, "right"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    const/4 v0, 0x2

    goto :goto_0

    .line 347
    :cond_4
    const-string v1, "justify"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 348
    const/4 v0, 0x3

    goto :goto_0

    .line 350
    :cond_5
    const-string v1, "JustifyAll"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 351
    const/16 v0, 0x8

    goto :goto_0

    .line 353
    :cond_6
    const-string v1, "top"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 354
    const/4 v0, 0x4

    goto :goto_0

    .line 356
    :cond_7
    const-string v1, "middle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 357
    const/4 v0, 0x5

    goto :goto_0

    .line 359
    :cond_8
    const-string v1, "bottom"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 360
    const/4 v0, 0x6

    goto :goto_0

    .line 362
    :cond_9
    const-string v1, "baseline"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 169
    if-nez p0, :cond_0

    .line 176
    :goto_0
    return-object v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 173
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/text/html/WebColors;->getRGBColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static eliminateWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "content"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 254
    .local v3, len:I
    const/4 v4, 0x0

    .line 255
    .local v4, newline:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 256
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, character:C
    sparse-switch v1, :sswitch_data_0

    .line 273
    const/4 v4, 0x0

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :sswitch_1
    if-nez v4, :cond_0

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 263
    :sswitch_2
    if-lez v2, :cond_0

    .line 264
    const/4 v4, 0x1

    .line 265
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 277
    .end local v1           #character:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getIndexedFontSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "value"
    .parameter "previous"

    .prologue
    .line 294
    const/4 v4, 0x0

    .line 296
    .local v4, sIndex:I
    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 298
    :cond_0
    if-nez p1, :cond_1

    .line 299
    const-string p1, "12"

    .line 300
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v0, v5

    .line 302
    .local v0, c:I
    sget-object v5, Lcom/itextpdf/text/html/HtmlUtilities;->FONTSIZES:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .local v2, k:I
    :goto_0
    if-ltz v2, :cond_2

    .line 303
    sget-object v5, Lcom/itextpdf/text/html/HtmlUtilities;->FONTSIZES:[I

    aget v5, v5, v2

    if-lt v0, v5, :cond_5

    .line 304
    move v4, v2

    .line 309
    :cond_2
    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 313
    .local v1, diff:I
    add-int/2addr v4, v1

    .line 323
    .end local v0           #c:I
    .end local v1           #diff:I
    .end local v2           #k:I
    :goto_1
    if-gez v4, :cond_7

    .line 324
    const/4 v4, 0x0

    .line 327
    :cond_4
    :goto_2
    sget-object v5, Lcom/itextpdf/text/html/HtmlUtilities;->FONTSIZES:[I

    aget v5, v5, v4

    return v5

    .line 302
    .restart local v0       #c:I
    .restart local v2       #k:I
    .restart local p0
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 318
    .end local v0           #c:I
    .end local v2           #k:I
    :cond_6
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/lit8 v4, v5, -0x1

    goto :goto_1

    .line 319
    :catch_0
    move-exception v3

    .line 320
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_1

    .line 325
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local p0
    :cond_7
    sget-object v5, Lcom/itextpdf/text/html/HtmlUtilities;->FONTSIZES:[I

    array-length v5, v5

    if-lt v4, v5, :cond_4

    .line 326
    sget-object v5, Lcom/itextpdf/text/html/HtmlUtilities;->FONTSIZES:[I

    array-length v5, v5

    add-int/lit8 v4, v5, -0x1

    goto :goto_2
.end method

.method public static parseAttributes(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .parameter "string"

    .prologue
    .line 190
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 191
    .local v3, result:Ljava/util/Properties;
    if-nez p0, :cond_1

    .line 213
    :cond_0
    return-object v3

    .line 193
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v2, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v2, keyValuePairs:Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-direct {v1, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v1, keyValuePair:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, value:Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    :cond_3
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 210
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 211
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static parseLength(Ljava/lang/String;)F
    .locals 1
    .parameter "string"

    .prologue
    .line 86
    const/high16 v0, 0x4140

    invoke-static {p0, v0}, Lcom/itextpdf/text/html/HtmlUtilities;->parseLength(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static parseLength(Ljava/lang/String;F)F
    .locals 8
    .parameter "string"
    .parameter "actualFontSize"

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x4290

    .line 95
    if-nez p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    sget-object v5, Lcom/itextpdf/text/html/HtmlUtilities;->sizes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 98
    .local v1, fl:Ljava/lang/Float;
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 100
    :cond_2
    const/4 v4, 0x0

    .line 101
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 102
    .local v2, length:I
    const/4 v3, 0x1

    .line 103
    .local v3, ok:Z
    :goto_1
    if-eqz v3, :cond_3

    if-ge v4, v2, :cond_3

    .line 104
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 121
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_1

    .line 118
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 119
    goto :goto_1

    .line 124
    :cond_3
    if-eqz v4, :cond_0

    .line 126
    if-ne v4, v2, :cond_4

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 128
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 129
    .local v0, f:F
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 131
    const-string v5, "in"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 132
    mul-float/2addr v0, v7

    goto :goto_0

    .line 135
    :cond_5
    const-string v5, "cm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 136
    const v5, 0x40228f5c

    div-float v5, v0, v5

    mul-float v0, v5, v7

    goto :goto_0

    .line 139
    :cond_6
    const-string v5, "mm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 140
    const v5, 0x41cb3333

    div-float v5, v0, v5

    mul-float v0, v5, v7

    goto/16 :goto_0

    .line 143
    :cond_7
    const-string v5, "pc"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 144
    const/high16 v5, 0x4140

    mul-float/2addr v0, v5

    goto/16 :goto_0

    .line 147
    :cond_8
    const-string v5, "em"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 148
    mul-float/2addr v0, p1

    goto/16 :goto_0

    .line 152
    :cond_9
    const-string v5, "ex"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    mul-float v5, v0, p1

    const/high16 v6, 0x4000

    div-float v0, v5, v6

    goto/16 :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static removeComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"
    .parameter "startComment"
    .parameter "endComment"

    .prologue
    .line 229
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v2, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 231
    .local v1, pos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 232
    .local v0, end:I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 233
    .local v3, start:I
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 234
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int v1, v4, v0

    .line 236
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
