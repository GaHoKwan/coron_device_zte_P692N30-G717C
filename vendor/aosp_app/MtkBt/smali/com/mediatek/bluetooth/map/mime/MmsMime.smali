.class public Lcom/mediatek/bluetooth/map/mime/MmsMime;
.super Lcom/mediatek/bluetooth/map/mime/MimeBase;
.source "MmsMime.java"


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_EXPIRY_TIME:J = 0x93a80L

.field private static final DEFAULT_READ_REPORT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "MmsMime"


# instance fields
.field private mMmsCenter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    .line 78
    sget v0, Lcom/mediatek/bluetooth/map/mime/MmsMime;->MSG_TYPE_MMS:I

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/map/mime/MimeBase;-><init>(Landroid/content/ContentResolver;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 1
    .parameter "resolver"
    .parameter "pdu"

    .prologue
    .line 74
    sget v0, Lcom/mediatek/bluetooth/map/mime/MmsMime;->MSG_TYPE_MMS:I

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/map/mime/MimeBase;-><init>(Landroid/content/ContentResolver;I)V

    .line 75
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadMime(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/mms/pdu/GenericPdu;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "pdu"
    .parameter "mmsCenter"

    .prologue
    .line 69
    sget v0, Lcom/mediatek/bluetooth/map/mime/MmsMime;->MSG_TYPE_MMS:I

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/map/mime/MimeBase;-><init>(Landroid/content/ContentResolver;I)V

    .line 70
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadMime(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 71
    iput-object p3, p0, Lcom/mediatek/bluetooth/map/mime/MmsMime;->mMmsCenter:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private getAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 3
    .parameter "values"

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MmsMime;->mMmsCenter:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MmsMime;->mMmsCenter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    const-string v1, "MMSCenter is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 8
    .parameter "values"

    .prologue
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v1, addresses:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 265
    const/4 v6, 0x0

    .line 275
    :goto_0
    return-object v6

    .line 267
    :cond_0
    move-object v2, p1

    .local v2, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    .line 268
    .local v5, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 269
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get address([]):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getContentType(Ljava/lang/String;)[B
    .locals 3
    .parameter "originalType"

    .prologue
    .line 489
    if-eqz p1, :cond_0

    const-string v1, "text/plain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 503
    :goto_0
    return-object v1

    .line 492
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, type:Ljava/lang/String;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    const-string v0, "text/plain"

    .line 502
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 495
    :cond_3
    sget-object v1, Lcom/mediatek/bluetooth/map/mime/MmsMime;->MULTIPART_MIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    const-string v0, "application/vnd.wap.multipart.mixed"

    goto :goto_1

    .line 497
    :cond_4
    sget-object v1, Lcom/mediatek/bluetooth/map/mime/MmsMime;->MULTIPART_ALTERNATIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 498
    const-string v0, "application/vnd.wap.multipart.alternative"

    goto :goto_1

    .line 499
    :cond_5
    sget-object v1, Lcom/mediatek/bluetooth/map/mime/MmsMime;->MULTIPART_RELATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    const-string v0, "application/vnd.wap.multipart.related"

    goto :goto_1
.end method

.method private getDataBytes(Ljava/lang/String;[B)[B
    .locals 2
    .parameter "encoding"
    .parameter "rawdata"

    .prologue
    .line 475
    if-nez p1, :cond_1

    .line 484
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 478
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, newEncoding:Ljava/lang/String;
    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    invoke-static {p2}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object p2

    goto :goto_0

    .line 481
    :cond_2
    const-string v1, "quoted-printable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {p2}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object p2

    goto :goto_0
.end method

.method private getIntValue([B)I
    .locals 1
    .parameter "value"

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getStringValue([B)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private loadFromAcknowledgeInd(Lcom/google/android/mms/pdu/AcknowledgeInd;)V
    .locals 0
    .parameter "pdu"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 146
    return-void
.end method

.method private loadFromDeliveryInd(Lcom/google/android/mms/pdu/DeliveryInd;)V
    .locals 3
    .parameter "pdu"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getDate()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    .line 141
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getStringValue([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    .line 143
    return-void
.end method

.method private loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .parameter "pdu"

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 123
    .local v0, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    .line 126
    :cond_0
    return-void
.end method

.method private loadFromMultimediaMessagePdu(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V
    .locals 14
    .parameter "pdu"

    .prologue
    .line 165
    const/4 v9, 0x0

    .line 166
    .local v9, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;>;"
    const/4 v5, 0x0

    .line 171
    .local v5, disposition:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 172
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 173
    .local v10, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v10, :cond_0

    .line 174
    iget-object v11, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    .line 176
    :cond_0
    iget-object v11, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    .line 177
    iget-object v11, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    .line 179
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    .line 180
    .local v3, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v7, 0x0

    .local v7, index:I
    :goto_0
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v11

    if-ge v7, v11, :cond_a

    .line 181
    invoke-virtual {v3, v7}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 182
    new-instance v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;-><init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V

    .line 184
    .local v1, attach:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v4

    .line 185
    .local v4, cache:[B
    if-eqz v4, :cond_1

    .line 186
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    .line 189
    :cond_1
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    .line 191
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v11

    iput-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    .line 195
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    .line 196
    if-eqz v4, :cond_2

    .line 197
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    .line 199
    :cond_2
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 200
    if-eqz v4, :cond_3

    .line 201
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mName:Ljava/lang/String;

    .line 203
    :cond_3
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v11

    if-eqz v11, :cond_4

    .line 204
    new-instance v5, Ljava/lang/String;

    .end local v5           #disposition:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([B)V

    .line 206
    .restart local v5       #disposition:Ljava/lang/String;
    :cond_4
    iput-object v5, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    .line 207
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    .line 208
    if-eqz v4, :cond_5

    .line 209
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentLocation:Ljava/lang/String;

    .line 214
    :cond_5
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    .line 215
    if-eqz v4, :cond_6

    .line 216
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mMimeType:Ljava/lang/String;

    .line 219
    :cond_6
    iget-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    if-eqz v11, :cond_8

    .line 220
    iget-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    array-length v11, v11

    int-to-long v11, v11

    iput-wide v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mSize:J

    .line 239
    :cond_7
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 221
    :cond_8
    iget-object v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    if-eqz v11, :cond_7

    .line 223
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 224
    .local v8, input:Ljava/io/InputStream;
    instance-of v11, v8, Ljava/io/FileInputStream;

    if-eqz v11, :cond_9

    .line 225
    move-object v0, v8

    check-cast v0, Ljava/io/FileInputStream;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mSize:J

    .line 227
    :cond_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 228
    .end local v8           #input:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 229
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 232
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 233
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    .end local v1           #attach:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    .end local v4           #cache:[B
    .end local v6           #e:Ljava/io/IOException;
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v11, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    .line 243
    return-void
.end method

.method private loadFromNotificationInd(Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 3
    .parameter "pdu"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 130
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 131
    .local v0, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method

.method private loadFromNotifyRespInd(Lcom/google/android/mms/pdu/NotifyRespInd;)V
    .locals 0
    .parameter "pdu"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 137
    return-void
.end method

.method private loadFromReadOrigInd(Lcom/google/android/mms/pdu/ReadOrigInd;)V
    .locals 3
    .parameter "pdu"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getDate()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    .line 150
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getStringValue([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    .line 152
    return-void
.end method

.method private loadFromReadRecInd(Lcom/google/android/mms/pdu/ReadRecInd;)V
    .locals 3
    .parameter "pdu"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadRecInd;->getDate()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    .line 156
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadRecInd;->getMessageId()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getStringValue([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadRecInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    .line 158
    return-void
.end method

.method private loadFromRetrieveConf(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 2
    .parameter "pdu"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromMultimediaMessagePdu(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    .line 253
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mCc:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getStringValue([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private loadFromSendConf(Lcom/google/android/mms/pdu/SendConf;)V
    .locals 2
    .parameter "pdu"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromGenericPdu(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getStringValue([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private loadFromSendReq(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 2
    .parameter "pdu"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromMultimediaMessagePdu(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    .line 247
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mBcc:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getAddress([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mCc:Ljava/lang/String;

    .line 249
    return-void
.end method

.method private loadMime(Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .parameter "pdu"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 119
    .end local p1
    :goto_0
    return-void

    .line 84
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 85
    .local v0, type:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 86
    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_0
    check-cast p1, Lcom/google/android/mms/pdu/SendReq;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromSendReq(Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_0

    .line 91
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/google/android/mms/pdu/SendConf;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromSendConf(Lcom/google/android/mms/pdu/SendConf;)V

    goto :goto_0

    .line 94
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/google/android/mms/pdu/NotificationInd;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromNotificationInd(Lcom/google/android/mms/pdu/NotificationInd;)V

    goto :goto_0

    .line 97
    .restart local p1
    :pswitch_3
    check-cast p1, Lcom/google/android/mms/pdu/NotifyRespInd;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromNotifyRespInd(Lcom/google/android/mms/pdu/NotifyRespInd;)V

    goto :goto_0

    .line 100
    .restart local p1
    :pswitch_4
    check-cast p1, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromRetrieveConf(Lcom/google/android/mms/pdu/RetrieveConf;)V

    goto :goto_0

    .line 103
    .restart local p1
    :pswitch_5
    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromDeliveryInd(Lcom/google/android/mms/pdu/DeliveryInd;)V

    goto :goto_0

    .line 106
    .restart local p1
    :pswitch_6
    check-cast p1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromAcknowledgeInd(Lcom/google/android/mms/pdu/AcknowledgeInd;)V

    goto :goto_0

    .line 109
    .restart local p1
    :pswitch_7
    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromReadOrigInd(Lcom/google/android/mms/pdu/ReadOrigInd;)V

    goto :goto_0

    .line 112
    .restart local p1
    :pswitch_8
    check-cast p1, Lcom/google/android/mms/pdu/ReadRecInd;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->loadFromReadRecInd(Lcom/google/android/mms/pdu/ReadRecInd;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 525
    const-string v0, "MmsMime"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    return-void
.end method

.method private reverseAddress(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 7
    .parameter "value"

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, address:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    if-eqz p1, :cond_0

    .line 311
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, elements:[Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 313
    .local v2, element:Ljava/lang/String;
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 316
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #element:Ljava/lang/String;
    .end local v3           #elements:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    return-object v6
.end method


# virtual methods
.method public addToField(Ljava/lang/String;)V
    .locals 3
    .parameter "to"

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v2, v2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v2, v2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iput-object p1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    goto :goto_0
.end method

.method public generatePdu(I)Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .locals 1
    .parameter "type"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    sparse-switch p1, :sswitch_data_0

    .line 329
    :goto_0
    return-object v0

    .line 322
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->generateSendReqPdu()Lcom/google/android/mms/pdu/SendReq;

    move-result-object v0

    .line 323
    goto :goto_0

    .line 325
    :sswitch_1
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->generateRetrieveConfPdu()Lcom/google/android/mms/pdu/RetrieveConf;

    move-result-object v0

    .line 326
    goto :goto_0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x84 -> :sswitch_1
    .end sparse-switch
.end method

.method public generatePduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 10

    .prologue
    .line 413
    new-instance v2, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 416
    .local v2, body:Lcom/google/android/mms/pdu/PduBody;
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    array-length v8, v8

    if-nez v8, :cond_2

    .line 417
    :cond_0
    const-string v8, "attachment is null"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 418
    const/4 v2, 0x0

    .line 471
    .end local v2           #body:Lcom/google/android/mms/pdu/PduBody;
    :cond_1
    return-object v2

    .line 420
    .restart local v2       #body:Lcom/google/android/mms/pdu/PduBody;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    .local v0, arr$:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 421
    .local v1, attachement:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 423
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    if-eqz v8, :cond_a

    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    array-length v8, v8

    if-lez v8, :cond_a

    .line 424
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mEncoding:Ljava/lang/String;

    iget-object v9, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    invoke-direct {p0, v8, v9}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getDataBytes(Ljava/lang/String;[B)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 431
    :goto_1
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 432
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mContentId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 433
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 435
    :cond_3
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    const-string v9, "inline"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 437
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 439
    :cond_4
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentLocation:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 440
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 443
    :cond_5
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getContentType(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 445
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mCharset:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 447
    :try_start_0
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mCharset:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v3

    .line 448
    .local v3, charsetInt:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_6

    .line 449
    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v3           #charsetInt:I
    :cond_6
    :goto_2
    const-string v8, "8bit"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 456
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 457
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 460
    :cond_7
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 466
    :cond_8
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mName:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 467
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 469
    :cond_9
    invoke-virtual {v2, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 420
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 425
    :cond_a
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    if-eqz v8, :cond_b

    .line 426
    iget-object v8, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 428
    :cond_b
    const-string v8, "data is null"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 451
    :catch_0
    move-exception v4

    .line 452
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public generateRetrieveConfPdu()Lcom/google/android/mms/pdu/RetrieveConf;
    .locals 12

    .prologue
    .line 332
    const-string v8, "generateRetrieveConfPdu()"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 335
    :try_start_0
    new-instance v6, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>()V

    .line 338
    .local v6, pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMiltipartType:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 339
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMiltipartType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/RetrieveConf;->setContentType([B)V

    .line 344
    :goto_0
    const/16 v8, 0x81

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/RetrieveConf;->setDeliveryReport(I)V

    .line 345
    const/16 v8, 0x81

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/RetrieveConf;->setReadReport(I)V

    .line 346
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 347
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v9, v9, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/RetrieveConf;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 349
    :cond_0
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 350
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->reverseAddress(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 351
    .local v7, tos:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v0, v7

    .local v0, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 352
    .local v3, element:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v6, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 341
    .end local v0           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #element:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #tos:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    const-string v8, "text/plain"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/RetrieveConf;->setContentType([B)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v6           #pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    :catch_0
    move-exception v2

    .line 369
    .local v2, e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 370
    const/4 v6, 0x0

    .line 372
    .end local v2           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_2
    :goto_2
    return-object v6

    .line 355
    .restart local v6       #pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 356
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v9, v9, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 358
    :cond_4
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-wide v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 359
    iget-object v8, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-wide v8, v8, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 364
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->generatePduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 365
    .local v1, body:Lcom/google/android/mms/pdu/PduBody;
    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_2

    .line 361
    .end local v1           #body:Lcom/google/android/mms/pdu/PduBody;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public generateSendReqPdu()Lcom/google/android/mms/pdu/SendReq;
    .locals 7

    .prologue
    .line 376
    const-string v3, "generateSendReqPdu()"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    .line 377
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 380
    .local v2, req:Lcom/google/android/mms/pdu/SendReq;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v3, v3, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 384
    :cond_0
    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 388
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v3, v3, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 389
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v4, v4, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v3, v3, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMiltipartType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->getContentType(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 392
    const-wide/32 v3, 0x93a80

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 393
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-wide v3, v3, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSize:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    .line 394
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v3, v3, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v3, v3, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->reverseAddress(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 397
    :cond_2
    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 398
    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->generatePduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 405
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 408
    :cond_3
    return-object v2

    .line 399
    .end local v0           #body:Lcom/google/android/mms/pdu/PduBody;
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/mime/MmsMime;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isHeaderComplete()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFromField(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iput-object p1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    .line 508
    return-void
.end method
