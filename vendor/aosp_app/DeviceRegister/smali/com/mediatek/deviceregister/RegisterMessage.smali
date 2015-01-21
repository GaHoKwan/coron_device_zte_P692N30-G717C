.class public Lcom/mediatek/deviceregister/RegisterMessage;
.super Ljava/lang/Object;
.source "RegisterMessage.java"


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "DeviceRegister/RegisterMessage"


# instance fields
.field private mChecksum:Ljava/lang/String;

.field private mCommandType:B

.field private mData:Ljava/lang/String;

.field private mDataLength:B

.field private mFillByte:B

.field private mProtocolVersion:B

.field private mService:Lcom/mediatek/deviceregister/RegisterService;


# direct methods
.method public constructor <init>(Lcom/mediatek/deviceregister/RegisterService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mProtocolVersion:B

    .line 12
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mCommandType:B

    .line 13
    iput-byte v1, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mDataLength:B

    .line 14
    iput-byte v1, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mFillByte:B

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mData:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mChecksum:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mService:Lcom/mediatek/deviceregister/RegisterService;

    .line 21
    return-void
.end method

.method private generateChecksum([B)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    const/16 v9, 0x8

    .line 129
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 130
    .local v0, checksum:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 131
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    .line 133
    .local v5, value:J
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, crcString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 135
    .local v2, crcStringLength:I
    if-ge v2, v9, :cond_1

    .line 136
    const-string v4, ""

    .line 137
    .local v4, prefix:Ljava/lang/String;
    move v3, v2

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .end local v3           #i:I
    .end local v4           #prefix:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private generateMessageData()Ljava/lang/String;
    .locals 14

    .prologue
    .line 61
    const-string v11, "DeviceRegister/RegisterMessage"

    const-string v12, "generateMessageData"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "<a1>"

    .line 63
    .local v0, beginTag:Ljava/lang/String;
    const-string v2, "</a1>"

    .line 64
    .local v2, endTag:Ljava/lang/String;
    const-string v7, "<b1>"

    .line 65
    .local v7, modelBeginTag:Ljava/lang/String;
    const-string v8, "</b1>"

    .line 66
    .local v8, modelEndTag:Ljava/lang/String;
    const-string v5, "<b2>"

    .line 67
    .local v5, meidBeginTag:Ljava/lang/String;
    const-string v6, "</b2>"

    .line 68
    .local v6, meidEndTag:Ljava/lang/String;
    const-string v3, "<b3>"

    .line 69
    .local v3, imsiBeginTag:Ljava/lang/String;
    const-string v4, "</b3>"

    .line 70
    .local v4, imsiEndTag:Ljava/lang/String;
    const-string v9, "<b4>"

    .line 71
    .local v9, softwareVersionBeginTag:Ljava/lang/String;
    const-string v10, "</b4>"

    .line 72
    .local v10, softwareVersionEndTag:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, data:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterMessage;->getModel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterMessage;->getMeid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterMessage;->getIMSI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterMessage;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v11, "DeviceRegister/RegisterMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "message:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mService:Lcom/mediatek/deviceregister/RegisterService;

    invoke-virtual {v0}, Lcom/mediatek/deviceregister/RegisterService;->getCurrentLogonImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mService:Lcom/mediatek/deviceregister/RegisterService;

    invoke-virtual {v0}, Lcom/mediatek/deviceregister/RegisterService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getModel()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 84
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 85
    .local v0, globleModel:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, index:I
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 87
    :cond_0
    const-string v5, "DeviceRegister/RegisterMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Model in Build.MODEL may be error!!, globleModel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 113
    :cond_1
    :goto_0
    return-object v4

    .line 91
    :cond_2
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, manufacturer:Ljava/lang/String;
    const-string v5, "DeviceRegister/RegisterMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manufacturer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_3

    .line 95
    const-string v5, "DeviceRegister/RegisterMessage"

    const-string v6, "Manufacturer length > 3, cut it!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, model:Ljava/lang/String;
    const-string v5, "DeviceRegister/RegisterMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "model:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v5, "-"

    const-string v6, " "

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 104
    const-string v5, ""

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_1

    .line 109
    const-string v5, "DeviceRegister/RegisterMessage"

    const-string v6, "Model length > 20, cut it!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRegisterMessage()[B
    .locals 11

    .prologue
    .line 24
    const-string v8, "DeviceRegister/RegisterMessage"

    const-string v9, "getRegisterMessage"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterMessage;->generateMessageData()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mData:Ljava/lang/String;

    .line 26
    iget-object v8, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mData:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mDataLength:B

    .line 28
    iget-byte v8, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mDataLength:B

    add-int/lit8 v0, v8, 0x4

    .line 29
    .local v0, byteArrayLenth:I
    new-array v6, v0, [B

    .line 30
    .local v6, message:[B
    const/4 v8, 0x0

    iget-byte v9, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mProtocolVersion:B

    aput-byte v9, v6, v8

    .line 31
    const/4 v8, 0x1

    iget-byte v9, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mCommandType:B

    aput-byte v9, v6, v8

    .line 32
    const/4 v8, 0x2

    iget-byte v9, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mDataLength:B

    aput-byte v9, v6, v8

    .line 33
    const/4 v8, 0x3

    iget-byte v9, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mFillByte:B

    aput-byte v9, v6, v8

    .line 34
    iget-object v8, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mData:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 35
    .local v2, dataByte:[B
    const/4 v3, 0x4

    .line 36
    .local v3, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_0

    .line 37
    aget-byte v8, v2, v4

    aput-byte v8, v6, v3

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0, v6}, Lcom/mediatek/deviceregister/RegisterMessage;->generateChecksum([B)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mChecksum:Ljava/lang/String;

    .line 42
    const-string v8, "DeviceRegister/RegisterMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checksum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mChecksum:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v8, p0, Lcom/mediatek/deviceregister/RegisterMessage;->mChecksum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 45
    .local v1, crcByte:[B
    array-length v8, v6

    add-int/lit8 v8, v8, 0x8

    new-array v7, v8, [B

    .line 47
    .local v7, messageFinal:[B
    const/4 v5, 0x0

    .line 48
    .local v5, k:I
    const/4 v4, 0x0

    :goto_1
    array-length v8, v6

    if-ge v4, v8, :cond_1

    .line 49
    aget-byte v8, v6, v4

    aput-byte v8, v7, v5

    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    :cond_1
    const/4 v4, 0x0

    :goto_2
    array-length v8, v1

    if-ge v4, v8, :cond_2

    .line 54
    aget-byte v8, v1, v4

    aput-byte v8, v7, v5

    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 57
    :cond_2
    return-object v7
.end method
