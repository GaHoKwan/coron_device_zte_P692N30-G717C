.class public final Lcom/android/wifidirect/test/HeaderSet;
.super Ljava/lang/Object;
.source "HeaderSet.java"


# static fields
.field public static final ACTION_ID:I = 0x94

.field public static final APPLICATION_PARAMETER:I = 0x4c

.field public static final AUTH_CHALLENGE:I = 0x4d

.field public static final AUTH_RESPONSE:I = 0x4e

.field public static final BODY:I = 0x48

.field public static final CONNECTION_ID:I = 0xcb

.field public static final COUNT:I = 0xc0

.field public static final DESCRIPTION:I = 0x5

.field public static final DEST_NAME:I = 0x15

.field public static final END_OF_BODY:I = 0x49

.field public static final HTTP:I = 0x47

.field public static final LENGTH:I = 0xc3

.field public static final NAME:I = 0x1

.field public static final OBJECT_CLASS:I = 0x4f

.field public static final PERMISSION:I = 0xd6

.field public static final SINGLE_RESPONSE_MODE:I = 0x97

.field public static final SINGLE_RESPONSE_MODE_PARAMETER:I = 0x98

.field public static final TARGET:I = 0x46

.field public static final TIME_4_BYTE:I = 0xc4

.field public static final TIME_ISO_8601:I = 0x44

.field public static final TYPE:I = 0x42

.field public static final WHO:I = 0x4a


# instance fields
.field private mActionId:Ljava/lang/Byte;

