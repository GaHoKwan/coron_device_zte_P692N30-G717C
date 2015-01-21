.class public Lcom/mediatek/telephony/SmsMessageEx;
.super Ljava/lang/Object;
.source "SmsMessageEx.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ISmsMessageExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static final sInstance:Lcom/mediatek/telephony/SmsMessageEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/mediatek/telephony/SmsMessageEx;

    invoke-direct {v0}, Lcom/mediatek/telephony/SmsMessageEx;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/SmsMessageEx;->sInstance:Lcom/mediatek/telephony/SmsMessageEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDefault()Lcom/mediatek/telephony/SmsMessageEx;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/mediatek/telephony/SmsMessageEx;->sInstance:Lcom/mediatek/telephony/SmsMessageEx;

    return-object v0
.end method

.method protected static getSmsFormat(I)Ljava/lang/String;
    .locals 4
    .parameter "simId"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/mediatek/telephony/SmsMessageEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 66
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 67
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 72
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return-object v3

    .line 69
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v3, "3gpp"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 72
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "3gpp"

    goto :goto_0
.end method

.method private static getSmsServiceName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const-string v0, "isms"

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 53
    const-string v0, "isms2"

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSmsc(Landroid/telephony/SmsMessage;I)[B
    .locals 10
    .parameter "msg"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 119
    invoke-static {p2}, Lcom/mediatek/telephony/SmsMessageEx;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, format:Ljava/lang/String;
    const-string v6, "3gpp2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call getSmsc, format="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 141
    :goto_0
    return-object v3

    .line 126
    :cond_0
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call getSmsc, slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    .line 128
    .local v2, pdu:[B
    if-nez v2, :cond_1

    .line 129
    const-string v6, "SMS"

    const-string v7, "pdu is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    aget-byte v6, v2, v9

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v4, v6, 0x1

    .line 134
    .local v4, smsc_len:I
    new-array v3, v4, [B

    .line 137
    .local v3, smsc:[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    array-length v8, v3

    invoke-static {v2, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "SMS"

    const-string v7, "Out of boudns"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 141
    goto :goto_0
.end method

.method public getTpdu(Landroid/telephony/SmsMessage;I)[B
    .locals 11
    .parameter "msg"
    .parameter "slotId"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 84
    invoke-static {p2}, Lcom/mediatek/telephony/SmsMessageEx;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, format:Ljava/lang/String;
    const-string v7, "3gpp2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call getTpdu, format="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    .line 107
    :goto_0
    return-object v4

    .line 91
    :cond_0
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call getTpdu, slotId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    .line 93
    .local v2, pdu:[B
    if-nez v2, :cond_1

    .line 94
    const-string v7, "SMS"

    const-string v8, "pdu is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 95
    goto :goto_0

    .line 98
    :cond_1
    aget-byte v7, v2, v10

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v3, v7, 0x1

    .line 99
    .local v3, smsc_len:I
    array-length v7, v2

    sub-int v5, v7, v3

    .line 100
    .local v5, tpdu_len:I
    new-array v4, v5, [B

    .line 103
    .local v4, tpdu:[B
    const/4 v7, 0x0

    :try_start_0
    array-length v8, v4

    invoke-static {v2, v3, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "SMS"

    const-string v8, "Out of boudns"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 107
    goto :goto_0
.end method
