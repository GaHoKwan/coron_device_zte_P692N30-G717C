.class public Lcom/mediatek/mms/ipmessage/message/IpTextMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpMessage;
.source "IpTextMessage.java"


# instance fields
.field private mBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;-><init>()V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setType(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpTextMessage;->mBody:Ljava/lang/String;

    .line 55
    return-void
.end method
