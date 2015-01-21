.class public Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
.source "IpVideoMessage.java"


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mDurationTime:I

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
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->mDurationTime:I

    return v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->mThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->mCaption:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "durationTime"

    .prologue
    .line 50
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->mDurationTime:I

    .line 51
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbPath"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->mThumbPath:Ljava/lang/String;

    .line 67
    return-void
.end method
