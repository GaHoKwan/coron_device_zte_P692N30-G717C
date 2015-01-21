.class abstract Lcom/android/internal/telephony/cdma/utk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAdress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 309
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 310
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 311
    .local v1, length:I
    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 314
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, -0x1

    :try_start_0
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 320
    :goto_0
    return-object v4

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 320
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 287
    if-eqz p0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 289
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 290
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 291
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 293
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utkStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 302
    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :goto_0
    return-object v4

    .line 295
    .restart local v1       #length:I
    .restart local v2       #rawValue:[B
    .restart local v3       #valueIndex:I
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 299
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v4, "Defualt Message"

    goto :goto_0

    .line 302
    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :cond_1
    const-string v4, "Defualt Message"

    goto :goto_0
.end method

.method static retrieveBearerDesc(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/BearerDescription;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;
    const/4 v1, 0x0

    .line 506
    .local v1, bearerParams:[B
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 507
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 508
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v7

    .line 510
    .local v7, valueLen:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v8, v4, v5

    and-int/lit16 v2, v8, 0xff

    .line 512
    .local v2, bearerType:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 513
    add-int/lit8 v8, v7, -0x1

    new-array v1, v8, [B

    .line 514
    const/4 v8, 0x0

    add-int/lit8 v9, v7, -0x1

    invoke-static {v4, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .end local v0           #bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;
    invoke-direct {v0, v7, v2, v1}, Lcom/android/internal/telephony/cdma/utk/BearerDescription;-><init>(II[B)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .restart local v0       #bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;
    return-object v0

    .line 519
    .end local v0           #bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;
    .end local v2           #bearerType:I
    .end local v4           #rawValue:[B
    .end local v6           #valueIndex:I
    .end local v7           #valueLen:I
    :catch_0
    move-exception v3

    .line 520
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8
.end method

.method static retrieveBufSize(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 528
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 529
    .local v3, valueIndex:I
    const/4 v2, 0x0

    .line 532
    .local v2, size:I
    :try_start_0
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    .line 537
    return v2

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;-><init>()V

    .line 52
    .local v0, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 53
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 55
    .local v3, valueIndex:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    .line 56
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    .line 57
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 58
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveDataToSend(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 574
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 575
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 577
    .local v1, dataLen:I
    const/4 v0, 0x0

    .line 579
    .local v0, channelData:[B
    if-nez v1, :cond_0

    .line 580
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5

    .line 584
    :cond_0
    :try_start_0
    new-array v0, v1, [B

    .line 585
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    return-object v0

    .line 586
    :catch_0
    move-exception v2

    .line 587
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;-><init>()V

    .line 77
    .local v0, devIds:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 78
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 80
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->sourceId:I

    .line 81
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    .line 100
    .local v3, timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 101
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 104
    .local v4, valueIndex:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 105
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 109
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cdma/utk/Duration;-><init>(ILcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;)V

    return-object v5

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/IconId;-><init>()V

    .line 174
    .local v1, id:Lcom/android/internal/telephony/cdma/utk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 175
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 177
    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    .line 178
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-object v1

    .line 177
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Item;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 122
    .local v2, item:Lcom/android/internal/telephony/cdma/utk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 123
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 124
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 126
    .local v3, length:I
    if-eqz v3, :cond_0

    .line 127
    add-int/lit8 v6, v3, -0x1

    .line 130
    .local v6, textLen:I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 131
    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/cdma/utk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cdma/utk/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/cdma/utk/Item;
    :cond_0
    return-object v2

    .line 134
    .end local v2           #item:Lcom/android/internal/telephony/cdma/utk/Item;
    .restart local v6       #textLen:I
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 153
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 156
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 161
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v8, "ValueParser"

    const-string/jumbo v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;-><init>()V

    .line 199
    .local v1, id:Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 200
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 201
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 202
    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    .line 206
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->selfExplanatory:Z

    .line 208
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 209
    iget-object v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_1

    .line 206
    .end local v3           #index:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    move v6, v7

    .line 212
    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8

    .line 214
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_1
    return-object v1

    .line 211
    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveNAN(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 602
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 603
    .local v4, valueIndex:I
    const/4 v2, 0x0

    .line 606
    .local v2, networkAccessName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 607
    .local v1, len:I
    if-lez v1, :cond_0

    .line 608
    new-instance v2, Ljava/lang/String;

    .end local v2           #networkAccessName:Ljava/lang/String;
    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .restart local v2       #networkAccessName:Ljava/lang/String;
    :cond_0
    return-object v2

    .line 610
    .end local v1           #len:I
    .end local v2           #networkAccessName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveOtherAddress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 619
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 620
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 621
    .local v0, addressType:I
    const/4 v2, 0x0

    .line 624
    .local v2, otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_0
    aget-byte v0, v5, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 625
    const/16 v8, 0x21

    if-ne v8, v0, :cond_1

    .line 627
    :try_start_1
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/OtherAddress;-><init>()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 628
    .end local v2           #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    .local v3, otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    :try_start_2
    iput v0, v3, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->addressType:I

    .line 629
    const/4 v8, 0x4

    new-array v4, v8, [B

    .line 630
    .local v4, rawAddress:[B
    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .end local v3           #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    .end local v4           #rawAddress:[B
    .restart local v2       #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    :cond_0
    :goto_0
    move-object v8, v2

    .line 645
    :goto_1
    return-object v8

    .line 633
    :catch_0
    move-exception v1

    .line 635
    .local v1, e:Ljava/net/UnknownHostException;
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 637
    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_1
    const/16 v8, 0x57

    if-ne v8, v0, :cond_0

    goto :goto_0

    .line 642
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v2           #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    .restart local v3       #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    :catch_2
    move-exception v8

    move-object v2, v3

    .end local v3           #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    .restart local v2       #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    goto :goto_0

    .line 633
    .end local v2           #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    .restart local v3       #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    .restart local v2       #otherAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;
    goto :goto_2
.end method

.method static retrieveReqDataLength(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 558
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 559
    .local v3, valueIndex:I
    const/4 v1, 0x0

    .line 564
    .local v1, length:I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 569
    return v1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveSetupEventList(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 485
    .local v1, eventList:[B
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 486
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 487
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v4

    .line 489
    .local v4, valueLen:I
    if-lez v4, :cond_0

    .line 490
    new-array v1, v4, [B

    .line 491
    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    return-object v1

    .line 493
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    .end local v4           #valueLen:I
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveSmsPdu(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B
    .locals 5
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    new-array v0, v1, [B

    .line 375
    .local v0, smsPdu:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    return-object v0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v18, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 230
    .local v19, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 231
    .local v21, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v17

    .line 233
    .local v17, length:I
    if-eqz v17, :cond_5

    .line 235
    div-int/lit8 v16, v17, 0x4

    .line 238
    .local v16, itemCount:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 239
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 240
    .local v2, start:I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 241
    .local v3, textLength:I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 242
    .local v14, format:I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 244
    .local v12, colorValue:I
    and-int/lit8 v11, v14, 0x3

    .line 245
    .local v11, alignValue:I
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    move-result-object v4

    .line 247
    .local v4, align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 248
    .local v20, sizeValue:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/utk/FontSize;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/FontSize;

    move-result-object v5

    .line 249
    .local v5, size:Lcom/android/internal/telephony/cdma/utk/FontSize;
    if-nez v5, :cond_0

    .line 251
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/FontSize;->NORMAL:Lcom/android/internal/telephony/cdma/utk/FontSize;

    .line 254
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 255
    .local v6, bold:Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 256
    .local v7, italic:Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 257
    .local v8, underlined:Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 259
    .local v9, strikeThrough:Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cdma/utk/TextColor;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/TextColor;

    move-result-object v10

    .line 261
    .local v10, color:Lcom/android/internal/telephony/cdma/utk/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/utk/TextAttribute;-><init>(IILcom/android/internal/telephony/cdma/utk/TextAlignment;Lcom/android/internal/telephony/cdma/utk/FontSize;ZZZZLcom/android/internal/telephony/cdma/utk/TextColor;)V

    .line 264
    .local v1, attr:Lcom/android/internal/telephony/cdma/utk/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 254
    .end local v1           #attr:Lcom/android/internal/telephony/cdma/utk/TextAttribute;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v9           #strikeThrough:Z
    .end local v10           #color:Lcom/android/internal/telephony/cdma/utk/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 255
    .restart local v6       #bold:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 256
    .restart local v7       #italic:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 257
    .restart local v8       #underlined:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 269
    .end local v2           #start:I
    .end local v3           #textLength:I
    .end local v4           #align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    .end local v5           #size:Lcom/android/internal/telephony/cdma/utk/FontSize;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v11           #alignValue:I
    .end local v12           #colorValue:I
    .end local v14           #format:I
    .end local v20           #sizeValue:I
    :catch_0
    move-exception v13

    .line 270
    .local v13, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v22

    .line 273
    .end local v13           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v15           #i:I
    .end local v16           #itemCount:I
    :cond_5
    const/16 v18, 0x0

    .end local v18           #lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 333
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 334
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 335
    .local v0, codingScheme:B
    const/4 v3, 0x0

    .line 336
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 339
    .local v5, textLen:I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 362
    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 343
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 347
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 349
    if-nez v0, :cond_1

    .line 350
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 362
    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_0

    .line 352
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 353
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utkStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 356
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 357
    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1

    .line 359
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 363
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 364
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 365
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 367
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
.end method

.method static retrieveTransportLevel(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/TransportLevel;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 543
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 544
    .local v3, valueIndex:I
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TransportLevel;-><init>()V

    .line 547
    .local v2, tl:Lcom/android/internal/telephony/cdma/utk/TransportLevel;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_0
    aget-byte v5, v1, v3

    iput v5, v2, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    .line 548
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    iput v5, v2, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    return-object v2

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method private static utk8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 462
    .local v2, ret:Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_3

    .line 464
    aget-byte v3, p0, v1

    and-int/lit16 v0, v3, 0xff

    .line 466
    .local v0, c:I
    if-nez v0, :cond_1

    .line 467
    const/16 v0, 0x40

    .line 473
    :cond_0
    :goto_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 469
    const/16 v0, 0x24

    goto :goto_1

    .line 470
    :cond_2
    const/16 v3, 0x11

    if-ne v0, v3, :cond_0

    .line 471
    const/16 v0, 0x5f

    goto :goto_1

    .line 476
    .end local v0           #c:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static utkStringFieldToString([BII)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 380
    const/4 v7, 0x1

    if-lt p2, v7, :cond_1

    .line 381
    aget-byte v7, p0, p1

    const/16 v8, -0x80

    if-ne v7, v8, :cond_1

    .line 382
    add-int/lit8 v7, p2, -0x1

    div-int/lit8 v6, v7, 0x2

    .line 383
    .local v6, ucslen:I
    const/4 v4, 0x0

    .line 386
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, p1, 0x1

    mul-int/lit8 v8, v6, 0x2

    const-string/jumbo v9, "utf-16be"

    invoke-direct {v5, p0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #ret:Ljava/lang/String;
    .local v5, ret:Ljava/lang/String;
    move-object v4, v5

    .line 391
    .end local v5           #ret:Ljava/lang/String;
    .restart local v4       #ret:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 394
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 395
    :goto_1
    if-lez v6, :cond_0

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xffff

    if-ne v7, v8, :cond_0

    .line 396
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 398
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 454
    .end local v4           #ret:Ljava/lang/String;
    .end local v6           #ucslen:I
    :goto_2
    return-object v7

    .line 403
    :cond_1
    const/4 v2, 0x0

    .line 404
    .local v2, isucs2:Z
    const/4 v0, 0x0

    .line 405
    .local v0, base:C
    const/4 v3, 0x0

    .line 407
    .local v3, len:I
    const/4 v7, 0x3

    if-lt p2, v7, :cond_5

    aget-byte v7, p0, p1

    const/16 v8, -0x7f

    if-ne v7, v8, :cond_5

    .line 408
    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    .line 409
    add-int/lit8 v7, p2, -0x3

    if-le v3, v7, :cond_2

    .line 410
    add-int/lit8 v3, p2, -0x3

    .line 412
    :cond_2
    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x7

    int-to-char v0, v7

    .line 413
    add-int/lit8 p1, p1, 0x3

    .line 414
    const/4 v2, 0x1

    .line 426
    :cond_3
    :goto_3
    if-eqz v2, :cond_9

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v4, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v3, :cond_8

    .line 432
    aget-byte v7, p0, p1

    if-gez v7, :cond_4

    .line 433
    aget-byte v7, p0, p1

    and-int/lit8 v7, v7, 0x7f

    add-int/2addr v7, v0

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 p1, p1, 0x1

    .line 435
    add-int/lit8 v3, v3, -0x1

    .line 440
    :cond_4
    const/4 v1, 0x0

    .line 441
    .local v1, count:I
    :goto_5
    if-ge v1, v3, :cond_7

    add-int v7, p1, v1

    aget-byte v7, p0, v7

    if-ltz v7, :cond_7

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 415
    .end local v1           #count:I
    .end local v4           #ret:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v7, 0x4

    if-lt p2, v7, :cond_3

    aget-byte v7, p0, p1

    const/16 v8, -0x7e

    if-ne v7, v8, :cond_3

    .line 416
    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    .line 417
    add-int/lit8 v7, p2, -0x4

    if-le v3, v7, :cond_6

    .line 418
    add-int/lit8 v3, p2, -0x4

    .line 420
    :cond_6
    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p1, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-char v0, v7

    .line 422
    add-int/lit8 p1, p1, 0x4

    .line 423
    const/4 v2, 0x1

    goto :goto_3

    .line 444
    .restart local v1       #count:I
    .restart local v4       #ret:Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    add-int/2addr p1, v1

    .line 448
    sub-int/2addr v3, v1

    .line 449
    goto :goto_4

    .line 451
    .end local v1           #count:I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 454
    .end local v4           #ret:Ljava/lang/StringBuilder;
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utk8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 387
    .end local v0           #base:C
    .end local v2           #isucs2:Z
    .end local v3           #len:I
    .local v4, ret:Ljava/lang/String;
    .restart local v6       #ucslen:I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method
