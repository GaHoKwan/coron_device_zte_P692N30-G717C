.class public Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
.source "IpLocationMessage.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mThumbPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mLongitude:D

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mAddress:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mLatitude:D

    .line 60
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mLongitude:D

    .line 52
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbPath"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpLocationMessage;->mThumbPath:Ljava/lang/String;

    .line 76
    return-void
.end method
