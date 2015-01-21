.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static final BASE64_SEP:Ljava/lang/String; = "="

.field private static final DECODED_REGEX:Ljava/lang/String; = "(=\\?)([A-Za-z0-9_-]*)\\?(?i)[b,q]\\?([^?])+(\\?=)"

.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 119
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 122
    .local v2, bytes:[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v4, is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 125
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 126
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_0
    move-exception v3

    .line 132
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 134
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 94
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 97
    .local v2, bytes:[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v4, is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 100
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 101
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    move-exception v3

    .line 107
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 109
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 25
    .parameter "body"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 295
    const-string v22, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, ms:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v16, sb:Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v19, sbQP:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v17, sbBase64:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 300
    .local v4, charset:Ljava/lang/String;
    const/4 v7, 0x0

    .line 301
    .local v7, encoding:Ljava/lang/String;
    const/16 v21, 0x0

    .line 302
    .local v21, textPiece:I
    move-object v2, v12

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move-object/from16 v18, v17

    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .local v18, sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v20, v19

    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .local v20, sbQP:Ljava/lang/StringBuilder;
    :goto_0
    if-ge v9, v10, :cond_10

    aget-object v15, v2, v9

    .line 303
    .local v15, s:Ljava/lang/String;
    add-int/lit8 v21, v21, 0x1

    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, b:I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    .line 306
    .local v5, e:I
    const/16 v22, 0x3f

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 308
    .local v13, qm1:I
    add-int/lit8 v22, v5, -0x2

    move/from16 v0, v22

    if-eq v13, v0, :cond_0

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_1

    :cond_0
    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .line 416
    .end local v3           #b:I
    .end local v5           #e:I
    .end local v13           #qm1:I
    .end local v15           #s:Ljava/lang/String;
    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .end local p0
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    :goto_1
    return-object p0

    .line 311
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v3       #b:I
    .restart local v5       #e:I
    .restart local v13       #qm1:I
    .restart local v15       #s:Ljava/lang/String;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_1
    const/16 v22, 0x3f

    add-int/lit8 v23, v13, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 312
    .local v14, qm2:I
    add-int/lit8 v22, v5, -0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_2

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .line 313
    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 315
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_2
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 316
    .local v11, mimeCharset:Ljava/lang/String;
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 317
    add-int/lit8 v22, v14, 0x1

    add-int/lit8 v23, v5, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, encodedText:Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    if-nez v4, :cond_4

    .line 322
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 323
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MIME charset \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\' in encoded word \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\' doesn\'t have a "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "corresponding Java charset"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 327
    :cond_3
    const/16 p0, 0x0

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 328
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_4
    const-string v22, "GB18030"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 329
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\',use GBK!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 330
    const-string v4, "GBK"

    .line 344
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_9

    .line 345
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 346
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Warning: Unknown encoding in encoded word \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 349
    :cond_6
    const/16 p0, 0x0

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 332
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 333
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 334
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\' (MIME charset \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\' in encoded word \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 339
    :cond_8
    const/16 p0, 0x0

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 353
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_9
    :try_start_0
    const-string v22, "Q"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 361
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_14

    .line 362
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    :goto_2
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_13

    .line 367
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v20

    .line 302
    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    :cond_a
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v18, v17

    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v20, v19

    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .line 371
    :cond_b
    :try_start_2
    const-string v22, "B"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 380
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_12

    .line 381
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 384
    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    :goto_4
    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v22, "="

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 387
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 390
    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    :goto_5
    :try_start_4
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 391
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 401
    :catch_0
    move-exception v8

    .line 403
    .local v8, ex:Ljava/io/UnsupportedEncodingException;
    :goto_6
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 404
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unsupported encoding in encoded word \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 407
    :cond_c
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 395
    .end local v8           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_d
    :try_start_5
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 396
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Warning: Unknown encoding in encoded word \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 399
    :cond_e
    const/16 p0, 0x0

    .end local p0
    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 408
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    .restart local p0
    :catch_1
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .line 409
    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .local v8, ex:Ljava/lang/RuntimeException;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    :goto_7
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 410
    sget-object v22, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Could not decode encoded word \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 413
    :cond_f
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 416
    .end local v3           #b:I
    .end local v5           #e:I
    .end local v6           #encodedText:Ljava/lang/String;
    .end local v8           #ex:Ljava/lang/RuntimeException;
    .end local v11           #mimeCharset:Ljava/lang/String;
    .end local v13           #qm1:I
    .end local v14           #qm2:I
    .end local v15           #s:Ljava/lang/String;
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 408
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v3       #b:I
    .restart local v5       #e:I
    .restart local v6       #encodedText:Ljava/lang/String;
    .restart local v11       #mimeCharset:Ljava/lang/String;
    .restart local v13       #qm1:I
    .restart local v14       #qm2:I
    .restart local v15       #s:Ljava/lang/String;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    .restart local p0
    :catch_2
    move-exception v8

    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto :goto_7

    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    goto :goto_7

    :catch_4
    move-exception v8

    goto :goto_7

    .line 401
    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :catch_5
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_6

    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :catch_6
    move-exception v8

    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_6

    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    :catch_7
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    goto/16 :goto_6

    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    :cond_11
    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_12
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_13
    move-object/from16 v19, v20

    .end local v20           #sbQP:Ljava/lang/StringBuilder;
    .restart local v19       #sbQP:Ljava/lang/StringBuilder;
    goto/16 :goto_3

    .end local v17           #sbBase64:Ljava/lang/StringBuilder;
    .end local v19           #sbQP:Ljava/lang/StringBuilder;
    .restart local v18       #sbBase64:Ljava/lang/StringBuilder;
    .restart local v20       #sbQP:Ljava/lang/StringBuilder;
    :cond_14
    move-object/from16 v17, v18

    .end local v18           #sbBase64:Ljava/lang/StringBuilder;
    .restart local v17       #sbBase64:Ljava/lang/StringBuilder;
    goto/16 :goto_2
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "body"

    .prologue
    .line 181
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWordsProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeEncodedWordsProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "body"

    .prologue
    .line 242
    const-string v17, "=?"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 243
    move-object/from16 v13, p0

    .line 244
    .local v13, resultString:Ljava/lang/String;
    const/4 v12, 0x0

    .line 245
    .local v12, properCharset:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/emailcommon/utility/Utility;->bytesFromUnknownString(Ljava/lang/String;)[B

    move-result-object v3

    .line 246
    .local v3, bytesOfUnkown:[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->isAllAscii(Ljava/io/InputStream;)Z

    move-result v8

    .line 247
    .local v8, isAscii:Z
    if-eqz v8, :cond_1

    .line 286
    .end local v3           #bytesOfUnkown:[B
    .end local v8           #isAscii:Z
    .end local v12           #properCharset:Ljava/lang/String;
    .end local v13           #resultString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v13

    .line 251
    .restart local v3       #bytesOfUnkown:[B
    .restart local v8       #isAscii:Z
    .restart local v12       #properCharset:Ljava/lang/String;
    .restart local v13       #resultString:Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->emailCharsetDetect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 252
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "decodeEncodedWordsProcess: Charset Detect Result : properCharset = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 254
    if-eqz v12, :cond_0

    .line 256
    :try_start_0
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v3, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13           #resultString:Ljava/lang/String;
    .local v14, resultString:Ljava/lang/String;
    move-object v13, v14

    .line 259
    .end local v14           #resultString:Ljava/lang/String;
    .restart local v13       #resultString:Ljava/lang/String;
    goto :goto_0

    .line 257
    :catch_0
    move-exception v5

    .line 258
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v3           #bytesOfUnkown:[B
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    .end local v8           #isAscii:Z
    .end local v12           #properCharset:Ljava/lang/String;
    .end local v13           #resultString:Ljava/lang/String;
    :cond_2
    const-string v17, "\t"

    const-string v18, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 265
    const-string v4, "(=\\?)([A-Za-z0-9_-]*)\\?(?i)[b,q]\\?([^?])+(\\?=)"

    .line 267
    .local v4, decodeReg:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 268
    .local v11, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 269
    .local v10, m:Ljava/util/regex/Matcher;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v6, encodedText:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 271
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\\s*"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 279
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 280
    .local v16, unencodeParts:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v15, v0

    .line 281
    .local v15, unencodeLen:I
    if-lez v15, :cond_5

    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 282
    .local v7, firstUnencodePart:Ljava/lang/String;
    :goto_2
    const-string v9, ""

    .line 283
    .local v9, lastUnencodePart:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_4

    add-int/lit8 v17, v15, -0x1

    aget-object v17, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 284
    add-int/lit8 v17, v15, -0x1

    aget-object v9, v16, v17

    .line 286
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 281
    .end local v7           #firstUnencodePart:Ljava/lang/String;
    .end local v9           #lastUnencodePart:Ljava/lang/String;
    :cond_5
    const-string v7, ""

    goto :goto_2
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, c:C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 172
    const-string v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 177
    .end local v0           #c:C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public static emailCharsetDetect(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11
    .parameter "in"

    .prologue
    const/4 v10, 0x0

    .line 199
    const/4 v7, 0x0

    .line 201
    .local v7, properCharset:Ljava/lang/String;
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector;

    invoke-direct {v1}, Lcom/ibm/icu/text/CharsetDetector;-><init>()V

    .line 203
    .local v1, cd:Lcom/ibm/icu/text/CharsetDetector;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Lcom/ibm/icu/text/CharsetDetector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/text/CharsetDetector;->detectAll()[Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v2

    .line 208
    .local v2, cm:[Lcom/ibm/icu/text/CharsetMatch;
    if-eqz v2, :cond_2

    array-length v8, v2

    if-lez v8, :cond_2

    .line 210
    move-object v0, v2

    .local v0, arr$:[Lcom/ibm/icu/text/CharsetMatch;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 211
    .local v6, match:Lcom/ibm/icu/text/CharsetMatch;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Charset Detect Result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/ibm/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    .end local v0           #arr$:[Lcom/ibm/icu/text/CharsetMatch;
    .end local v2           #cm:[Lcom/ibm/icu/text/CharsetMatch;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #match:Lcom/ibm/icu/text/CharsetMatch;
    :catch_0
    move-exception v3

    .line 205
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #arr$:[Lcom/ibm/icu/text/CharsetMatch;
    .restart local v2       #cm:[Lcom/ibm/icu/text/CharsetMatch;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_0
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lcom/ibm/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 215
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lcom/ibm/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v8

    .line 221
    .end local v0           #arr$:[Lcom/ibm/icu/text/CharsetMatch;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_2
    return-object v8

    .line 218
    .restart local v0       #arr$:[Lcom/ibm/icu/text/CharsetMatch;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lcom/ibm/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 219
    goto :goto_2

    .line 221
    .end local v0           #arr$:[Lcom/ibm/icu/text/CharsetMatch;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public static isAllAscii(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "in"

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, result:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 188
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 189
    const/4 v2, 0x0

    .line 195
    :goto_0
    return v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
