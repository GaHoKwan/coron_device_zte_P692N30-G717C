.class public Ltmsdk/common/module/aresengine/MmsData;
.super Ltmsdk/common/BaseEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/aresengine/MmsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

.field public mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

.field public mmsParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/MmsPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ltmsdk/common/module/aresengine/MmsData$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/MmsData$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/MmsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 45
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 47
    const-class v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    .line 48
    const-class v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    .line 49
    const-class v0, Ltmsdk/common/module/aresengine/MmsPart;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    .line 50
    return-void
.end method

.method private a(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 5
    .parameter "body"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    .line 97
    .local v1, partCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 99
    iget-object v2, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    new-instance v3, Ltmsdk/common/module/aresengine/MmsPart;

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    invoke-direct {v3, v4}, Ltmsdk/common/module/aresengine/MmsPart;-><init>(Lcom/google/android/mms/pdu/PduPart;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0           #i:I
    .end local v1           #partCount:I
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 1
    .parameter "pdu"

    .prologue
    .line 83
    new-instance v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    invoke-direct {v0, p1}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;-><init>(Lcom/google/android/mms/pdu/SendReq;)V

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-direct {p0, v0}, Ltmsdk/common/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/PduBody;)V

    .line 85
    return-void
.end method

.method b(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 5
    .parameter "phonenumber"
    .parameter "date"

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    if-nez v4, :cond_1

    .line 132
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    invoke-virtual {v4, p1}, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->cm(Ljava/lang/String;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 136
    :cond_1
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    if-eqz v4, :cond_2

    .line 137
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {v4, p1, p2, p3}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->b(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 139
    :cond_2
    if-eqz v2, :cond_0

    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 140
    new-instance v3, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 141
    .local v3, pduBody:Lcom/google/android/mms/pdu/PduBody;
    iget-object v4, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/aresengine/MmsPart;

    .line 142
    .local v1, part:Ltmsdk/common/module/aresengine/MmsPart;
    invoke-virtual {v1}, Ltmsdk/common/module/aresengine/MmsPart;->fw()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_1

    .end local v1           #part:Ltmsdk/common/module/aresengine/MmsPart;
    :cond_3
    move-object v4, v2

    .line 144
    check-cast v4, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v4, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method getContentLocation()[B
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, contentLocation:[B
    iget-object v1, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    iget-object v0, v1, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    .line 113
    :cond_0
    return-object v0
.end method

.method getTransactionId()[B
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, transactionId:[B
    iget-object v1, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    iget-object v0, v1, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    .line 121
    :cond_0
    if-nez v0, :cond_1

    .line 122
    iget-object v1, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    iget-object v0, v1, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    .line 126
    :cond_1
    return-object v0
.end method

.method public writeNotificationInd(Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 1
    .parameter "pdu"

    .prologue
    .line 105
    new-instance v0, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    invoke-direct {v0, p1}, Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;-><init>(Lcom/google/android/mms/pdu/NotificationInd;)V

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    .line 106
    return-void
.end method

.method public writeRetrieveConf(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 1
    .parameter "pdu"

    .prologue
    .line 78
    new-instance v0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    invoke-direct {v0, p1}, Ltmsdk/common/module/aresengine/MmsContentConfigHeader;-><init>(Lcom/google/android/mms/pdu/RetrieveConf;)V

    iput-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-direct {p0, v0}, Ltmsdk/common/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/PduBody;)V

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 59
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsNotificationIndHeader:Ltmsdk/common/module/aresengine/MmsNotificationIndHeader;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsContentConfigHeader:Ltmsdk/common/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Ltmsdk/common/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 62
    return-void
.end method
