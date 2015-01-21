.class public Ltmsdk/common/module/aresengine/MmsContentConfigHeader;
.super Ltmsdk/common/module/aresengine/MmsHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/aresengine/MmsContentConfigHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

.field public ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

.field public contentType:[B

.field public deliveryReport:I

.field public deliverytime:I

.field public expiry:J

.field public messageId:[B

.field public messageSize:J

.field public priority:I

.field public readReport:I

.field public reportAllowed:I

.field public responseStatus:I

.field public responseText:Ljava/lang/String;

.field public retrieveStatus:I

.field public retrieveText:Ljava/lang/String;

.field public retrieveTextCharset:I

.field public toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>()V

    .line 124
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>(Landroid/os/Parcel;)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageId:[B

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->contentType:[B

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->priority:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->readReport:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->reportAllowed:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveStatus:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveText:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveTextCharset:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->responseStatus:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->responseText:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->expiry:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageSize:J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliverytime:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    .line 220
    invoke-static {p1}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->h(Landroid/os/Parcel;)[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 221
    invoke-static {p1}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->h(Landroid/os/Parcel;)[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 222
    invoke-static {p1}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->h(Landroid/os/Parcel;)[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 223
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 7
    .parameter "pdu"

    .prologue
    .line 126
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 128
    .local v1, encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->phonenumCharset:I

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    .line 134
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageClass()[B

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    .line 137
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageType()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageType:I

    .line 138
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    .line 139
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageId:[B

    .line 140
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->contentType:[B

    .line 141
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMmsVersion()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    .line 142
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getPriority()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->priority:I

    .line 143
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getReadReport()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->readReport:I

    .line 144
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveStatus:I

    .line 145
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveText:Ljava/lang/String;

    .line 148
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveTextCharset:I

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getDeliveryReport()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    .line 151
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 152
    .local v0, ccValues:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_3

    .line 153
    array-length v3, v0

    new-array v3, v3, [Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 154
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 155
    aget-object v1, v0, v2

    .line 156
    iget-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v2           #i:I
    :cond_3
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 7
    .parameter "pdu"

    .prologue
    .line 161
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>()V

    .line 162
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 163
    .local v0, encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    .line 168
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMessageType()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageType:I

    .line 169
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    .line 170
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->contentType:[B

    .line 171
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMmsVersion()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    .line 172
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->priority:I

    .line 173
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->readReport:I

    .line 174
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    .line 175
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 176
    .local v1, encodedValues:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v3

    iput-wide v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->expiry:J

    .line 177
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v3

    iput-wide v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageSize:J

    .line 178
    if-eqz v1, :cond_1

    .line 179
    array-length v3, v1

    new-array v3, v3, [Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 180
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 181
    aget-object v0, v1, v2

    .line 182
    iget-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2           #i:I
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_2

    .line 188
    array-length v3, v1

    new-array v3, v3, [Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 189
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 190
    aget-object v0, v1, v2

    .line 191
    iget-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_3

    .line 196
    array-length v3, v1

    new-array v3, v3, [Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 197
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 198
    aget-object v0, v1, v2

    .line 199
    iget-object v3, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    .end local v2           #i:I
    :cond_3
    return-void
.end method

.method private static a(Landroid/os/Parcel;[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;)V
    .locals 5
    .parameter "dest"
    .parameter "array"

    .prologue
    .line 261
    if-nez p1, :cond_1

    .line 262
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    :cond_0
    return-void

    .line 264
    :cond_1
    array-length v4, p1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    move-object v1, p1

    .local v1, arr$:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 266
    .local v0, addr:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    iget-object v4, v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget v4, v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static h(Landroid/os/Parcel;)[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    .locals 6
    .parameter "src"

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, len:I
    if-nez v1, :cond_1

    .line 250
    const/4 v2, 0x0

    .line 256
    :cond_0
    return-object v2

    .line 252
    :cond_1
    new-array v2, v1, [Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    .line 253
    .local v2, result:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 254
    new-instance v3, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method b(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 2
    .parameter "phonenumber"
    .parameter "date"

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    iget v1, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageType:I

    sparse-switch v1, :sswitch_data_0

    .line 295
    :goto_0
    return-object v0

    .line 289
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->c(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 290
    goto :goto_0

    .line 292
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->t(J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    goto :goto_0

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method c(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 8
    .parameter "phonenumber"
    .parameter "date"

    .prologue
    .line 299
    const/4 v3, 0x0

    .line 301
    .local v3, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>()V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .local v4, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    move-object v3, v4

    .line 305
    .end local v4           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v3       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_0
    if-nez v3, :cond_1

    .line 382
    :cond_0
    return-object v3

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_1
    if-eqz p1, :cond_2

    .line 310
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->phonenumCharset:I

    invoke-virtual {v1, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 312
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/RetrieveConf;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 314
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const-wide/16 v6, 0x3e8

    div-long v6, p2, v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/mms/pdu/RetrieveConf;->setDate(J)V

    .line 315
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 316
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v1       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    invoke-virtual {v1, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 318
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/RetrieveConf;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 320
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    if-eqz v6, :cond_4

    .line 321
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageClass([B)V

    .line 324
    :cond_4
    :try_start_1
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageType:I

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageType(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    :goto_1
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    if-eqz v6, :cond_5

    .line 329
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setTransactionId([B)V

    .line 331
    :cond_5
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageId:[B

    if-eqz v6, :cond_6

    .line 332
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageId:[B

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageId([B)V

    .line 334
    :cond_6
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->contentType:[B

    if-eqz v6, :cond_7

    .line 336
    :try_start_2
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->contentType:[B

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setContentType([B)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2

    .line 342
    :cond_7
    :goto_2
    :try_start_3
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setMmsVersion(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_3

    .line 347
    :goto_3
    :try_start_4
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->priority:I

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setPriority(I)V
    :try_end_4
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_4

    .line 352
    :goto_4
    :try_start_5
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->readReport:I

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setReadReport(I)V
    :try_end_5
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_5 .. :try_end_5} :catch_5

    .line 357
    :goto_5
    :try_start_6
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveStatus:I

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setRetrieveStatus(I)V
    :try_end_6
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_6 .. :try_end_6} :catch_6

    .line 361
    :goto_6
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->responseText:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 362
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveText:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 363
    .restart local v1       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveTextCharset:I

    invoke-virtual {v1, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 364
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/RetrieveConf;->setRetrieveText(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 367
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    :try_start_7
    iget v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/RetrieveConf;->setDeliveryReport(I)V
    :try_end_7
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7 .. :try_end_7} :catch_7

    .line 371
    :goto_7
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v6, :cond_0

    .line 373
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 374
    iget-object v6, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v5, v6, v2

    .line 375
    .local v5, tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    iget-object v6, v5, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 376
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v6, v5, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v1       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v6, v5, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v1, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 378
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/RetrieveConf;->addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 373
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 325
    .end local v2           #i:I
    .end local v5           #tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    :catch_1
    move-exception v0

    .line 326
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_1

    .line 337
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_2
    move-exception v0

    .line 338
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    .line 343
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v0

    .line 344
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_3

    .line 348
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_4
    move-exception v0

    .line 349
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_4

    .line 353
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_5
    move-exception v0

    .line 354
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_5

    .line 358
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_6
    move-exception v0

    .line 359
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_6

    .line 368
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_7
    move-exception v0

    .line 369
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_7
.end method

.method fv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 463
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    .line 465
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method t(J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 7
    .parameter "date"

    .prologue
    .line 386
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 387
    .local v3, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-wide/16 v5, 0x3e8

    div-long v5, p1, v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 389
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 390
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 392
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 394
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    iget-wide v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->expiry:J

    invoke-virtual {v3, v5, v6}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 395
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    if-eqz v5, :cond_1

    .line 396
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 398
    :cond_1
    iget-wide v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageSize:J

    invoke-virtual {v3, v5, v6}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    .line 400
    :try_start_0
    iget v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageType:I

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    :try_start_1
    iget v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    :goto_1
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    if-eqz v5, :cond_2

    .line 410
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V

    .line 413
    :cond_2
    :try_start_2
    iget v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2

    .line 416
    :goto_2
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->contentType:[B

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 418
    :try_start_3
    iget v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->priority:I

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_3

    .line 423
    :goto_3
    :try_start_4
    iget v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->readReport:I

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_4
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_4

    .line 428
    :goto_4
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v5, :cond_4

    .line 429
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 430
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v4, v5, v2

    .line 431
    .local v4, tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    iget-object v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 432
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v1       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 434
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 429
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 401
    .end local v2           #i:I
    .end local v4           #tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_0

    .line 406
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1
    move-exception v0

    .line 407
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_1

    .line 414
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_2
    move-exception v0

    .line 415
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    .line 419
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v0

    .line 420
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_3

    .line 424
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_4
    move-exception v0

    .line 425
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_4

    .line 438
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_4
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v5, :cond_6

    .line 439
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 440
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v4, v5, v2

    .line 441
    .restart local v4       #tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    iget-object v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 442
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v1       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 444
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 439
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 448
    .end local v2           #i:I
    .end local v4           #tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    :cond_6
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v5, :cond_8

    .line 449
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 450
    iget-object v5, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v4, v5, v2

    .line 451
    .restart local v4       #tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    iget-object v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 452
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v1       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v5, v4, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 454
    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->addBcc(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 449
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 458
    .end local v2           #i:I
    .end local v4           #tempAddress:Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    :cond_8
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Ltmsdk/common/module/aresengine/MmsHeader;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->contentType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 230
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->readReport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->reportAllowed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->retrieveTextCharset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->responseStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->responseText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-wide v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->expiry:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget-wide v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->messageSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliverytime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->toAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-static {p1, v0}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->a(Landroid/os/Parcel;[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;)V

    .line 243
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-static {p1, v0}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->a(Landroid/os/Parcel;[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;)V

    .line 244
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-static {p1, v0}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->a(Landroid/os/Parcel;[Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;)V

    .line 245
    return-void
.end method
