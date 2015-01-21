.class public Labq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:C

.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1242
    const-string v0, "file.separator"

    const-string v1, "/"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Labq;->a:C

    .line 1248
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    if-eqz v0, :cond_0

    .line 1252
    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :cond_0
    :goto_0
    sput-object v0, Labq;->a:Ljava/lang/String;

    .line 1258
    return-void

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter

    .prologue
    const/16 v13, 0x3a

    const/16 v12, 0x2f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1262
    .line 1263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1264
    sget-char v0, Labq;->a:C

    if-ne v0, v12, :cond_4

    move v0, v1

    .line 1271
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move v6, v1

    move v5, v1

    move v4, v0

    move v0, v1

    .line 1272
    :goto_1
    if-ge v6, v7, :cond_8

    .line 1273
    aget-char v9, v8, v6

    .line 1274
    sget-char v10, Labq;->a:C

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_0

    const/16 v10, 0x5c

    if-eq v9, v10, :cond_1

    :cond_0
    if-ne v9, v12, :cond_5

    .line 1277
    :cond_1
    if-eqz v5, :cond_2

    if-eq v6, v4, :cond_3

    :cond_2
    if-nez v5, :cond_b

    .line 1278
    :cond_3
    add-int/lit8 v5, v0, 0x1

    sget-char v9, Labq;->a:C

    aput-char v9, v8, v0

    move v0, v3

    move v14, v5

    move v5, v4

    move v4, v14

    .line 1272
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v14, v0

    move v0, v4

    move v4, v5

    move v5, v14

    goto :goto_1

    .line 1266
    :cond_4
    if-le v7, v2, :cond_c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_c

    move v0, v2

    .line 1267
    goto :goto_0

    .line 1283
    :cond_5
    if-ne v9, v13, :cond_7

    if-lez v4, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    aget-char v5, v8, v3

    sget-char v10, Labq;->a:C

    if-ne v5, v10, :cond_7

    :cond_6
    aget-char v5, v8, v1

    sget-char v10, Labq;->a:C

    if-ne v5, v10, :cond_7

    .line 1287
    add-int/lit8 v0, v0, -0x1

    aget-char v0, v8, v0

    aput-char v0, v8, v1

    move v0, v3

    move v4, v2

    .line 1292
    :cond_7
    add-int/lit8 v5, v0, 0x1

    aput-char v9, v8, v0

    move v0, v1

    move v14, v5

    move v5, v4

    move v4, v14

    .line 1293
    goto :goto_2

    .line 1297
    :cond_8
    if-eqz v5, :cond_a

    add-int/lit8 v3, v4, 0x1

    if-gt v0, v3, :cond_9

    if-ne v0, v2, :cond_a

    aget-char v2, v8, v1

    sget-char v3, Labq;->a:C

    if-eq v2, v3, :cond_a

    .line 1299
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 1302
    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_b
    move v14, v5

    move v5, v4

    move v4, v0

    move v0, v14

    goto :goto_2

    :cond_c
    move v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3
    .parameter

    .prologue
    .line 1306
    invoke-static {p0}, Labq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Labq;->a:C

    if-ne v1, v2, :cond_0

    .line 1309
    invoke-static {v0}, Labq;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 1311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 3
    .parameter

    .prologue
    .line 1315
    sget-object v0, Labq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1317
    :try_start_0
    sget-object v0, Labq;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1323
    :goto_0
    return-object v0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in get Bytes for CH path, MSG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->a(Ljava/lang/String;)V

    .line 1323
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
