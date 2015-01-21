.class public Ltmsdk/common/module/aresengine/SmsEntity;
.super Ltmsdk/common/module/aresengine/TelephonyEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_TYPE_MMS:I = 0x1

.field public static final PROTOCOL_TYPE_SMS:I = 0x0

.field public static final PROTOCOL_TYPE_WAPPUSH:I = 0x2

.field public static final SMS_TYPE_IN:I = 0x1

.field public static final SMS_TYPE_SENT:I = 0x2


# instance fields
.field public body:Ljava/lang/String;

.field public date:J

.field public fromCard:Ljava/lang/String;

.field public mmsData:Ltmsdk/common/module/aresengine/MmsData;

.field public protocolType:I

.field public transient raw:Landroid/content/Intent;

.field public read:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Ltmsdk/common/module/aresengine/SmsEntity$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/SmsEntity$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/SmsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/TelephonyEntity;-><init>()V

    .line 132
    iput v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    .line 133
    iput v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 135
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "src"

    .prologue
    .line 137
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/TelephonyEntity;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->id:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->name:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    .line 147
    const-class v3, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    .line 148
    const-class v3, Ltmsdk/common/module/aresengine/MmsData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/aresengine/MmsData;

    iput-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    .line 150
    iget-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    if-nez v3, :cond_0

    iget v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    .local v0, data:[B
    new-instance v1, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v1, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 154
    .local v1, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 156
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v3, :cond_0

    .line 157
    new-instance v3, Ltmsdk/common/module/aresengine/MmsData;

    invoke-direct {v3}, Ltmsdk/common/module/aresengine/MmsData;-><init>()V

    iput-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    .line 158
    iget-object v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v3, v2}, Ltmsdk/common/module/aresengine/MmsData;->writeNotificationInd(Lcom/google/android/mms/pdu/NotificationInd;)V

    .line 161
    .end local v0           #data:[B
    .end local v1           #parser:Lcom/google/android/mms/pdu/PduParser;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/aresengine/SmsEntity;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/TelephonyEntity;-><init>(Ltmsdk/common/module/aresengine/TelephonyEntity;)V

    .line 121
    iget-object v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 122
    iget-wide v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 123
    iget v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    iput v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 124
    iget v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    iput v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 125
    iget v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    iput v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    .line 126
    iget-object v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    .line 127
    iget-object v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    .line 128
    iget-object v0, p1, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static marshall(Ltmsdk/common/module/aresengine/SmsEntity;)[B
    .locals 3
    .parameter "sms"

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, dest:Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ltmsdk/common/module/aresengine/SmsEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 182
    .local v1, raw:[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    return-object v1
.end method

.method public static unmarshall([B)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 4
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 188
    .local v1, src:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 189
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 190
    new-instance v0, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v0, v1}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>(Landroid/os/Parcel;)V

    .line 191
    .local v0, result:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method fx()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 5

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    iget-object v1, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    iget-object v2, p0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-wide v3, p0, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    invoke-virtual {v1, v2, v3, v4}, Ltmsdk/common/module/aresengine/MmsData;->b(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsContentLocation()[B
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/MmsData;->getContentLocation()[B

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMmsTransactionId()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/MmsData;->getTransactionId()[B

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 92
    return-void

    .line 91
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 165
    iget v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-wide v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 175
    iget-object v0, p0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    return-void
.end method
