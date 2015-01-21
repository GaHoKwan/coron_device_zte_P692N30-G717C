.class public Lcom/android/email/mail/store/imap/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_RAW_STREAM:Z = false

.field private static final LITERAL_KEEP_IN_MEMORY_THRESHOLD:I = 0x200000


# instance fields
.field private final mBufferReadUntil:Ljava/lang/StringBuilder;

.field private final mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

.field private final mIn:Lcom/android/email/PeekableInputStream;

.field private mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

.field private final mLiteralKeepInMemoryThreshold:I

.field private final mParseBareString:Ljava/lang/StringBuilder;

.field private final mResponsesToDestroy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V
    .locals 1
    .parameter "in"
    .parameter "discourseLogger"

    .prologue
    .line 97
    const/high16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V
    .locals 1
    .parameter "in"
    .parameter "discourseLogger"
    .parameter "literalKeepInMemoryThreshold"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, p1}, Lcom/android/email/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    .line 109
    iput-object p2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 110
    iput p3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    .line 111
    return-void
.end method

.method private charStr2bytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "str"

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 264
    .local v2, size:I
    new-array v0, v2, [B

    .line 265
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-object v0
.end method

.method private static newEOSException()Ljava/io/IOException;
    .locals 3

    .prologue
    .line 114
    const-string v0, "End of stream reached"

    .line 115
    .local v0, message:Ljava/lang/String;
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "Email"

    const-string v2, "End of stream reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "End of stream reached"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private onParseError(Ljava/lang/Exception;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 221
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 223
    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 229
    .end local v0           #b:I
    :cond_0
    :goto_1
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v2}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 231
    return-void

    .line 221
    .restart local v0       #b:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0           #b:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseBareString()Lcom/android/email/mail/store/imap/ImapString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 448
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 450
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 453
    .local v0, ch:I
    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    const/16 v2, 0x29

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_1

    const/16 v2, 0x25

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 466
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Expected string, none found."

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_2
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, s:Ljava/lang/String;
    const-string v2, "NIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    sget-object v2, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    .line 474
    :goto_1
    return-object v2

    :cond_3
    new-instance v2, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v2, v1}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 475
    .end local v1           #s:Ljava/lang/String;
    :cond_4
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_5

    .line 477
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 481
    :cond_5
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseElement()Lcom/android/email/mail/store/imap/ImapElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 416
    .local v0, next:I
    sparse-switch v0, :sswitch_data_0

    .line 434
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    :goto_0
    return-object v1

    .line 418
    :sswitch_0
    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_0

    .line 420
    :sswitch_1
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_0

    .line 422
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 423
    new-instance v1, Lcom/android/email/mail/store/imap/ImapSimpleString;

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseLiteral()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    goto :goto_0

    .line 427
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 428
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_0

    .line 431
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0

    .line 416
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_2
        0x28 -> :sswitch_0
        0x5b -> :sswitch_1
        0x7b -> :sswitch_3
    .end sparse-switch
.end method

.method private parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V
    .locals 3
    .parameter "list"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 490
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v1

    .line 491
    .local v1, next:I
    if-ne v1, p2, :cond_1

    .line 502
    :cond_0
    return-void

    .line 494
    :cond_1
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 500
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElement()Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 501
    .local v0, el:Lcom/android/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    goto :goto_0

    .line 498
    .end local v0           #el:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0
.end method