.field private mAppParam:[B

.field public mAuthChall:[B

.field public mAuthResp:[B

.field private mByteTime:Ljava/util/Calendar;

.field private mByteUserDefined:[Ljava/lang/Byte;

.field public mConnectionID:[B

.field private mCount:Ljava/lang/Long;

.field private mDescription:Ljava/lang/String;

.field private mDestName:Ljava/lang/String;

.field private mHttpHeader:[B

.field private mIntegerUserDefined:[Ljava/lang/Long;

.field private mIsoTime:Ljava/util/Calendar;

.field private mLength:Ljava/lang/Long;

.field private mName:Ljava/lang/String;

.field private mObjectClass:[B

.field private mPermission:Ljava/lang/Long;

.field private final mRandom:Ljava/security/SecureRandom;

.field private mSequenceUserDefined:[[B

.field private mSingleRespMode:Ljava/lang/Byte;

.field private mSingleRespModeParam:Ljava/lang/Byte;

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

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    .line 276
    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mSequenceUserDefined:[[B

    .line 277
    new-array v0, v1, [Ljava/lang/Byte;

    iput-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    .line 278
    new-array v0, v1, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    .line 280
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    .line 281
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

    .line 714
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    .line 715
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/HeaderSet;->nonce:[B

    invoke-static {v1, p1, p3, p2}, Lcom/android/wifidirect/test/ObexHelper;->computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 720
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
    .line 534
    sparse-switch p1, :sswitch_data_0

    .line 571
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x30

    aget-object v0, v0, v1

    .line 584
    :goto_0
    return-object v0

    .line 536
    :sswitch_0
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mCount:Ljava/lang/Long;

    goto :goto_0

    .line 538
    :sswitch_1
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mActionId:Ljava/lang/Byte;

    goto :goto_0

    .line 540
    :sswitch_2
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mName:Ljava/lang/String;

    goto :goto_0

    .line 542
    :sswitch_3
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mDestName:Ljava/lang/String;

    goto :goto_0

    .line 544
    :sswitch_4
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mType:Ljava/lang/String;

    goto :goto_0

    .line 546
    :sswitch_5
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mLength:Ljava/lang/Long;

    goto :goto_0

    .line 548
    :sswitch_6
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mPermission:Ljava/lang/Long;

    goto :goto_0

    .line 550
    :sswitch_7
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    goto :goto_0

    .line 552
    :sswitch_8
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mByteTime:Ljava/util/Calendar;

    goto :goto_0

    .line 554
    :sswitch_9
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 556
    :sswitch_a
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mTarget:[B

    goto :goto_0

    .line 558
    :sswitch_b
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mHttpHeader:[B

    goto :goto_0

    .line 560
    :sswitch_c
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mWho:[B

    goto :goto_0

    .line 562
    :sswitch_d
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mObjectClass:[B

    goto :goto_0

    .line 564
    :sswitch_e
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mAppParam:[B

    goto :goto_0

    .line 566
    :sswitch_f
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mSingleRespMode:Ljava/lang/Byte;

    goto :goto_0

    .line 568
    :sswitch_10
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mSingleRespModeParam:Ljava/lang/Byte;

    goto :goto_0

    .line 575
    :cond_0
    const/16 v0, 0x70

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v1, p1, -0x70

    aget-object v0, v0, v1

    goto :goto_0

    .line 579
    :cond_1
    const/16 v0, 0xb0

    if-lt p1, v0, :cond_2

    const/16 v0, 0xbf

    if-gt p1, v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    add-int/lit16 v1, p1, -0xb0

    aget-object v0, v0, v1

    goto :goto_0

    .line 583
    :cond_2
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_3

    const/16 v0, 0xff

    if-gt p1, v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/android/wifidirect/test/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v1, p1, -0xf0

    aget-object v0, v0, v1

    goto :goto_0

    .line 586
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Header Identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_9
        0x15 -> :sswitch_3
        0x42 -> :sswitch_4
        0x44 -> :sswitch_7
        0x46 -> :sswitch_a
        0x47 -> :sswitch_b
        0x4a -> :sswitch_c
        0x4c -> :sswitch_e
        0x4f -> :sswitch_d
        0x94 -> :sswitch_1
        0x97 -> :sswitch_f
        0x98 -> :sswitch_10
        0xc0 -> :sswitch_0
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_8
        0xd6 -> :sswitch_6
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

    .line 602
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 604
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mCount:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 605
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mActionId:Ljava/lang/Byte;

    if-eqz v4, :cond_1

    .line 608
    const/16 v4, 0x94

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 611
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 613
    :cond_2
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mDestName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 614
    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 616
    :cond_3
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mType:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 617
    const/16 v4, 0x42

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 619
    :cond_4
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mLength:Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 620
    const/16 v4, 0xc3

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 622
    :cond_5
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mPermission:Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 623
    const/16 v4, 0xd6

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 625
    :cond_6
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    if-eqz v4, :cond_7

    .line 626
    const/16 v4, 0x44

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 628
    :cond_7
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mByteTime:Ljava/util/Calendar;

    if-eqz v4, :cond_8

    .line 629
    const/16 v4, 0xc4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 631
    :cond_8
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 632
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 634
    :cond_9
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mTarget:[B

    if-eqz v4, :cond_a

    .line 635
    const/16 v4, 0x46

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 637
    :cond_a
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mHttpHeader:[B

    if-eqz v4, :cond_b

    .line 638
    const/16 v4, 0x47

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 640
    :cond_b
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mWho:[B

    if-eqz v4, :cond_c

    .line 641
    const/16 v4, 0x4a

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 643
    :cond_c
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mAppParam:[B

    if-eqz v4, :cond_d

    .line 644
    const/16 v4, 0x4c

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 646
    :cond_d
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mObjectClass:[B

    if-eqz v4, :cond_e

    .line 647
    const/16 v4, 0x4f

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 649
    :cond_e
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mSingleRespMode:Ljava/lang/Byte;

    if-eqz v4, :cond_f

    .line 650
    const/16 v4, 0x97

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 652
    :cond_f
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mSingleRespModeParam:Ljava/lang/Byte;

    if-eqz v4, :cond_10

    .line 653
    const/16 v4, 0x98

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 655
    :cond_10
    const/16 v1, 0x30

    .local v1, i:I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_12

    .line 656
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x30

    aget-object v4, v4, v5

    if-eqz v4, :cond_11

    .line 657
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 655
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_12
    const/16 v1, 0x70

    :goto_1
    const/16 v4, 0x80

    if-ge v1, v4, :cond_14

    .line 662
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v5, v1, -0x70

    aget-object v4, v4, v5

    if-eqz v4, :cond_13

    .line 663
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 661
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 667
    :cond_14
    const/16 v1, 0xb0

    :goto_2
    if-ge v1, v6, :cond_16

    .line 668
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    add-int/lit16 v5, v1, -0xb0

    aget-object v4, v4, v5

    if-eqz v4, :cond_15

    .line 669
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 667
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 673
    :cond_16
    const/16 v1, 0xf0

    :goto_3
    const/16 v4, 0x100

    if-ge v1, v4, :cond_18

    .line 674
    iget-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v5, v1, -0xf0

    aget-object v4, v4, v5

    if-eqz v4, :cond_17

    .line 675
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 673
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 679
    :cond_18
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 680
    .local v0, headers:[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 682
    if-eqz v0, :cond_19

    array-length v4, v0

    if-nez v4, :cond_1b

    .line 683
    :cond_19
    const/4 v3, 0x0

    .line 693
    :cond_1a
    return-object v3

    .line 686
    :cond_1b
    array-length v4, v0

    new-array v3, v4, [I

    .line 687
    .local v3, result:[I
    const/4 v1, 0x0

    :goto_4
    array-length v4, v0

    if-ge v1, v4, :cond_1a

    .line 690
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 687
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
    .line 734
    iget v0, p0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 735
    new-instance v0, Ljava/io/IOException;

    const-string v1, "May not be called on a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_0
    iget v0, p0, Lcom/android/wifidirect/test/HeaderSet;->responseCode:I

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

    .line 297
    const-wide/16 v0, -0x1

    .line 299
    .local v0, temp:J
    sparse-switch p1, :sswitch_data_0

    .line 463
    const/16 v2, 0x30

    if-lt p1, v2, :cond_20

    const/16 v2, 0x3f

    if-gt p1, v2, :cond_20

    .line 464
    if-eqz p2, :cond_1f

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 465
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unicode String User Defined must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :sswitch_0
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 302
    if-nez p2, :cond_0

    .line 303
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mCount:Ljava/lang/Long;

    .line 518
    .end local p2
    :goto_0
    return-void

    .line 306
    .restart local p2
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Count must be a Long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, p2

    .line 308
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 309
    cmp-long v2, v0, v6

    if-ltz v2, :cond_2

    cmp-long v2, v0, v8

    if-lez v2, :cond_3

    .line 310
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Count must be between 0 and 0xFFFFFFFF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_3
    check-cast p2, Ljava/lang/Long;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mCount:Ljava/lang/Long;

    goto :goto_0

    .line 315
    .restart local p2
    :sswitch_1
    if-eqz p2, :cond_4

    instance-of v2, p2, Ljava/lang/Byte;

    if-nez v2, :cond_4

    .line 316
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Action Id must be a Byte"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_4
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mActionId:Ljava/lang/Byte;

    goto :goto_0

    .line 323
    .restart local p2
    :sswitch_2
    if-eqz p2, :cond_5

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_5

    .line 324
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Name must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_5
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mName:Ljava/lang/String;

    goto :goto_0

    .line 329
    .restart local p2
    :sswitch_3
    if-eqz p2, :cond_6

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_6

    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Name must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_6
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mDestName:Ljava/lang/String;

    goto :goto_0

    .line 336
    .restart local p2
    :sswitch_4
    if-eqz p2, :cond_7

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_7

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Type must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_7
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mType:Ljava/lang/String;

    goto :goto_0

    .line 342
    .restart local p2
    :sswitch_5
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_9

    .line 343
    if-nez p2, :cond_8

    .line 344
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mPermission:Ljava/lang/Long;

    goto :goto_0

    .line 347
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be a Long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move-object v2, p2

    .line 349
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 350
    cmp-long v2, v0, v6

    if-ltz v2, :cond_a

    cmp-long v2, v0, v8

    if-lez v2, :cond_b

    .line 351
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be between 0 and 0xFFFFFFFF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move-object v2, p2

    .line 353
    check-cast v2, Ljava/lang/Long;

    iput-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mPermission:Ljava/lang/Long;

    .line 355
    :sswitch_6
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_d

    .line 356
    if-nez p2, :cond_c

    .line 357
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mLength:Ljava/lang/Long;

    goto/16 :goto_0

    .line 360
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be a Long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    move-object v2, p2

    .line 362
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 363
    cmp-long v2, v0, v6

    if-ltz v2, :cond_e

    cmp-long v2, v0, v8

    if-lez v2, :cond_f

    .line 364
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be between 0 and 0xFFFFFFFF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_f
    check-cast p2, Ljava/lang/Long;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mLength:Ljava/lang/Long;

    goto/16 :goto_0

    .line 369
    .restart local p2
    :sswitch_7
    if-eqz p2, :cond_10

    instance-of v2, p2, Ljava/util/Calendar;

    if-nez v2, :cond_10

    .line 370
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Time ISO 8601 must be a Calendar"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    :cond_10
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 375
    .restart local p2
    :sswitch_8
    if-eqz p2, :cond_11

    instance-of v2, p2, Ljava/util/Calendar;

    if-nez v2, :cond_11

    .line 376
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Time 4 Byte must be a Calendar"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :cond_11
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mByteTime:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 381
    .restart local p2
    :sswitch_9
    if-eqz p2, :cond_12

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_12

    .line 382
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Description must be a String"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_12
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 387
    .restart local p2
    :sswitch_a
    if-nez p2, :cond_13

    .line 388
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mTarget:[B

    goto/16 :goto_0

    .line 390
    :cond_13
    instance-of v2, p2, [B

    if-nez v2, :cond_14

    .line 391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Target must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    move-object v2, p2

    .line 393
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mTarget:[B

    .line 394
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mTarget:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/HeaderSet;->mTarget:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 399
    :sswitch_b
    if-nez p2, :cond_15

    .line 400
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mHttpHeader:[B

    goto/16 :goto_0

    .line 402
    :cond_15
    instance-of v2, p2, [B

    if-nez v2, :cond_16

    .line 403
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    move-object v2, p2

    .line 405
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mHttpHeader:[B

    .line 406
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mHttpHeader:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/HeaderSet;->mHttpHeader:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 411
    :sswitch_c
    if-nez p2, :cond_17

    .line 412
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mWho:[B

    goto/16 :goto_0

    .line 414
    :cond_17
    instance-of v2, p2, [B

    if-nez v2, :cond_18

    .line 415
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "WHO must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    move-object v2, p2

    .line 417
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mWho:[B

    .line 418
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mWho:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/HeaderSet;->mWho:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 423
    :sswitch_d
    if-nez p2, :cond_19

    .line 424
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mObjectClass:[B

    goto/16 :goto_0

    .line 426
    :cond_19
    instance-of v2, p2, [B

    if-nez v2, :cond_1a

    .line 427
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Object Class must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    move-object v2, p2

    .line 429
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mObjectClass:[B

    .line 430
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mObjectClass:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/HeaderSet;->mObjectClass:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 435
    :sswitch_e
    if-nez p2, :cond_1b

    .line 436
    iput-object v4, p0, Lcom/android/wifidirect/test/HeaderSet;->mAppParam:[B

    goto/16 :goto_0

    .line 438
    :cond_1b
    instance-of v2, p2, [B

    if-nez v2, :cond_1c

    .line 439
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Application Parameter must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    move-object v2, p2

    .line 442
    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mAppParam:[B

    .line 443
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mAppParam:[B

    iget-object v3, p0, Lcom/android/wifidirect/test/HeaderSet;->mAppParam:[B

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 448
    :sswitch_f
    if-eqz p2, :cond_1d

    instance-of v2, p2, Ljava/lang/Byte;

    if-nez v2, :cond_1d

    .line 449
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Single Response Mode must be a Byte"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_1d
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mSingleRespMode:Ljava/lang/Byte;

    goto/16 :goto_0

    .line 455
    .restart local p2
    :sswitch_10
    if-eqz p2, :cond_1e

    instance-of v2, p2, Ljava/lang/Byte;

    if-nez v2, :cond_1e

    .line 456
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Single Response Mode Parameter must be a Byte"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :cond_1e
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    iput-object p2, p0, Lcom/android/wifidirect/test/HeaderSet;->mSingleRespModeParam:Ljava/lang/Byte;

    goto/16 :goto_0

    .line 468
    .restart local p2
    :cond_1f
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x30

    check-cast p2, Ljava/lang/String;

    .end local p2
    aput-object p2, v2, v3

    goto/16 :goto_0

    .line 473
    .restart local p2
    :cond_20
    const/16 v2, 0x70

    if-lt p1, v2, :cond_23

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_23

    .line 475
    if-nez p2, :cond_21

    .line 476
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v3, p1, -0x70

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 478
    :cond_21
    instance-of v2, p2, [B

    if-nez v2, :cond_22

    .line 479
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Byte Sequence User Defined must be a byte array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_22
    iget-object v3, p0, Lcom/android/wifidirect/test/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v4, p1, -0x70

    move-object v2, p2

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    new-array v2, v2, [B

    aput-object v2, v3, v4

    .line 483
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v3, p1, -0x70

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/wifidirect/test/HeaderSet;->mSequenceUserDefined:[[B

    add-int/lit8 v4, p1, -0x70

    aget-object v3, v3, v4

    array-length v3, v3

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 490
    :cond_23
    const/16 v2, 0xb0

    if-lt p1, v2, :cond_25

    const/16 v2, 0xbf

    if-gt p1, v2, :cond_25

    .line 491
    if-eqz p2, :cond_24

    instance-of v2, p2, Ljava/lang/Byte;

    if-nez v2, :cond_24

    .line 492
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ByteUser Defined must be a Byte"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_24
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    add-int/lit16 v3, p1, -0xb0

    check-cast p2, Ljava/lang/Byte;

    .end local p2
    aput-object p2, v2, v3

    goto/16 :goto_0

    .line 500
    .restart local p2
    :cond_25
    const/16 v2, 0xf0

    if-lt p1, v2, :cond_2a

    const/16 v2, 0xff

    if-gt p1, v2, :cond_2a

    .line 501
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_27

    .line 502
    if-nez p2, :cond_26

    .line 503
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v3, p1, -0xf0

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 506
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Integer User Defined must be a Long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    move-object v2, p2

    .line 508
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 509
    cmp-long v2, v0, v6

    if-ltz v2, :cond_28

    cmp-long v2, v0, v8

    if-lez v2, :cond_29

    .line 510
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Integer User Defined must be between 0 and 0xFFFFFFFF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    :cond_29
    iget-object v2, p0, Lcom/android/wifidirect/test/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    add-int/lit16 v3, p1, -0xf0

    check-cast p2, Ljava/lang/Long;

    .end local p2
    aput-object p2, v2, v3

    goto/16 :goto_0

    .line 516
    .restart local p2
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Header Identifier"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_9
        0x15 -> :sswitch_3
        0x42 -> :sswitch_4
        0x44 -> :sswitch_7
        0x46 -> :sswitch_a
        0x47 -> :sswitch_b
        0x4a -> :sswitch_c
        0x4c -> :sswitch_e
        0x4f -> :sswitch_d
        0x94 -> :sswitch_1
        0x97 -> :sswitch_f
        0x98 -> :sswitch_10
        0xc0 -> :sswitch_0
        0xc3 -> :sswitch_6
        0xc4 -> :sswitch_8
        0xd6 -> :sswitch_5
    .end sparse-switch
.end method
