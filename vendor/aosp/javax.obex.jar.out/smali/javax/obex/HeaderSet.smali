.class public final Ljavax/obex/HeaderSet;
.super Ljava/lang/Object;
.source "HeaderSet.java"


# static fields
.field public static final APPLICATION_PARAMETER:I = 0x4c

.field public static final AUTH_CHALLENGE:I = 0x4d

.field public static final AUTH_RESPONSE:I = 0x4e

.field public static final BODY:I = 0x48

.field public static final CONNECTION_ID:I = 0xcb

.field public static final COUNT:I = 0xc0

.field public static final DESCRIPTION:I = 0x5

.field public static final END_OF_BODY:I = 0x49

.field public static final HTTP:I = 0x47

.field public static final LENGTH:I = 0xc3

.field public static final NAME:I = 0x1

.field public static final OBJECT_CLASS:I = 0x4f

.field public static final TARGET:I = 0x46

.field public static final TIME_4_BYTE:I = 0xc4

.field public static final TIME_ISO_8601:I = 0x44

.field public static final TYPE:I = 0x42

.field public static final WHO:I = 0x4a


# instance fields
.field private mAppParam:[B

.field public mAuthChall:[B

.field public mAuthResp:[B

.field private mByteTime:Ljava/util/Calendar;

.field private mByteUserDefined:[Ljava/lang/Byte;

.field public mConnectionID:[B

.field private mCount:Ljava/lang/Long;

.field private mDescription:Ljava/lang/String;

.field private mHttpHeader:[B

.field private mIntegerUserDefined:[Ljava/lang/Long;

.field private mIsoTime:Ljava/util/Calendar;

.field private mLength:Ljava/lang/Long;

.field private mName:Ljava/lang/String;

.field private mObjectClass:[B

.field private final mRandom:Ljava/security/SecureRandom;

.field private mSequenceUserDefined:[[B

.field private mTarget:[B

.field private mType:Ljava/lang/String;

.field private mUnicodeUserDefined:[Ljava/lang/String;

.field private mWho:[B

.field nonce:[B

.field public responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    .line 230
    new-array v0, v1, [[B

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    .line 231
    new-array v0, v1, [Ljava/lang/Byte;

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    .line 232
    new-array v0, v1, [Ljava/lang/Long;

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    .line 234
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    .line 235
    return-void
.end method


# virtual methods
.method public createAuthenticationChallenge(Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "realm"
    .parameter "userID"
    .parameter "access"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 602
    new-array v1, v3, [B

    iput-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    .line 603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 604
    iget-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v2, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    iget-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    invoke-static {v1, p1, p3, p2}, Ljavax/obex/ObexHelper;->computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 608
    return-void
.end method

.method public getHeader(I)Ljava/lang/Object;
    .locals 2
    .parameter "headerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    sparse-switch p1, :sswitch_data_0

    .line 473
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 474
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x30

    aget-object v0, v0, v1

    .line 486
    :goto_0
    return-object v0

    .line 448
    :sswitch_0
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    goto :goto_0

    .line 450
    :sswitch_1
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    goto :goto_0

    .line 452
    :sswitch_2
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    goto :goto_0

    .line 454
    :sswitch_3
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    goto :goto_0

    .line 456
    :sswitch_4
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    goto :goto_0

    .line 458
    :sswitch_5
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    goto :goto_0

    .line 460
    :sswitch_6
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 462
    :sswitch_7
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    goto :goto_0

    .line 464
    :sswitch_8
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    goto :goto_0

    .line 466
    :sswitch_9
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mWho:[B

    goto :goto_0

    .line 468
    :sswitch_a
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    goto :goto_0

    .line 470
    :sswitch_b
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    goto :goto_0

    .line 477
    :cond_0
    const/16 v0, 0x70

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 478
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v1, p1, -0x70

    aget-object v0, v0, v1

    goto :goto_0

    .line 481
    :cond_1
    const/16 v0, 0xb0

    if-lt p1, v0, :cond_2

    const/16 v0, 0xbf

    if-gt p1, v0, :cond_2

    .line 482
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    add-int/lit16 v1, p1, -0xb0

    aget-object v0, v0, v1

    goto :goto_0

    .line 485
    :cond_2
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_3

    const/16 v0, 0xff

    if-gt p1, v0, :cond_3

    .line 486
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v1, p1, -0xf0

    aget-object v0, v0, v1

    goto :goto_0

    .line 488
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Header Identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_6
        0x42 -> :sswitch_2
        0x44 -> :sswitch_4
        0x46 -> :sswitch_7
        0x47 -> :sswitch_8
        0x4a -> :sswitch_9
        0x4c -> :sswitch_b
        0x4f -> :sswitch_a
        0xc0 -> :sswitch_0
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_5
    .end sparse-switch
.end method

.method public getHeaderList()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc0

    .line 504
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 506
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 507
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 509
    :cond_0
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 510
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 512
    :cond_1
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 513
    const/16 v4, 0x42

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 515
    :cond_2
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 516
    const/16 v4, 0xc3

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 518
    :cond_3
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    if-eqz v4, :cond_4

    .line 519
    const/16 v4, 0x44

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 521
    :cond_4
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    if-eqz v4, :cond_5

    .line 522
    const/16 v4, 0xc4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    :cond_5
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 525
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 527
    :cond_6
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    if-eqz v4, :cond_7

    .line 528
    const/16 v4, 0x46

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    :cond_7
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    if-eqz v4, :cond_8

    .line 531
    const/16 v4, 0x47

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 533
    :cond_8
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mWho:[B

    if-eqz v4, :cond_9

    .line 534
    const/16 v4, 0x4a

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    :cond_9
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    if-eqz v4, :cond_a

    .line 537
    const/16 v4, 0x4c

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 539
    :cond_a
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    if-eqz v4, :cond_b

    .line 540
    const/16 v4, 0x4f

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 543
    :cond_b
    const/16 v1, 0x30

    .local v1, i:I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_d

    .line 544
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x30

    aget-object v4, v4, v5

    if-eqz v4, :cond_c

    .line 545
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 543
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_d
    const/16 v1, 0x70

    :goto_1
    const/16 v4, 0x80

    if-ge v1, v4, :cond_f

    .line 550
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v5, v1, -0x70

    aget-object v4, v4, v5

    if-eqz v4, :cond_e

    .line 551
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 549
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    :cond_f
    const/16 v1, 0xb0

    :goto_2
    if-ge v1, v6, :cond_11

    .line 556
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    add-int/lit16 v5, v1, -0xb0

    aget-object v4, v4, v5

    if-eqz v4, :cond_10

    .line 557
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 561
    :cond_11
    const/16 v1, 0xf0

    :goto_3
    const/16 v4, 0x100

    if-ge v1, v4, :cond_13

    .line 562
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v5, v1, -0xf0

    aget-object v4, v4, v5

    if-eqz v4, :cond_12

    .line 563
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 567
    :cond_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 568
    .local v0, headers:[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 570
    if-eqz v0, :cond_14

    array-length v4, v0

    if-nez v4, :cond_16

    .line 571
    :cond_14
    const/4 v3, 0x0

    .line 581
    :cond_15
    return-object v3

    .line 574
    :cond_16
    array-length v4, v0

    new-array v3, v4, [I

    .line 575
    .local v3, result:[I
    const/4 v1, 0x0

    :goto_4
    array-length v4, v0

    if-ge v1, v4, :cond_15

    .line 578
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iget v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 623
    new-instance v0, Ljava/io/IOException;

    const-string v1, "May not be called on a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    iget v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    return v0
.end method

.method public setHeader(ILjava/lang/Object;)V
    .locals 10
    .parameter "headerID"
    .parameter "headerValue"

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 251
    const-wide/16 v0, -0x1

    .line 253
    .local v0, temp:J
    sparse-switch p1, :sswitch_data_0

    .line 375
    const/16 v2, 0x30

    if-lt p1, v2, :cond_18

    const/16 v2, 0x3f

    if-gt p1, v2, :cond_18

    .line 376
    if-eqz p2, :cond_17

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_17

    .line 377
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unicode String User Defined must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :sswitch_0
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 256
    if-nez p2, :cond_0

    .line 257
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    .line 430
    .end local p2
    :goto_0
    return-void

    .line 260
    .restart local p2
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Count must be a Long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, p2

    .line 262
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 263
    cmp-long v2, v0, v6

    if-ltz v2, :cond_2

    cmp-long v2, v0, v8

    if-lez v2, :cond_3

    .line 264
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Count must be between 0 and 0xFFFFFFFF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_3
    check-cast p2, Ljava/lang/Long;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    goto :goto_0

    .line 269
    .restart local p2
    :sswitch_1
    if-eqz p2, :cond_4

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_4

    .line 270
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Name must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_4
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    goto :goto_0

    .line 275
    .restart local p2
    :sswitch_2
    if-eqz p2, :cond_5

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_5

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Type must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_5
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    goto :goto_0

    .line 281
    .restart local p2
    :sswitch_3
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_7

    .line 282
    if-nez p2, :cond_6

    .line 283
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    goto :goto_0

    .line 286
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be a Long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object v2, p2

    .line 288
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 289
    cmp-long v2, v0, v6

    if-ltz v2, :cond_8

    cmp-long v2, v0, v8

    if-lez v2, :cond_9

    .line 290
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be between 0 and 0xFFFFFFFF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_9
    check-cast p2, Ljava/lang/Long;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    goto :goto_0

    .line 295
    .restart local p2
    :sswitch_4
    if-eqz p2, :cond_a

    instance-of v2, p2, Ljava/util/Calendar;

    if-nez v2, :cond_a

    .line 296
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Time ISO 8601 must be a Calendar"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_a
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 301
    .restart local p2
    :sswitch_5
    if-eqz p2, :cond_b

    instance-of v2, p2, Ljava/util/Calendar;

    if-nez v2, :cond_b

    .line 302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Time 4 Byte must be a Calendar"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_b
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 307
    .restart local p2
    :sswitch_6
    if-eqz p2, :cond_c

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_c

    .line 308
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Description must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_c
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 313
    .restart local p2
    :sswitch_7
    if-nez p2, :cond_d

    .line 314
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    goto/16 :goto_0

    .line 316
    :cond_d
    instance-of v2, p2, [B

    if-nez v2, :cond_e

    .line 317
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Target must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move-object v2, p2

    .line 319
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    .line 320
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    iget-object v3, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 325
    :sswitch_8
    if-nez p2, :cond_f

    .line 326
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    goto/16 :goto_0

    .line 328
    :cond_f
    instance-of v2, p2, [B

    if-nez v2, :cond_10

    .line 329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    move-object v2, p2

    .line 331
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    .line 332
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    iget-object v3, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 337
    :sswitch_9
    if-nez p2, :cond_11

    .line 338
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mWho:[B

    goto/16 :goto_0

    .line 340
    :cond_11
    instance-of v2, p2, [B

    if-nez v2, :cond_12

    .line 341
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "WHO must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    move-object v2, p2

    .line 343
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Ljavax/obex/HeaderSet;->mWho:[B

    .line 344
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mWho:[B

    iget-object v3, p0, Ljavax/obex/HeaderSet;->mWho:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 349
    :sswitch_a
    if-nez p2, :cond_13

    .line 350
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    goto/16 :goto_0

    .line 352
    :cond_13
    instance-of v2, p2, [B

    if-nez v2, :cond_14

    .line 353
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Object Class must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    move-object v2, p2

    .line 355
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    .line 356
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    iget-object v3, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 361
    :sswitch_b
    if-nez p2, :cond_15

    .line 362
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    goto/16 :goto_0

    .line 364
    :cond_15
    instance-of v2, p2, [B

    if-nez v2, :cond_16

    .line 365
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Application Parameter must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    move-object v2, p2

    .line 368
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    .line 369
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    iget-object v3, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 380
    :cond_17
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x30

    check-cast p2, Ljava/lang/String;

    .end local p2
    aput-object p2, v2, v3

    goto/16 :goto_0

    .line 385
    .restart local p2
    :cond_18
    const/16 v2, 0x70

    if-lt p1, v2, :cond_1b

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_1b

    .line 387
    if-nez p2, :cond_19

    .line 388
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v3, p1, -0x70

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 390
    :cond_19
    instance-of v2, p2, [B

    if-nez v2, :cond_1a

    .line 391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Byte Sequence User Defined must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_1a
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v4, p1, -0x70

    move-object v2, p2

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    aput-object v2, v3, v4

    .line 395
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v3, p1, -0x70

    aget-object v2, v2, v3

    iget-object v3, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v4, p1, -0x70

    aget-object v3, v3, v4

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 402
    :cond_1b
    const/16 v2, 0xb0

    if-lt p1, v2, :cond_1d

    const/16 v2, 0xbf

    if-gt p1, v2, :cond_1d

    .line 403
    if-eqz p2, :cond_1c

    instance-of v2, p2, Ljava/lang/Byte;

    if-nez v2, :cond_1c

    .line 404
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ByteUser Defined must be a Byte"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_1c
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    add-int/lit16 v3, p1, -0xb0

    check-cast p2, Ljava/lang/Byte;

    .end local p2
    aput-object p2, v2, v3

    goto/16 :goto_0

    .line 412
    .restart local p2
    :cond_1d
    const/16 v2, 0xf0

    if-lt p1, v2, :cond_22

    const/16 v2, 0xff

    if-gt p1, v2, :cond_22

    .line 413
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_1f

    .line 414
    if-nez p2, :cond_1e

    .line 415
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v3, p1, -0xf0

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 418
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Integer User Defined must be a Long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    move-object v2, p2

    .line 420
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 421
    cmp-long v2, v0, v6

    if-ltz v2, :cond_20

    cmp-long v2, v0, v8

    if-lez v2, :cond_21

    .line 422
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Integer User Defined must be between 0 and 0xFFFFFFFF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_21
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v3, p1, -0xf0

    check-cast p2, Ljava/lang/Long;

    .end local p2
    aput-object p2, v2, v3

    goto/16 :goto_0

    .line 428
    .restart local p2
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Header Identifier"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_6
        0x42 -> :sswitch_2
        0x44 -> :sswitch_4
        0x46 -> :sswitch_7
        0x47 -> :sswitch_8
        0x4a -> :sswitch_9
        0x4c -> :sswitch_b
        0x4f -> :sswitch_a
        0xc0 -> :sswitch_0
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_5
    .end sparse-switch
.end method
