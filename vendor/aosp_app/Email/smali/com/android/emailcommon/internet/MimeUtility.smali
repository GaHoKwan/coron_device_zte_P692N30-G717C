.class public Lcom/android/emailcommon/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final FETCH_BODY_SIZE_LIMIT:I = 0x180000

.field private static final MESSAGE_RFC822_SUFFIX:Ljava/lang/String; = " (msg)"

.field public static final MIME_TYPE_RFC822:Ljava/lang/String; = "message/rfc822"

.field private static final PATTERN_CR_OR_LF_OR_HTAB:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "\r|\n|\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF_OR_HTAB:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .parameter "part"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 478
    .local p1, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, disposition:Ljava/lang/String;
    const/4 v9, 0x0

    .line 480
    .local v9, dispositionType:Ljava/lang/String;
    const/4 v8, 0x0

    .line 481
    .local v8, dispositionFilename:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 482
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 483
    const-string v17, "filename"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 488
    :cond_0
    if-nez v8, :cond_1

    .line 489
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, contentType:Ljava/lang/String;
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 492
    .end local v6           #contentType:Ljava/lang/String;
    :cond_1
    const-string v17, "attachment"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 494
    .local v3, attachmentDisposition:Z
    if-eqz v9, :cond_2

    const-string v17, "inline"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_2
    const/4 v13, 0x1

    .line 498
    .local v13, inlineDisposition:Z
    :goto_0
    if-nez v3, :cond_3

    if-eqz v8, :cond_7

    if-nez v13, :cond_7

    :cond_3
    const/4 v2, 0x1

    .line 502
    .local v2, attachment:Z
    :goto_1
    if-eqz v13, :cond_8

    if-eqz v8, :cond_8

    const/4 v12, 0x1

    .line 505
    .local v12, inline:Z
    :goto_2
    if-nez v2, :cond_4

    if-eqz v12, :cond_9

    :cond_4
    const/4 v4, 0x1

    .line 507
    .local v4, attachmentOrInline:Z
    :goto_3
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/emailcommon/mail/Multipart;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 511
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/internet/MimeMultipart;

    .line 512
    .local v16, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const/4 v10, 0x0

    .line 513
    .local v10, foundHtml:Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v14

    .line 514
    .local v14, mCountOfmp:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/internet/MimeMultipart;->getSubTypeForTest()Ljava/lang/String;

    move-result-object v17

    const-string v18, "alternative"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 515
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    if-ge v11, v14, :cond_5

    .line 516
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v17

    const-string v18, "text/html"

    invoke-virtual/range {v17 .. v18}, Lcom/android/emailcommon/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 517
    const/4 v10, 0x1

    .line 522
    .end local v11           #i:I
    :cond_5
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v14, :cond_d

    .line 524
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v5

    .line 526
    .local v5, bp:Lcom/android/emailcommon/mail/BodyPart;
    if-eqz v10, :cond_b

    const-string v17, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 522
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 494
    .end local v2           #attachment:Z
    .end local v4           #attachmentOrInline:Z
    .end local v5           #bp:Lcom/android/emailcommon/mail/BodyPart;
    .end local v10           #foundHtml:Z
    .end local v11           #i:I
    .end local v12           #inline:Z
    .end local v13           #inlineDisposition:Z
    .end local v14           #mCountOfmp:I
    .end local v16           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 498
    .restart local v13       #inlineDisposition:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 502
    .restart local v2       #attachment:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 505
    .restart local v12       #inline:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 515
    .restart local v4       #attachmentOrInline:Z
    .restart local v10       #foundHtml:Z
    .restart local v11       #i:I
    .restart local v14       #mCountOfmp:I
    .restart local v16       #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 529
    .restart local v5       #bp:Lcom/android/emailcommon/mail/BodyPart;
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 531
    .end local v5           #bp:Lcom/android/emailcommon/mail/BodyPart;
    .end local v10           #foundHtml:Z
    .end local v11           #i:I
    .end local v14           #mCountOfmp:I
    .end local v16           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_c
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/emailcommon/mail/Message;

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 534
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v15

    check-cast v15, Lcom/android/emailcommon/mail/Message;

    .line 535
    .local v15, message:Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 550
    .end local v15           #message:Lcom/android/emailcommon/mail/Message;
    :cond_d
    :goto_7
    return-void

    .line 536
    :cond_e
    if-nez v4, :cond_f

    const-string v17, "text/html"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 538
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 539
    :cond_f
    if-nez v4, :cond_10

    const-string v17, "text/plain"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 541
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 542
    :cond_10
    if-nez v4, :cond_11

    const-string v17, "message/rfc822"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 548
    :cond_11
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;
    .locals 6
    .parameter "in"
    .parameter "contentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 446
    new-instance v3, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v3}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 447
    .local v3, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v3}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 449
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 462
    :goto_0
    return-object v3

    .line 450
    :catch_0
    move-exception v0

    .line 454
    .local v0, bde:Landroid/util/Base64DataException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeBody Base64DataException Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 455
    .end local v0           #bde:Landroid/util/Base64DataException;
    :catch_1
    move-exception v1

    .line 456
    .local v1, ioe:Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeBody Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v3}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->deleteFile()V

    .line 458
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v4
.end method