.method private parseList(CC)Lcom/android/email/mail/store/imap/ImapList;
    .locals 1
    .parameter "opening"
    .parameter "closing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 511
    new-instance v0, Lcom/android/email/mail/store/imap/ImapList;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapList;-><init>()V

    .line 512
    .local v0, list:Lcom/android/email/mail/store/imap/ImapList;
    invoke-direct {p0, v0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V

    .line 513
    invoke-virtual {p0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 514
    return-object v0
.end method

.method private parseLiteral()Lcom/android/email/mail/store/imap/ImapString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 518
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 521
    const/16 v3, 0x7d

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 525
    .local v2, size:I
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 526
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 527
    new-instance v0, Lcom/android/email/FixedLengthInputStream;

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, v3, v2}, Lcom/android/email/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 528
    .local v0, in:Lcom/android/email/FixedLengthInputStream;
    iget v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v2, v3, :cond_0

    .line 529
    new-instance v3, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 531
    :goto_0
    return-object v3

    .line 522
    .end local v0           #in:Lcom/android/email/FixedLengthInputStream;
    .end local v2           #size:I
    :catch_0
    move-exception v1

    .line 523
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid length in literal"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 531
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #in:Lcom/android/email/FixedLengthInputStream;
    .restart local v2       #size:I
    :cond_0
    new-instance v3, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_0
.end method

.method private parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5b

    const/16 v10, 0x20

    .line 331
    const/4 v3, 0x0

    .line 335
    .local v3, responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 336
    .local v0, ch:I
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 338
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 339
    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 342
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .local v4, responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1
    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    move-object v5, v4

    .line 346
    .local v5, responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .line 405
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_0
    if-eqz v3, :cond_0

    .line 407
    throw v3

    .line 411
    :cond_0
    return-object v5

    .line 350
    .end local v5           #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    const/16 v8, 0x2a

    if-ne v0, v8, :cond_4

    .line 351
    const/4 v7, 0x0

    .line 352
    .local v7, tag:Ljava/lang/String;
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 353
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 357
    :goto_1
    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_3
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    .line 360
    .local v1, firstString:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    .line 365
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_8

    .line 366
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 368
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 371
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v2

    .line 372
    .local v2, next:I
    if-ne v2, v9, :cond_2

    .line 373
    const/16 v8, 0x5b

    const/16 v9, 0x5d

    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    .line 374
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 375
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 380
    :cond_2
    const/4 v6, 0x0

    .line 381
    .local v6, rest:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    const-string v9, "ALERT"

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 382
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readBytesTilEol()Ljava/lang/String;

    move-result-object v6

    .line 387
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 389
    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v8, v6}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    .end local v2           #next:I
    .end local v6           #rest:Ljava/lang/String;
    :cond_3
    :goto_3
    move-object v5, v4

    .line 402
    .restart local v5       #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    goto :goto_0

    .line 355
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #responseToReturn:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v7           #tag:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x20

    :try_start_4
    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .restart local v7       #tag:Ljava/lang/String;
    goto :goto_1

    .line 384
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v1       #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v2       #next:I
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v6       #rest:Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 393
    .end local v2           #next:I
    .end local v6           #rest:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    invoke-direct {p0, v4, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 405
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v7           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v3, v4

    .end local v0           #ch:I
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_4
    if-eqz v3, :cond_7

    .line 407
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->destroy()V

    :cond_7
    throw v8

    .line 396
    .end local v3           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v0       #ch:I
    .restart local v1       #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v4       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v7       #tag:Ljava/lang/String;
    :cond_8
    const/16 v8, 0xd

    :try_start_6
    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 397
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 405
    .end local v0           #ch:I
    .end local v1           #firstString:Lcom/android/email/mail/store/imap/ImapString;
    .end local v4           #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v7           #tag:Ljava/lang/String;
    .restart local v3       #responseToDestroy:Lcom/android/email/mail/store/imap/ImapResponse;
    :catchall_1
    move-exception v8

    goto :goto_4
.end method

.method private peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->peek()I

    move-result v0

    .line 129
    .local v0, next:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 132
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->read()I

    move-result v0

    .line 143
    .local v0, next:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivedByte(I)V

    .line 147
    return v0
.end method


# virtual methods
.method public destroyResponses()V
    .locals 3

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 157
    .local v1, r:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapList;->destroy()V

    goto :goto_0

    .line 159
    .end local v1           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 160
    return-void
.end method

.method expect(C)V
    .locals 6
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 239
    .local v0, next:I
    if-eq p1, v0, :cond_0

    .line 240
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_0
    return-void
