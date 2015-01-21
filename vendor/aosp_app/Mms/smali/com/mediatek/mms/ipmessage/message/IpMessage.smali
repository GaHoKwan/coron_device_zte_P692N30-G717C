.class public Lcom/mediatek/mms/ipmessage/message/IpMessage;
.super Ljava/lang/Object;
.source "IpMessage.java"


# instance fields
.field private mFrom:Ljava/lang/String;

.field private mId:I

.field private mIpDbId:I

.field private mSimId:I

.field private mStatus:I

.field private mTo:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mId:I

    return v0
.end method

.method public getIpDbId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mIpDbId:I

    return v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mSimId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mStatus:I

    return v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mTo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mType:I

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mFrom:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mId:I

    .line 62
    return-void
.end method

.method public setIpDbId(I)V
    .locals 0
    .parameter "ipDbId"

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mIpDbId:I

    .line 70
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 77
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mSimId:I

    .line 78
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 93
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mStatus:I

    .line 94
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "to"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mTo:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 85
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpMessage;->mType:I

    .line 86
    return-void
.end method