.method public static findFirstPartByMimeType(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;
    .locals 6
    .parameter "part"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v5

    instance-of v5, v5, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v5, :cond_1

    .line 278
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Multipart;

    .line 279
    .local v3, multipart:Lcom/android/emailcommon/mail/Multipart;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 280
    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v0

    .line 281
    .local v0, bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->findFirstPartByMimeType(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v4

    .line 282
    .local v4, ret:Lcom/android/emailcommon/mail/Part;
    if-eqz v4, :cond_0

    .line 289
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v4           #ret:Lcom/android/emailcommon/mail/Part;
    :goto_1
    return-object v4

    .line 279
    .restart local v0       #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #multipart:Lcom/android/emailcommon/mail/Multipart;
    .restart local v4       #ret:Lcom/android/emailcommon/mail/Part;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v4           #ret:Lcom/android/emailcommon/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 287
    goto :goto_1

    .line 289
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findPartByContentId(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;
    .locals 7
    .parameter "part"
    .parameter "contentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v6, :cond_1

    .line 294
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Multipart;

    .line 295
    .local v4, multipart:Lcom/android/emailcommon/mail/Multipart;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 296
    invoke-virtual {v4, v3}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v0

    .line 297
    .local v0, bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->findPartByContentId(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v5

    .line 298
    .local v5, ret:Lcom/android/emailcommon/mail/Part;
    if-eqz v5, :cond_0

    .line 307
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v5           #ret:Lcom/android/emailcommon/mail/Part;
    :goto_1
    return-object v5

    .line 295
    .restart local v0       #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipart:Lcom/android/emailcommon/mail/Multipart;
    .restart local v5       #ret:Lcom/android/emailcommon/mail/Part;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v5           #ret:Lcom/android/emailcommon/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, cid:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, p0

    .line 305
    goto :goto_1

    .line 307
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 139
    const/16 v2, 0x4c

    .line 141
    .local v2, maxCharacters:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 142
    .local v1, length:I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    .line 152
    .end local p0
    :goto_0
    return-object p0

    .line 145
    .restart local p0
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v4, sb:Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 148
    .local v0, lastLineBreak:I
    invoke-static {p0, v7}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 150
    .local v5, wspIdx:I
    :goto_1
    if-ne v5, v1, :cond_1

    .line 151
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 155
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 157
    .local v3, nextWspIdx:I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 158
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move v0, v5

    .line 163
    :cond_2
    move v5, v3

    .line 164
    goto :goto_1
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 92
    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    .line 113
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, encoded:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateAttName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "mimeType"

    .prologue
    .line 554
    move-object v0, p0

    .line 555
    .local v0, attName:Ljava/lang/String;
    const-string v1, "message/rfc822"

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (msg)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_0
    return-object v0
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "header"
    .parameter "name"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 202
    if-nez p0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v4

    .line 205
    :cond_1
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, parts:[Ljava/lang/String;
    const-string v8, ";"

    invoke-static {v7, v8}, Lcom/android/emailcommon/internet/MimeUtility;->mergeIncorrectlySplit([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 207
    if-nez p1, :cond_2

    .line 208
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, lowerCaseName:Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 212
    .local v6, part:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 214
    const-string v8, "="

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, parameterParts:[Ljava/lang/String;
    array-length v8, v5

    if-lt v8, v11, :cond_0

    .line 218
    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, parameter:Ljava/lang/String;
    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 211
    .end local v4           #parameter:Ljava/lang/String;
    .end local v5           #parameterParts:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "in"
    .parameter "contentTransferEncoding"

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 423
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 425
    const-string v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v0, in:Ljava/io/InputStream;
    move-object p0, v0

    .line 434
    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    :goto_0
    return-object p0

    .line 428
    :cond_1
    const-string v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    new-instance v0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .restart local v0       #in:Ljava/io/InputStream;
    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;
    .locals 10
    .parameter "part"

    .prologue
    .line 319
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 320
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 321
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 327
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 330
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    const-wide/32 v7, 0x180000

    invoke-static {v2, v5, v7, v8}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)I

    .line 331
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 332
    const/4 v2, 0x0

    .line 337
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 342
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_0
    if-nez v0, :cond_1

    .line 348
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->emailCharsetDetect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Body Stream charset is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-nez v0, :cond_1

    .line 351
    const-string v0, "ASCII"

    .line 357
    :cond_1
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 364
    :catch_0
    move-exception v4

    .line 369
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v4           #oom:Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 371
    :catch_1
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "fromIndex"

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 175
    .local v2, len:I
    move v1, p1

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 180
    .end local v0           #c:C
    .end local v1           #index:I
    :cond_0
    :goto_1
    return v1

    .line 175
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v1, v2

    .line 180
    goto :goto_1
.end method

.method public static mergeIncorrectlySplit([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "parts"
    .parameter "splitKey"

    .prologue
    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v4, mergedStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v1, currentString:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 238
    .local v6, shouldMerge:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 239
    aget-object v5, p0, v2

    .line 240
    .local v5, s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 242
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 243
    const/16 v7, 0x22

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 242
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    :cond_1
    rem-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 254
    if-nez v6, :cond_2

    add-int/lit8 v7, v2, 0x1

    array-length v8, p0

    if-ne v7, v8, :cond_3

    .line 255
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #currentString:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .restart local v1       #currentString:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 238
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_3
    aget-object v7, p0, v2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/4 v6, 0x1

    goto :goto_2

    .line 264
    :cond_4
    if-eqz v6, :cond_5

    .line 265
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 267
    :cond_5
    aget-object v7, p0, v2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    .end local v0           #count:I
    .end local v3           #j:I
    .end local v5           #s:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 390
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 392
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 405
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 406
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    const/4 v4, 0x1

    .line 410
    .end local v3           #matchType:Ljava/lang/String;
    :goto_1
    return v4

    .line 405
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v3           #matchType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 66
    if-nez p0, :cond_1

    .line 67
    const/4 p0, 0x0

    .line 74
    .local v0, patternMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 69
    .end local v0           #patternMatcher:Ljava/util/regex/Matcher;
    :cond_1
    sget-object v1, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF_OR_HTAB:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    .restart local v0       #patternMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 72
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
