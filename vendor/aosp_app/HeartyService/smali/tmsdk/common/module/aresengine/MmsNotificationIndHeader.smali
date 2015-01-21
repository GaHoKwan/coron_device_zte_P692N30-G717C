.class public Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;
.super Ltmsdk/common/module/aresengine/MmsHeader;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contentClass:I

.field public contentLocation:[B

.field public deliveryReport:I

.field public expiry:J

.field public messageSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->expiry:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 3
    .parameter "pdu"

    .prologue
    .line 74
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/MmsHeader;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 76
    .local v0, subjectValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->subjectCharset:I

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    .line 81
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageclass:[B

    .line 82
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageType()I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageType:I

    .line 83
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    .line 84
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v1

    iput-wide v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->expiry:J

    .line 85
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v1

    iput-wide v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    .line 86
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentClass()I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    .line 87
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getDeliveryReport()I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    .line 88
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMmsVersion()I

    move-result v1

    iput v1, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->mmsVersion:I

    .line 89
    return-void
.end method


# virtual methods
.method cm(Ljava/lang/String;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 6
    .parameter "phonenumber"

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_start_0
    new-instance v3, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/NotificationInd;-><init>()V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    .local v3, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v2, v3

    .line 98
    .end local v3           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v2       #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_0
    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_1
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_1
    if-eqz p1, :cond_2

    .line 103
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->phonenumCharset:I

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 105
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 107
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 108
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v1       #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    iget v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->subjectCharset:I

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    .line 110
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 113
    .end local v1           #encodedValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    :try_start_1
    iget v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setContentClass(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_2
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    if-eqz v4, :cond_4

    .line 118
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 121
    :cond_4
    :try_start_2
    iget v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setDeliveryReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    :goto_3
    iget-wide v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->expiry:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/mms/pdu/NotificationInd;->setExpiry(J)V

    .line 126
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageclass:[B

    if-eqz v4, :cond_5

    .line 127
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageclass:[B

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageClass([B)V

    .line 129
    :cond_5
    iget-wide v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageSize(J)V

    .line 131
    :try_start_3
    iget v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageType:I

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageType(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_3

    .line 136
    :goto_4
    :try_start_4
    iget v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->mmsVersion:I

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setMmsVersion(I)V
    :try_end_4
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_4

    .line 140
    :goto_5
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setTransactionId([B)V

    goto :goto_1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    .line 122
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_2
    move-exception v0

    .line 123
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_3

    .line 132
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v0

    .line 133
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_4

    .line 137
    .end local v0           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_4
    move-exception v0

    .line 138
    .restart local v0       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Ltmsdk/common/module/aresengine/MmsHeader;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-wide v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->expiry:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-wide v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 57
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
