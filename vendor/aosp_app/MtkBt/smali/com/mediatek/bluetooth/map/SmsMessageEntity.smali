.class public Lcom/mediatek/bluetooth/map/SmsMessageEntity;
.super Ljava/lang/Object;
.source "SmsMessageEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsMessageEntity"

.field private static mEntity:Lcom/mediatek/bluetooth/map/SmsMessageEntity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private getCdmaDeliverPdu(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 13
    .parameter "orignator"
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, length:I
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 118
    .local v2, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_0

    .line 176
    :goto_0
    return-object v9

    .line 120
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 121
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v3, dos:Ljava/io/DataOutputStream;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 124
    .local v1, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v10, 0x1

    iput v10, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 128
    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 129
    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 130
    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 131
    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 133
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 134
    .local v8, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 135
    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 136
    iput-object v8, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 138
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 142
    .local v5, encodedBearerData:[B
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 144
    const v7, 0x10040200

    .line 145
    .local v7, tele:I
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 152
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 153
    iget v10, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 156
    iget-object v10, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v12, v12

    invoke-virtual {v3, v10, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 157
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 161
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 162
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 165
    if-eqz v5, :cond_1

    .line 166
    array-length v10, v5

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 167
    const/4 v10, 0x0

    array-length v11, v5

    invoke-virtual {v3, v5, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 169
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    array-length v6, v10

    .line 170
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    goto/16 :goto_0

    .line 172
    .end local v7           #tele:I
    :catch_0
    move-exception v4

    .line 173
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getDefault()Lcom/mediatek/bluetooth/map/SmsMessageEntity;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->mEntity:Lcom/mediatek/bluetooth/map/SmsMessageEntity;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mediatek/bluetooth/map/SmsMessageEntity;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->mEntity:Lcom/mediatek/bluetooth/map/SmsMessageEntity;

    .line 80
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->mEntity:Lcom/mediatek/bluetooth/map/SmsMessageEntity;

    return-object v0
.end method

.method private getGsmDeliverPdu(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 12
    .parameter "orignator"
    .parameter "message"
    .parameter "slotId"

    .prologue
    .line 181
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0xb4

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 184
    .local v8, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 185
    .local v6, encoding:I
    const/4 v7, -0x1

    .line 186
    .local v7, language:I
    const/4 v10, 0x0

    .line 188
    .local v10, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message body is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->log(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 191
    .local v9, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v6, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 192
    iget v7, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 194
    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v11

    .line 196
    .local v11, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez v11, :cond_0

    .line 197
    const-string v0, "fail to get deliver pdu"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->log(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 200
    :cond_0
    invoke-direct {p0, v8, p3}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->setScaAddress(Ljava/io/ByteArrayOutputStream;I)V

    .line 201
    iget-object v0, v11, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    const/4 v1, 0x0

    iget-object v2, v11, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    array-length v2, v2

    invoke-virtual {v8, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 203
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    const-string v0, "SmsMessageEntity"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    return-void
.end method

.method private setScaAddress(Ljava/io/ByteArrayOutputStream;I)V
    .locals 8
    .parameter "out"
    .parameter "slotId"

    .prologue
    const/4 v7, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, scaAddr:[B
    const/4 v2, 0x0

    .line 209
    .local v2, sca:Ljava/lang/String;
    const/4 v1, 0x0

    .line 211
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 223
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v3

    .line 226
    :cond_1
    if-eqz v3, :cond_2

    .line 227
    array-length v4, v3

    invoke-virtual {p1, v3, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 231
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SmsMessageEntity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ITelephony api exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method


# virtual methods
.method public getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 4
    .parameter "orignator"
    .parameter "recipient"
    .parameter "message"
    .parameter "slotId"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, length:I
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {p4}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getGeminiNetworkType(I)I

    move-result v0

    .line 106
    .local v0, activePhone:I
    :goto_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 107
    invoke-direct {p0, p1, p3}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->getCdmaDeliverPdu(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 112
    :goto_1
    return-object v2

    .line 103
    .end local v0           #activePhone:I
    :cond_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getNetworkType()I

    move-result v0

    .restart local v0       #activePhone:I
    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 109
    invoke-direct {p0, p1, p3, p4}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->getGsmDeliverPdu(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    goto :goto_1

    .line 111
    :cond_2
    const-string v2, "SmsMessageEntity"

    const-string v3, "unkown net type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .parameter "orignator"
    .parameter "recipient"
    .parameter "message"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x0

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, length:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xb4

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 90
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, p2, p3, v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 92
    .local v2, pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    invoke-direct {p0, v0, p4}, Lcom/mediatek/bluetooth/map/SmsMessageEntity;->setScaAddress(Ljava/io/ByteArrayOutputStream;I)V

    .line 93
    iget-object v3, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    iget-object v4, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
