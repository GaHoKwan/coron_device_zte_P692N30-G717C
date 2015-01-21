.class public Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
.source "IpVCardMessage.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mHomePhone:Ljava/lang/String;

.field private mMobilePhone:Ljava/lang/String;

.field private mName:Ljava/lang/String;


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
    .line 72
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getHomePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mHomePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mMobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mAddress:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mEmail:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setHomePhone(Ljava/lang/String;)V
    .locals 0
    .parameter "homePhone"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mHomePhone:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0
    .parameter "mobilePhone"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mMobilePhone:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVCardMessage;->mName:Ljava/lang/String;

    .line 53
    return-void
.end method
