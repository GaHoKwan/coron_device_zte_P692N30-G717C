.class public Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpMessage;
.source "IpAttachMessage.java"


# instance fields
.field private mPath:Ljava/lang/String;

.field private mSize:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->mSize:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isInboxMsgDownloalable()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->mPath:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 74
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->mSize:I

    .line 75
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->mUrl:Ljava/lang/String;

    .line 67
    return-void
.end method
