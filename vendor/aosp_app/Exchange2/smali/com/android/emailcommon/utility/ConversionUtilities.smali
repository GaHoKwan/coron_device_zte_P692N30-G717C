.class public Lcom/android/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# static fields
.field private static final ATTACHMENT_NO_NAME:Ljava/lang/String; = "noname"

.field public static final BODY_QUOTED_PART_FORWARD:Ljava/lang/String; = "quoted-forward"

.field public static final BODY_QUOTED_PART_INTRO:Ljava/lang/String; = "quoted-intro"

.field public static final BODY_QUOTED_PART_REPLY:Ljava/lang/String; = "quoted-reply"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;I)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 16
    .parameter "localMessage"
    .parameter "part"
    .parameter "partLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 216
    .local v5, localAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, contentType:Ljava/lang/String;
    const-string v13, "name"

    invoke-static {v2, v13}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, name:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 219
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, contentDisposition:Ljava/lang/String;
    const-string v13, "filename"

    invoke-static {v1, v13}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .end local v1           #contentDisposition:Ljava/lang/String;
    :cond_0
    const-wide/16 v11, 0x0

    .line 225
    .local v11, size:J
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, disposition:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 227
    const-string v13, "size"

    invoke-static {v3, v13}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, s:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 229
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 235
    .end local v10           #s:Ljava/lang/String;
    :cond_1
    const-string v13, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 236
    .local v9, partIds:[Ljava/lang/String;
    if-eqz v9, :cond_6

    const/4 v13, 0x0

    aget-object v8, v9, v13

    .line 238
    .local v8, partId:Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_2

    .line 239
    const-string v7, "noname"

    .line 242
    :cond_2
    iput-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 243
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, mimeTypeString:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "name/plain"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "/"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 247
    :cond_3
    const/4 v13, 0x0

    invoke-static {v7, v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 248
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " update attachment\'s mimetype from name, result "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_1
    iput-wide v11, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 254
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 255
    const/4 v13, 0x0

    iput-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 257
    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 259
    iget-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-nez v13, :cond_4

    .line 260
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 262
    :cond_4
    const-string v13, "Content-Transfer-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, encoding:[Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 265
    const/4 v13, 0x0

    aget-object v13, v4, v13

    iput-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 270
    :goto_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v13, :cond_5

    .line 272
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 276
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Add attachment "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v5

    .line 236
    .end local v4           #encoding:[Ljava/lang/String;
    .end local v6           #mimeTypeString:Ljava/lang/String;
    .end local v8           #partId:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 251
    .restart local v6       #mimeTypeString:Ljava/lang/String;
    .restart local v8       #partId:Ljava/lang/String;
    :cond_7
    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .line 268
    .restart local v4       #encoding:[Ljava/lang/String;
    :cond_8
    const-string v13, "base64"

    iput-object v13, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    goto :goto_2
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "sb"
    .parameter "newText"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-object p0

    .line 64
    :cond_0
    if-nez p0, :cond_1

    .line 65
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 68
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    .locals 22
    .parameter "context"
    .parameter "part"
    .parameter "localAttachment"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 412
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 414
    .local v4, attachmentId:J
    const/4 v10, 0x0

    .line 416
    .local v10, in:Ljava/io/InputStream;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 422
    const/4 v15, 0x0

    .line 423
    .local v15, saveAs:Ljava/io/File;
    const/4 v13, 0x0

    .line 424
    .local v13, out:Ljava/io/FileOutputStream;
    const-wide/16 v7, -0x1

    .line 426
    .local v7, copySize:J
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v16

    .line 427
    .local v16, saveIn:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 428
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_0

    .line 429
    const-string v18, "saveAttachmentBody mkdirs failed."

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 432
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v15

    .line 434
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-result v18

    if-nez v18, :cond_1

    .line 435
    const-string v18, "saveAttachmentBody createNewFile failed."

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 437
    :cond_1
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 438
    .end local v13           #out:Ljava/io/FileOutputStream;
    .local v14, out:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v10, v14}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v7, v0

    .line 440
    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-gtz v18, :cond_6

    .line 441
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_2

    .line 442
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Delete file fail!AttachmetId is :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 447
    :cond_2
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    .line 448
    new-instance v18, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v19, 0xf

    invoke-direct/range {v18 .. v19}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 451
    :catch_0
    move-exception v11

    move-object v13, v14

    .line 452
    .end local v14           #out:Ljava/io/FileOutputStream;
    .end local v16           #saveIn:Ljava/io/File;
    .local v11, ioe:Ljava/io/IOException;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "saveAttachmentBody Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    .line 453
    if-eqz v15, :cond_3

    .line 454
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_3

    .line 455
    const-string v18, "saveAttachmentBody delete file failed."

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 458
    :cond_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    .end local v11           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_1
    if-eqz v10, :cond_4

    .line 461
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 463
    :cond_4
    if-eqz v13, :cond_5

    .line 464
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    throw v18

    .line 417
    .end local v7           #copySize:J
    .end local v13           #out:Ljava/io/FileOutputStream;
    .end local v15           #saveAs:Ljava/io/File;
    :catch_1
    move-exception v12

    .line 418
    .local v12, me:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "saveAttachmentBody get part body Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    .line 419
    new-instance v18, Ljava/io/IOException;

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 460
    .end local v12           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v7       #copySize:J
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #saveAs:Ljava/io/File;
    .restart local v16       #saveIn:Ljava/io/File;
    :cond_6
    if-eqz v10, :cond_7

    .line 461
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 463
    :cond_7
    if-eqz v14, :cond_8

    .line 464
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 469
    :cond_8
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, contentUriString:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "saveAttachmentBody Description size:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",Actual size:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p2

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 475
    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 478
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 479
    .local v9, cv:Landroid/content/ContentValues;
    const-string v18, "size"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    const-string v18, "contentUri"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v18, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 482
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 484
    .end local v4           #attachmentId:J
    .end local v6           #contentUriString:Ljava/lang/String;
    .end local v7           #copySize:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #in:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .end local v15           #saveAs:Ljava/io/File;
    .end local v16           #saveIn:Ljava/io/File;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_9
    return-void

    .line 460
    .restart local v4       #attachmentId:J
    .restart local v7       #copySize:J
    .restart local v10       #in:Ljava/io/InputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #saveAs:Ljava/io/File;
    .restart local v16       #saveIn:Ljava/io/File;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 451
    .end local v16           #saveIn:Ljava/io/File;
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method

.method public static saveOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 9
    .parameter "context"
    .parameter "localMessage"
    .parameter "part"
    .parameter "localAttachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 297
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 298
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 300
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 302
    .local v6, attachmentFoundInDb:Z
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 304
    .local v8, dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v8, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 307
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const/4 v6, 0x1

    .line 321
    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 322
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped, found db attachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v8           #dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 330
    if-nez v6, :cond_2

    .line 331
    invoke-virtual {p3, p0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 335
    :cond_2
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, p2, p3, v2, v3}, Lcom/android/emailcommon/utility/ConversionUtilities;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 343
    return-void

    .line 326
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 394
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    if-nez p0, :cond_2

    .line 398
    const-string p0, ""

    .line 400
    :cond_2
    if-nez p1, :cond_3

    .line 401
    const-string p1, ""

    .line 403
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateAttachmentUriFromSourceMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10
    .parameter "context"
    .parameter "sourceMessage"
    .parameter "localAttachment"

    .prologue
    const/4 v3, 0x0

    .line 353
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 354
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 356
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const/4 v6, 0x0

    .line 361
    .local v6, attachmentFoundInDb:Z
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 363
    .local v9, dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v9, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 366
    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    const/4 v6, 0x1

    .line 374
    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 375
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAttachmentUriFromSourceMessage, found db attachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .end local v9           #dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 381
    if-eqz v6, :cond_0

    .line 382
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v8, cv:Landroid/content/ContentValues;
    const-string v0, "contentUri"

    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2, p0, v8}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 379
    .end local v8           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 174
    const/4 v3, 0x1

    .line 175
    .local v3, partLocation:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 176
    .local v0, attachmentPart:Lcom/android/emailcommon/mail/Part;
    add-int/lit8 v3, v3, 0x1

    .line 177
    invoke-static {p1, v0, v3}, Lcom/android/emailcommon/utility/ConversionUtilities;->addOneAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;I)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 178
    .local v2, localAtt:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {p0, p1, v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->saveOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_0

    .line 180
    .end local v0           #attachmentPart:Lcom/android/emailcommon/mail/Part;
    .end local v2           #localAtt:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    return-void
.end method

.method public static updateAttachments(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    .local p1, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 192
    const/4 v2, 0x1

    .line 193
    .local v2, partLocation:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 194
    .local v0, attachmentPart:Lcom/android/emailcommon/mail/Part;
    add-int/lit8 v2, v2, 0x1

    .line 195
    invoke-static {p0, v0, v2}, Lcom/android/emailcommon/utility/ConversionUtilities;->addOneAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;I)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    goto :goto_0

    .line 197
    .end local v0           #attachmentPart:Lcom/android/emailcommon/mail/Part;
    :cond_0
    return-void
.end method

.method public static updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .locals 20
    .parameter "body"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 82
    .local p2, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 84
    const/4 v11, 0x0

    .line 85
    .local v11, sbHtml:Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .line 86
    .local v14, sbText:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 87
    .local v12, sbHtmlReply:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 88
    .local v15, sbTextReply:Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 90
    .local v13, sbIntroText:Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/mail/Part;

    .line 91
    .local v17, viewable:Lcom/android/emailcommon/mail/Part;
    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, text:Ljava/lang/String;
    const-string v18, "X-Android-Body-Quoted-Part"

    invoke-interface/range {v17 .. v18}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, replyTags:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 94
    .local v9, replyTag:Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 95
    const/16 v18, 0x0

    aget-object v9, v10, v18

    .line 98
    :cond_0
    const-string v18, "text/html"

    invoke-interface/range {v17 .. v17}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 100
    .local v4, isHtml:Z
    if-eqz v9, :cond_5

    .line 101
    const-string v18, "quoted-reply"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 102
    .local v7, isQuotedReply:Z
    const-string v18, "quoted-forward"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 103
    .local v5, isQuotedForward:Z
    const-string v18, "quoted-intro"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 105
    .local v6, isQuotedIntro:Z
    if-nez v7, :cond_1

    if-eqz v5, :cond_4

    .line 106
    :cond_1
    if-eqz v4, :cond_2

    .line 107
    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 112
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x4

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 113
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    if-eqz v7, :cond_3

    const/16 v18, 0x1

    :goto_2
    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto :goto_0

    .line 109
    :cond_2
    invoke-static/range {v15 .. v16}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    goto :goto_1

    .line 113
    :cond_3
    const/16 v18, 0x2

    goto :goto_2

    .line 118
    :cond_4
    if-eqz v6, :cond_5

    .line 119
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 120
    goto/16 :goto_0

    .line 125
    .end local v5           #isQuotedForward:Z
    .end local v6           #isQuotedIntro:Z
    .end local v7           #isQuotedReply:Z
    :cond_5
    if-eqz v4, :cond_6

    .line 126
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto/16 :goto_0

    .line 128
    :cond_6
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    goto/16 :goto_0

    .line 133
    .end local v4           #isHtml:Z
    .end local v9           #replyTag:Ljava/lang/String;
    .end local v10           #replyTags:[Ljava/lang/String;
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_7
    const/4 v8, 0x0

    .line 134
    .local v8, needConvert:Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 135
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 136
    .restart local v16       #text:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 137
    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 141
    .end local v16           #text:Ljava/lang/String;
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 142
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 143
    .restart local v16       #text:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 145
    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 147
    :cond_8
    if-eqz v8, :cond_9

    .line 148
    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/utility/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 151
    .end local v16           #text:Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-eqz v18, :cond_a

    .line 152
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 154
    :cond_a
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-eqz v18, :cond_b

    .line 155
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 157
    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-eqz v18, :cond_c

    .line 158
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 160
    :cond_c
    const/16 v18, 0x1

    return v18

    .line 139
    :cond_d
    const/4 v8, 0x1

    goto :goto_3
.end method
