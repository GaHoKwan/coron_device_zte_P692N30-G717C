.class public Lcom/itextpdf/text/pdf/codec/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private alphabet:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1299
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1324
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1325
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->breakLines:Z

    .line 1326
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    .line 1327
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->bufferLength:I

    .line 1328
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    .line 1329
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    .line 1330
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    .line 1331
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->options:I

    .line 1332
    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->getAlphabet(I)[B
    invoke-static {p2}, Lcom/itextpdf/text/pdf/codec/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->alphabet:[B

    .line 1333
    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/itextpdf/text/pdf/codec/Base64;->access$100(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->decodabet:[B

    .line 1334
    return-void

    :cond_0
    move v0, v2

    .line 1325
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1326
    goto :goto_1

    .line 1327
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 1345
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    if-gez v3, :cond_2

    .line 1346
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_4

    .line 1347
    new-array v0, v4, [B

    .line 1348
    .local v0, b3:[B
    const/4 v2, 0x0

    .line 1349
    .local v2, numBinaryBytes:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v4, :cond_1

    .line 1351
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1354
    .local v6, b:I
    if-ltz v6, :cond_0

    .line 1355
    int-to-byte v3, v6

    aput-byte v3, v0, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    add-int/lit8 v2, v2, 0x1

    .line 1349
    .end local v6           #b:I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v8

    .line 1362
    .local v8, e:Ljava/io/IOException;
    if-nez v9, :cond_0

    .line 1363
    throw v8

    .line 1368
    .end local v8           #e:Ljava/io/IOException;
    :cond_1
    if-lez v2, :cond_3

    .line 1369
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->options:I

    move v4, v1

    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/codec/Base64;->access$200([BII[BII)[B

    .line 1370
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    .line 1371
    iput v11, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->numSigBytes:I

    .line 1410
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_2
    :goto_1
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    if-ltz v3, :cond_e

    .line 1412
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_b

    move v1, v10

    .line 1429
    :goto_2
    return v1

    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v9       #i:I
    :cond_3
    move v1, v10

    .line 1374
    goto :goto_2

    .line 1380
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_4
    new-array v7, v11, [B

    .line 1381
    .local v7, b4:[B
    const/4 v9, 0x0

    .line 1382
    .restart local v9       #i:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_7

    .line 1384
    const/4 v6, 0x0

    .line 1385
    .restart local v6       #b:I
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1386
    if-ltz v6, :cond_6

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_5

    .line 1388
    :cond_6
    if-gez v6, :cond_8

    .line 1394
    .end local v6           #b:I
    :cond_7
    if-ne v9, v11, :cond_9

    .line 1395
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->options:I

    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->decode4to3([BI[BII)I
    invoke-static {v7, v1, v3, v1, v4}, Lcom/itextpdf/text/pdf/codec/Base64;->access$300([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->numSigBytes:I

    .line 1396
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    goto :goto_1

    .line 1391
    .restart local v6       #b:I
    :cond_8
    int-to-byte v3, v6

    aput-byte v3, v7, v9

    .line 1382
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1398
    .end local v6           #b:I
    :cond_9
    if-nez v9, :cond_a

    move v1, v10

    .line 1399
    goto :goto_2

    .line 1403
    :cond_a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "improperly.padded.base64.input"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1415
    .end local v7           #b4:[B
    .end local v9           #i:I
    :cond_b
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_c

    .line 1416
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    .line 1417
    const/16 v1, 0xa

    goto :goto_2

    .line 1420
    :cond_c
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    .line 1424
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1426
    .restart local v6       #b:I
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_d

    .line 1427
    iput v10, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    .line 1429
    :cond_d
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1437
    .end local v6           #b:I
    :cond_e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "error.in.base64.code.reading.stream"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1457
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1458
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->read()I

    move-result v0

    .line 1463
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 1464
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    if-nez v1, :cond_1

    .line 1466
    const/4 v1, -0x1

    .line 1470
    .end local v0           #b:I
    .end local v1           #i:I
    :cond_1
    return v1
.end method