.end method

.method readBytesTilEol()Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v12, 0x0

    .line 273
    .local v12, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 274
    .local v2, byteStream:Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    .line 275
    .local v7, encoding:Ljava/lang/String;
    const/4 v8, 0x1

    .line 276
    .local v8, isDefault:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, charStr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->charStr2bytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 279
    .local v14, strBytes:[B
    const-string v11, "[^\\p{ASCII}]+"

    .line 280
    .local v11, regStr:Ljava/lang/String;
    const/4 v15, 0x2

    invoke-static {v11, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 282
    .local v9, match:Ljava/util/regex/Matcher;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 284
    .local v1, byteOutput:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 286
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/email/mail/store/imap/ImapResponseParser;->charStr2bytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 287
    .local v10, matchBytes:[B
    array-length v15, v10

    if-lez v15, :cond_0

    .line 288
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    .end local v10           #matchBytes:[B
    :catch_0
    move-exception v6

    .line 301
    .local v6, e:Ljava/io/IOException;
    :goto_1
    sget-boolean v15, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v15, :cond_1

    .line 302
    const-string v15, "Email"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readBytesTilEol#Error "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v6           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 306
    move-object v12, v4

    .line 308
    :cond_2
    return-object v12

    .line 291
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 292
    .local v5, checkBytes:[B
    array-length v15, v5

    if-eqz v15, :cond_1

    .line 293
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .local v3, byteStream:Ljava/io/ByteArrayInputStream;
    :try_start_2
    invoke-static {v3}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->emailCharsetDetect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 295
    if-eqz v7, :cond_4

    .line 296
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v14, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    .end local v12           #result:Ljava/lang/String;
    .local v13, result:Ljava/lang/String;
    const/4 v8, 0x0

    move-object v2, v3

    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    move-object v12, v13

    .end local v13           #result:Ljava/lang/String;
    .restart local v12       #result:Ljava/lang/String;
    goto :goto_2

    .line 300
    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v6

    move-object v2, v3

    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    :cond_4
    move-object v2, v3

    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 177
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 178
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_0
    sget-object v4, Lcom/android/email/service/MailService;->SYNCHRONIZE_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 192
    :try_start_1
    invoke-static {}, Lcom/android/email/service/MailService;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 193
    .local v2, wakeLock:Landroid/os/PowerManager$WakeLock;
    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 196
    const-string v3, "Email-MailService"

    const-string v5, "ImapResponse readResponse MailService.sWakeLock.acquire"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    const/4 v3, 0x0

    const-string v4, "BYE"

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    const-string v3, "Email"

    const-string v4, "Received BYE"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapList;->destroy()V

    .line 207
    new-instance v3, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;

    invoke-direct {v3}, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;-><init>()V

    throw v3

    .line 199
    .end local v2           #wakeLock:Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 184
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    sget-object v4, Lcom/android/email/service/MailService;->SYNCHRONIZE_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 192
    :try_start_4
    invoke-static {}, Lcom/android/email/service/MailService;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 193
    .restart local v2       #wakeLock:Landroid/os/PowerManager$WakeLock;
    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_2

    .line 195
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 196
    const-string v5, "Email-MailService"

    const-string v6, "ImapResponse readResponse MailService.sWakeLock.acquire"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 185
    .end local v2           #wakeLock:Landroid/os/PowerManager$WakeLock;
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 188
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 199
    .end local v0           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 209
    .restart local v2       #wakeLock:Landroid/os/PowerManager$WakeLock;
    :cond_3
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-object v1
.end method

.method readUntil(C)Ljava/lang/String;
    .locals 3
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 253
    .local v0, ch:I
    if-eq v0, p1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method readUntilEol()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, ret:Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 318
    return-object v0
.end method

.method public removeUpdateUICallback()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    .line 541
    return-void
.end method

.method public setUpdateUICallback(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    .line 537
    return-void
.end method
