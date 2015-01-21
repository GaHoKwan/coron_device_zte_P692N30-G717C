.class public Lcom/itextpdf/text/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToArray([[Ljava/lang/Object;[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 3
    .parameter "original"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v1, 0x1

    new-array p0, v1, [[Ljava/lang/Object;

    .line 92
    aput-object p1, p0, v2

    .line 98
    .end local p0
    :goto_0
    return-object p0

    .line 95
    .restart local p0
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[Ljava/lang/Object;

    .line 96
    .local v0, original2:[[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length v1, p0

    aput-object p1, v0, v1

    move-object p0, v0

    .line 98
    goto :goto_0
.end method

.method public static checkTrueOrFalse(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 2
    .parameter "attributes"
    .parameter "key"

    .prologue
    .line 109
    const-string v0, "true"

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static convertFromUtf32(I)Ljava/lang/String;
    .locals 5
    .parameter "codePoint"

    .prologue
    const/high16 v0, 0x1

    .line 336
    if-ge p0, v0, :cond_0

    .line 337
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 338
    :cond_0
    sub-int/2addr p0, v0

    .line 339
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    div-int/lit16 v3, p0, 0x400

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit16 v3, p0, 0x400

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertToUtf32(CC)I
    .locals 2
    .parameter "highSurrogate"
    .parameter "lowSurrogate"

    .prologue
    .line 304
    const v0, 0xd800

    sub-int v0, p0, v0

    mul-int/lit16 v0, v0, 0x400

    add-int/2addr v0, p1

    const v1, 0xdc00

    sub-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static convertToUtf32(Ljava/lang/String;I)I
    .locals 2
    .parameter "text"
    .parameter "idx"

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xd800

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    const v1, 0xdc00

    sub-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static convertToUtf32([CI)I
    .locals 2
    .parameter "text"
    .parameter "idx"

    .prologue
    .line 315
    aget-char v0, p0, p1

    const v1, 0xd800

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    const v1, 0xdc00

    sub-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getKeySet(Ljava/util/Hashtable;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Hashtable",
            "<TK;TV;>;)",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    .local p0, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static final inchesToMillimeters(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 230
    const v0, 0x41cb3333

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final inchesToPoints(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 240
    const/high16 v0, 0x4290

    mul-float/2addr v0, p0

    return v0
.end method

.method public static isSurrogateHigh(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 251
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSurrogateLow(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 262
    const v0, 0xdc00

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSurrogatePair(Ljava/lang/String;I)Z
    .locals 2
    .parameter "text"
    .parameter "idx"

    .prologue
    const/4 v0, 0x0

    .line 275
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-le p1, v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/text/Utilities;->isSurrogateHigh(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/text/Utilities;->isSurrogateLow(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSurrogatePair([CI)Z
    .locals 2
    .parameter "text"
    .parameter "idx"

    .prologue
    const/4 v0, 0x0

    .line 290
    if-ltz p1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-le p1, v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-char v1, p0, p1

    invoke-static {v1}, Lcom/itextpdf/text/Utilities;->isSurrogateHigh(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    invoke-static {v1}, Lcom/itextpdf/text/Utilities;->isSurrogateLow(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final millimetersToInches(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 200
    const v0, 0x41cb3333

    div-float v0, p0, v0

    return v0
.end method

.method public static final millimetersToPoints(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 190
    invoke-static {p0}, Lcom/itextpdf/text/Utilities;->millimetersToInches(F)F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/text/Utilities;->inchesToPoints(F)F

    move-result v0

    return v0
.end method

.method public static final pointsToInches(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 220
    const/high16 v0, 0x4290

    div-float v0, p0, v0

    return v0
.end method

.method public static final pointsToMillimeters(F)F
    .locals 1
    .parameter "value"

    .prologue
    .line 210
    invoke-static {p0}, Lcom/itextpdf/text/Utilities;->pointsToInches(F)F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/text/Utilities;->inchesToMillimeters(F)F

    move-result v0

    return v0
.end method

.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v1, v2, [B

    .line 362
    .local v1, jsBytes:[B
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 363
    .local v0, f:Ljava/io/FileInputStream;
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 364
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static readFileToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itextpdf/text/Utilities;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static skip(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "is"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    :goto_0
    if-lez p1, :cond_0

    .line 176
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 177
    .local v0, n:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 181
    .end local v0           #n:J
    :cond_0
    return-void

    .line 179
    .restart local v0       #n:J
    :cond_1
    int-to-long v2, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    goto :goto_0
.end method

.method public static toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    goto :goto_0
.end method

.method public static unEscapeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"

    .prologue
    .line 118
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v2, bf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 120
    .local v5, s:[C
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 121
    aget-char v3, v5, v4

    .line 122
    .local v3, c:C
    const/16 v6, 0x25

    if-ne v3, v6, :cond_3

    .line 123
    add-int/lit8 v6, v4, 0x2

    array-length v7, v5

    if-lt v6, v7, :cond_0

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_0
    add-int/lit8 v6, v4, 0x1

    aget-char v6, v5, v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v0

    .line 128
    .local v0, a0:I
    add-int/lit8 v6, v4, 0x2

    aget-char v6, v5, v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v1

    .line 129
    .local v1, a1:I
    if-ltz v0, :cond_1

    if-gez v1, :cond_2

    .line 130
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 133
    :cond_2
    mul-int/lit8 v6, v0, 0x10

    add-int/2addr v6, v1

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    add-int/lit8 v4, v4, 0x2

    .line 135
    goto :goto_1

    .line 137
    .end local v0           #a0:I
    .end local v1           #a1:I
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 139
    .end local v3           #c:C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
