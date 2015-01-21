.class public Lcom/mediatek/mms/ipmessage/message/IpImageMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
.source "IpImageMessage.java"


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mHeightInPixel:I

.field private mThumbPath:Ljava/lang/String;

.field private mWidthInPixel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightInPixel()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mHeightInPixel:I

    return v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthInPixel()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mWidthInPixel:I

    return v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mCaption:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setHeightInPixel(I)V
    .locals 0
    .parameter "heightInPixel"

    .prologue
    .line 59
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mHeightInPixel:I

    .line 60
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbPath"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mThumbPath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setWidthInPixel(I)V
    .locals 0
    .parameter "widthInPixel"

    .prologue
    .line 51
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->mWidthInPixel:I

    .line 52
    return-void
.end method
