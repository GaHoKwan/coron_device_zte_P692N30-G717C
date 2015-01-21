.class public Lcom/mediatek/deviceregister/RegisterService;
.super Landroid/app/Service;
.source "RegisterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;
    }
.end annotation


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "DeviceRegister/RegisterService"

.field private static sEsnLength:I

.field private static sSendMessageRetryTimes:I


# instance fields
.field private mAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mSmsSendReceiver:Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;

.field private mTask:Ljava/util/TimerTask;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/deviceregister/RegisterService;->sSendMessageRetryTimes:I

    .line 33
    const/4 v0, 0x5

    sput v0, Lcom/mediatek/deviceregister/RegisterService;->sEsnLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/mediatek/deviceregister/RegisterService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/deviceregister/RegisterService$1;-><init>(Lcom/mediatek/deviceregister/RegisterService;)V

    iput-object v0, p0, Lcom/mediatek/deviceregister/RegisterService;->mTask:Ljava/util/TimerTask;

    .line 715
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/deviceregister/RegisterService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->sendRegisterMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/deviceregister/RegisterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->needRegister()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/deviceregister/RegisterService;)Ljava/util/TimerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterService;->mTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/deviceregister/RegisterService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->writeEsnToUim()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/mediatek/deviceregister/RegisterService;->sSendMessageRetryTimes:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/mediatek/deviceregister/RegisterService;->sSendMessageRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/deviceregister/RegisterService;->sSendMessageRetryTimes:I

    return v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "src"

    .prologue
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 173
    :cond_0
    const/4 v4, 0x0

    .line 183
    :goto_0
    return-object v4

    .line 175
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 176
    aget-byte v4, p1, v1

    and-int/lit16 v3, v4, 0xff

    .line 177
    .local v3, v:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 179
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v0           #hv:Ljava/lang/String;
    .end local v3           #v:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private charToByte(C)B
    .locals 1
    .parameter "c"

    .prologue
    .line 202
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private checkRegisterResult(Landroid/content/Intent;)Z
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 561
    const-string v6, "DeviceRegister/RegisterService"

    const-string v7, "Check register result."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v6, "pdu"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 563
    .local v4, pduByte:[B
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 564
    const-string v6, "3gpp2"

    invoke-static {v4, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 565
    .local v2, message:Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, originAddr:Ljava/lang/String;
    const-string v6, "DeviceRegister/RegisterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message origination address:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v6, "10659401"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 568
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v1

    .line 569
    .local v1, data:[B
    const-string v6, "DeviceRegister/RegisterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message user data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/mediatek/deviceregister/RegisterService;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-eqz v1, :cond_1

    array-length v6, v1

    if-le v6, v5, :cond_1

    .line 571
    aget-byte v0, v1, v5

    .line 572
    .local v0, confirmByte:B
    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    .line 573
    const-string v6, "DeviceRegister/RegisterService"

    const-string v7, "Register success!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v0           #confirmByte:B
    .end local v1           #data:[B
    .end local v2           #message:Landroid/telephony/SmsMessage;
    .end local v3           #originAddr:Ljava/lang/String;
    :goto_0
    return v5

    .line 576
    .restart local v0       #confirmByte:B
    .restart local v1       #data:[B
    .restart local v2       #message:Landroid/telephony/SmsMessage;
    .restart local v3       #originAddr:Ljava/lang/String;
    :cond_0
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "Register failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v0           #confirmByte:B
    .end local v1           #data:[B
    .end local v2           #message:Landroid/telephony/SmsMessage;
    .end local v3           #originAddr:Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 579
    .restart local v1       #data:[B
    .restart local v2       #message:Landroid/telephony/SmsMessage;
    .restart local v3       #originAddr:Ljava/lang/String;
    :cond_1
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "message data is not valid!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 582
    .end local v1           #data:[B
    :cond_2
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "origin address is not valid!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 585
    .end local v2           #message:Landroid/telephony/SmsMessage;
    .end local v3           #originAddr:Ljava/lang/String;
    :cond_3
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "Pdu is not valid!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getCurrentLogonUim()I
    .locals 8

    .prologue
    .line 294
    const/4 v1, -0x1

    .line 296
    .local v1, currentLogonUim:I
    sget-object v0, Lcom/mediatek/deviceregister/Const;->UIM_ID_LIST:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 297
    .local v4, uimId:I
    invoke-direct {p0, v4}, Lcom/mediatek/deviceregister/RegisterService;->isUimAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    move v1, v4

    .line 302
    .end local v4           #uimId:I
    :cond_0
    const-string v5, "DeviceRegister/RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current logon UIM is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v1

    .line 296
    .restart local v4       #uimId:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getEsnFromUim()Ljava/lang/String;
    .locals 15

    .prologue
    .line 515
    const/16 v2, 0xb0

    .line 516
    .local v2, readCommand:I
    const/16 v1, 0x6f38

    .line 517
    .local v1, fileId:I
    const-string v6, "3F007F25"

    .line 518
    .local v6, path:Ljava/lang/String;
    const/4 v11, 0x0

    .line 520
    .local v11, pEsn:Ljava/lang/String;
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 522
    .local v0, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget v5, Lcom/mediatek/deviceregister/RegisterService;->sEsnLength:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony;->transmitIccSimIOExGemini(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v12

    .line 523
    .local v12, readResult:[B
    if-eqz v12, :cond_0

    array-length v3, v12

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 524
    array-length v3, v12

    add-int/lit8 v13, v3, -0x2

    .line 525
    .local v13, realLength:I
    new-array v14, v13, [B

    .line 526
    .local v14, realResult:[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v3, v14, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    invoke-direct {p0, v14}, Lcom/mediatek/deviceregister/RegisterService;->getRealBytes([B)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/deviceregister/RegisterService;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 535
    .end local v12           #readResult:[B
    .end local v13           #realLength:I
    .end local v14           #realResult:[B
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 536
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 539
    :cond_1
    return-object v11

    .line 530
    :catch_0
    move-exception v10

    .line 531
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getImsiFromUim()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 493
    iget-object v5, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_1

    .line 495
    sget-object v4, Lcom/mediatek/deviceregister/Const;->UIM_ID_LIST:[I

    .line 496
    .local v4, uimIdList:[I
    array-length v2, v4

    .line 497
    .local v2, length:I
    new-array v1, v2, [Ljava/lang/String;

    .line 498
    .local v1, imsiArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 499
    aget v3, v4, v0

    .line 500
    .local v3, uimId:I
    invoke-direct {p0, v3}, Lcom/mediatek/deviceregister/RegisterService;->isUimAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 501
    iget-object v5, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 505
    :goto_1
    const-string v5, "DeviceRegister/RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getImsiFromUim] imsiArr[i]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    const-string v5, "000000000000000"

    aput-object v5, v1, v0

    goto :goto_1

    .line 509
    .end local v0           #i:I
    .end local v1           #imsiArr:[Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #uimId:I
    .end local v4           #uimIdList:[I
    :cond_1
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "[getImsiFromUim]mTelephonyManager is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method private getRealBytes([B)[B
    .locals 4
    .parameter "byteSrc"

    .prologue
    .line 163
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [B

    .line 164
    .local v2, resultByte:[B
    const/4 v0, 0x0

    .local v0, i:I
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_0
    if-lez v1, :cond_0

    .line 165
    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 164
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-object v2
.end method

.method private getReverseBytes([B)[B
    .locals 4
    .parameter "byteSrc"

    .prologue
    .line 152
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 153
    .local v2, resultByte:[B
    const/4 v0, 0x0

    .line 154
    .local v0, i:I
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 155
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_0
    if-ltz v1, :cond_0

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 155
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 159
    :cond_0
    return-object v2
.end method

.method private getSavedImsi()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 339
    iget-object v4, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v4, :cond_1

    .line 340
    const-string v4, "DeviceRegister/RegisterService"

    const-string v5, "get IMSI failed, DmAgent is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x0

    .line 358
    :cond_0
    :goto_0
    return-object v2

    .line 344
    :cond_1
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 346
    .local v2, imsiArr:[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v4}, Lcom/mediatek/common/dm/DmAgent;->readImsi1()[B

    move-result-object v0

    .line 347
    .local v0, imsi1:[B
    iget-object v4, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v4}, Lcom/mediatek/common/dm/DmAgent;->readImsi2()[B

    move-result-object v1

    .line 348
    .local v1, imsi2:[B
    if-eqz v0, :cond_2

    .line 349
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    aput-object v5, v2, v4

    .line 351
    :cond_2
    if-eqz v1, :cond_0

    .line 352
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v5, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v0           #imsi1:[B
    .end local v1           #imsi2:[B
    :catch_0
    move-exception v3

    .line 355
    .local v3, re:Landroid/os/RemoteException;
    const-string v4, "DeviceRegister/RegisterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote exception when get IMSI!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSendPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 706
    const-string v2, "DeviceRegister/RegisterService"

    const-string v3, "get send pending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 708
    .local v0, mIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.REGISTER_SMS_SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 711
    .local v1, mSendPendingIntent:Landroid/app/PendingIntent;
    const-string v2, "DeviceRegister/RegisterService"

    const-string v3, "return a pending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-object v1
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .parameter "hexString"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    :cond_0
    const/4 v0, 0x0

    .line 198
    :cond_1
    return-object v0

    .line 190
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 192
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 193
    .local v1, hexChars:[C
    new-array v0, v3, [B

    .line 194
    .local v0, d:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 195
    mul-int/lit8 v4, v2, 0x2

    .line 196
    .local v4, pos:I
    aget-char v5, v1, v4

    invoke-direct {p0, v5}, Lcom/mediatek/deviceregister/RegisterService;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-direct {p0, v6}, Lcom/mediatek/deviceregister/RegisterService;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isEsnSame()Z
    .locals 5

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getEsnFromUim()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, uimSavedEsn:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/deviceregister/RegisterService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/deviceregister/RegisterService;->meidToEsn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, deviceEsn:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    const-string v2, "DeviceRegister/RegisterService"

    const-string v3, "ESN is same."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v2, 0x1

    .line 642
    :goto_0
    return v2

    .line 641
    :cond_0
    const-string v2, "DeviceRegister/RegisterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ESN is not same:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isImsiSame()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 610
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getImsiFromUim()[Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, imsiFromUim:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getSavedImsi()[Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, imsiFromDevice:[Ljava/lang/String;
    array-length v6, v3

    array-length v7, v2

    if-eq v6, v7, :cond_0

    .line 613
    const-string v6, "DeviceRegister/RegisterService"

    const-string v7, "imsi is not same: array length is not same."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_0
    return v5

    .line 616
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, equal:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 619
    aget-object v6, v3, v1

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 620
    const/4 v0, 0x1

    .line 624
    :cond_1
    if-nez v0, :cond_3

    .line 625
    const-string v6, "DeviceRegister/RegisterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find the same imsi from saved ones:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 616
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 629
    .end local v0           #equal:Z
    .end local v4           #j:I
    :cond_4
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "IMSIs are the same."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isRegistered()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 363
    iget-object v6, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v6, :cond_0

    .line 364
    const-string v4, "DeviceRegister/RegisterService"

    const-string v6, "get registerFlag failed, DmAgent is null!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return v5

    .line 367
    :cond_0
    const/4 v3, 0x0

    .line 370
    .local v3, registerFlag:I
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v6}, Lcom/mediatek/common/dm/DmAgent;->readRegisterFlag()[B

    move-result-object v2

    .line 371
    .local v2, readData:[B
    if-eqz v2, :cond_1

    array-length v6, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v6, :cond_1

    .line 373
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 382
    .end local v2           #readData:[B
    :cond_1
    :goto_1
    if-ne v3, v4, :cond_2

    :goto_2
    move v5, v4

    goto :goto_0

    .line 374
    .restart local v2       #readData:[B
    :catch_0
    move-exception v0

    .line 375
    .local v0, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "DeviceRegister/RegisterService"

    const-string v7, "registerFlag parse int failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 378
    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    .end local v2           #readData:[B
    :catch_1
    move-exception v1

    .line 379
    .local v1, re:Landroid/os/RemoteException;
    const-string v6, "DeviceRegister/RegisterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remote exception when readRegisterFlag!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #re:Landroid/os/RemoteException;
    :cond_2
    move v4, v5

    .line 382
    goto :goto_2
.end method

.method private isUimAvailable(I)Z
    .locals 6
    .parameter "uimId"

    .prologue
    .line 314
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUimAvailable] begin uimId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v3, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v1

    .line 317
    .local v1, phoneType:I
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUimAvailable] phone type of uim ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 319
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUimAvailable] UIM ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is PHONE_TYPE_CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v3, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, netwOperator:Ljava/lang/String;
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUimAvailable] networkOperator of uim ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v3, "46003"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "45502"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, simOperator:Ljava/lang/String;
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUimAvailable] simOperator of uim ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    const/4 v3, 0x1

    .line 334
    .end local v0           #netwOperator:Ljava/lang/String;
    .end local v1           #phoneType:I
    .end local v2           #simOperator:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private meidToEsn(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "meid"

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 126
    :cond_0
    const/4 v4, 0x0

    .line 148
    :cond_1
    :goto_0
    return-object v4

    .line 128
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/deviceregister/RegisterService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 130
    .local v3, meidByte:[B
    const/4 v4, 0x0

    .line 132
    .local v4, pEsn:Ljava/lang/String;
    :try_start_0
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 133
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/deviceregister/RegisterService;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 136
    .local v1, length:I
    const/4 v6, 0x6

    if-le v1, v6, :cond_3

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "80"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x6

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 145
    .end local v1           #length:I
    .end local v2           #md:Ljava/security/MessageDigest;
    .end local v5           #result:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_1

    .line 146
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 139
    .restart local v1       #length:I
    .restart local v2       #md:Ljava/security/MessageDigest;
    .restart local v5       #result:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v6, "DeviceRegister/RegisterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "digest result length < 6, it is not valid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    .end local v1           #length:I
    .end local v2           #md:Ljava/security/MessageDigest;
    .end local v5           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DeviceRegister/RegisterService"

    const-string v7, "No such algorithm:SHA-1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private needRegister()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[needRegister]current thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    .line 268
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getCurrentLogonUim()I

    move-result v0

    .line 269
    .local v0, currentLogonUim:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 270
    const-string v2, "DeviceRegister/RegisterService"

    const-string v3, "There is no UIM card is connected CDMA net or it is roaming."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #currentLogonUim:I
    :goto_0
    return v1

    .line 274
    .restart local v0       #currentLogonUim:I
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    const-string v1, "DeviceRegister/RegisterService"

    const-string v3, "Register flag is not true."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 276
    goto :goto_0

    .line 278
    :cond_1
    const-string v3, "DeviceRegister/RegisterService"

    const-string v4, "Register flag is true, compare the imsi and meid."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->isImsiSame()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->isEsnSame()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    const-string v2, "DeviceRegister/RegisterService"

    const-string v3, "imsi and meid are the same, have registered already."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 283
    goto :goto_0

    .line 287
    .end local v0           #currentLogonUim:I
    :cond_3
    const-string v2, "DeviceRegister/RegisterService"

    const-string v3, "telephony manager is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendRegisterMessage()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 543
    const-string v0, "DeviceRegister/RegisterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRegisterMessage,current thread: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v0, Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;-><init>(Lcom/mediatek/deviceregister/RegisterService;)V

    iput-object v0, p0, Lcom/mediatek/deviceregister/RegisterService;->mSmsSendReceiver:Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;

    .line 545
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterService;->mSmsSendReceiver:Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.REGISTER_SMS_SEND"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 546
    new-instance v0, Lcom/mediatek/deviceregister/RegisterMessage;

    invoke-direct {v0, p0}, Lcom/mediatek/deviceregister/RegisterMessage;-><init>(Lcom/mediatek/deviceregister/RegisterService;)V

    invoke-virtual {v0}, Lcom/mediatek/deviceregister/RegisterMessage;->getRegisterMessage()[B

    move-result-object v3

    .line 547
    .local v3, registerMessage:[B
    const-string v0, "DeviceRegister/RegisterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message length:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getCurrentLogonUim()I

    move-result v4

    .line 549
    .local v4, currentLogonUim:I
    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    .line 550
    const-string v0, "10659401"

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getSendPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendDataMessageGemini(Ljava/lang/String;Ljava/lang/String;S[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 552
    const-string v0, "DeviceRegister/RegisterService"

    const-string v1, "send message..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string v0, "DeviceRegister/RegisterService"

    const-string v1, "there is no UIM is logon CDMA net now. Can\'t send message."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRegisterFlag(Z)Z
    .locals 6
    .parameter "flag"

    .prologue
    .line 591
    iget-object v3, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v3, :cond_0

    .line 592
    const-string v3, "DeviceRegister/RegisterService"

    const-string v4, "set registerFlag failed, DmAgent is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v2, 0x0

    .line 604
    :goto_0
    return v2

    .line 595
    :cond_0
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set registerFlag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-eqz p1, :cond_1

    const-string v1, "1"

    .line 597
    .local v1, registerFlag:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 599
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/mediatek/common/dm/DmAgent;->setRegisterFlag([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 596
    .end local v1           #registerFlag:Ljava/lang/String;
    .end local v2           #result:Z
    :cond_1
    const-string v1, "0"

    goto :goto_1

    .line 600
    .restart local v1       #registerFlag:Ljava/lang/String;
    .restart local v2       #result:Z
    :catch_0
    move-exception v0

    .line 601
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "DeviceRegister/RegisterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote exception when setRegisterFlag!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeEsnToUim()V
    .locals 18

    .prologue
    .line 405
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "write pESN to UIM."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/deviceregister/RegisterService;->getDeviceId()Ljava/lang/String;

    move-result-object v13

    .line 407
    .local v13, meid:Ljava/lang/String;
    const-string v5, "DeviceRegister/RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 409
    :cond_0
    const-string v5, "DeviceRegister/RegisterService"

    const-string v6, "Device id is null or empty."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 412
    :cond_1
    const/16 v4, 0xde

    .line 413
    .local v4, writeCommand:I
    const/16 v3, 0x6f38

    .line 414
    .local v3, fileId:I
    const-string v8, "3F007F25"

    .line 416
    .local v8, path:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/deviceregister/RegisterService;->meidToEsn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 417
    .local v14, pEsn:Ljava/lang/String;
    const-string v5, "DeviceRegister/RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pESN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/deviceregister/RegisterService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    .line 419
    .local v15, pEsnByte:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/deviceregister/RegisterService;->getReverseBytes([B)[B

    move-result-object v16

    .line 420
    .local v16, pEsnByteReverse:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/deviceregister/RegisterService;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, pEsnReverse:Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v5, v0

    sput v5, Lcom/mediatek/deviceregister/RegisterService;->sEsnLength:I

    .line 423
    const-string v5, "DeviceRegister/RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content to write:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/mediatek/deviceregister/RegisterService;->sEsnLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 426
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget v7, Lcom/mediatek/deviceregister/RegisterService;->sEsnLength:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ITelephony;->transmitIccSimIOExGemini(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v17

    .line 428
    .local v17, writeResult:[B
    const-string v5, "DeviceRegister/RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write pEsn result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/deviceregister/RegisterService;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 430
    .end local v17           #writeResult:[B
    :catch_0
    move-exception v12

    .line 431
    .local v12, e:Landroid/os/RemoteException;
    const-string v5, "DeviceRegister/RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private writeImsiToDevice()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 437
    const-string v8, "DeviceRegister/RegisterService"

    const-string v9, "write IMSI to device."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v8, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v8, :cond_0

    .line 439
    const-string v6, "DeviceRegister/RegisterService"

    const-string v8, "get registerFlag failed, DmAgent is null!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    return v7

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getImsiFromUim()[Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, imsiArr:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 445
    const-string v6, "DeviceRegister/RegisterService"

    const-string v8, "write IMSI failed, get IMSI is null!"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_1
    aget-object v0, v2, v7

    .line 449
    .local v0, imsi1:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 450
    const-string v8, "DeviceRegister/RegisterService"

    const-string v9, "IMSI1 is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v0, "000000000000000"

    .line 453
    :cond_2
    aget-object v1, v2, v6

    .line 454
    .local v1, imsi2:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 455
    const-string v8, "DeviceRegister/RegisterService"

    const-string v9, "IMSI2 is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v1, "000000000000000"

    .line 458
    :cond_3
    const/4 v4, 0x0

    .line 459
    .local v4, result1:Z
    const/4 v5, 0x0

    .line 462
    .local v5, result2:Z
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/mediatek/common/dm/DmAgent;->writeImsi1([BI)Z

    move-result v4

    .line 463
    if-nez v4, :cond_4

    .line 464
    const-string v8, "DeviceRegister/RegisterService"

    const-string v9, "write IMSI1 failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_4
    iget-object v8, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/mediatek/common/dm/DmAgent;->writeImsi2([BI)Z

    move-result v5

    .line 467
    if-nez v5, :cond_5

    .line 468
    const-string v8, "DeviceRegister/RegisterService"

    const-string v9, "write IMSI2 failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    :goto_2
    move v7, v6

    goto :goto_0

    .line 470
    :catch_0
    move-exception v3

    .line 471
    .local v3, re:Landroid/os/RemoteException;
    const-string v8, "DeviceRegister/RegisterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remote exception when write IMSI!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3           #re:Landroid/os/RemoteException;
    :cond_6
    move v6, v7

    .line 474
    goto :goto_2
.end method


# virtual methods
.method public getCurrentLogonImsi()Ljava/lang/String;
    .locals 5

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, currentLogonImsi:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getCurrentLogonUim()I

    move-result v1

    .line 482
    .local v1, currentUim:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    const-string v2, "DeviceRegister/RegisterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentLogonImsi] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v1           #currentUim:I
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    const-string v2, "DeviceRegister/RegisterService"

    const-string v3, "mTelephonyManager is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, meid:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->getCurrentLogonUim()I

    move-result v1

    .line 389
    .local v1, uimId:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v2, "DeviceRegister/RegisterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDeviceId]DeviceId of uim ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v1           #uimId:I
    :cond_0
    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_1
    const-string v2, "DeviceRegister/RegisterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDeviceId]meid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 55
    const-string v1, "DeviceRegister/RegisterService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/deviceregister/RegisterService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v1, :cond_1

    .line 65
    const-string v1, "DeviceRegister/RegisterService"

    const-string v2, "get DmAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "DmAgent"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, binder:Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 68
    const-string v1, "DeviceRegister/RegisterService"

    const-string v2, "get DmAgent fail, binder is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 71
    .restart local v0       #binder:Landroid/os/IBinder;
    :cond_2
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/deviceregister/RegisterService;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "DeviceRegister/RegisterService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterService;->mSmsSendReceiver:Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mediatek/deviceregister/RegisterService;->mSmsSendReceiver:Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 212
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 221
    const-string v1, "DeviceRegister/RegisterService"

    const-string v2, "onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    const-string v1, "DeviceRegister/RegisterService"

    const-string v2, "Auto register feasible."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v1, Lcom/mediatek/deviceregister/RegisterService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/deviceregister/RegisterService$2;-><init>(Lcom/mediatek/deviceregister/RegisterService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 258
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 239
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "android.telephony.sms.CDMA_REG_SMS_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-direct {p0, p1}, Lcom/mediatek/deviceregister/RegisterService;->checkRegisterResult(Landroid/content/Intent;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/deviceregister/RegisterService;->setRegisterFlag(Z)Z

    .line 241
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 242
    :cond_2
    const-string v1, "android.intent.action.REGISTER_SMS_SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/deviceregister/RegisterService;->setRegisterFlag(Z)Z

    .line 244
    invoke-direct {p0}, Lcom/mediatek/deviceregister/RegisterService;->writeImsiToDevice()Z

    .line 246
    new-instance v1, Lcom/mediatek/deviceregister/RegisterService$3;

    invoke-direct {v1, p0}, Lcom/mediatek/deviceregister/RegisterService$3;-><init>(Lcom/mediatek/deviceregister/RegisterService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 252
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 255
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    const-string v1, "DeviceRegister/RegisterService"

    const-string v2, "Intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
