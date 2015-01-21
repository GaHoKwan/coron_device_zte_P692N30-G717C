.class public Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
.source "IpVoiceMessage.java"


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mDurationTime:I


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
    .line 53
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->mDurationTime:I

    return v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->mCaption:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "durationTime"

    .prologue
    .line 49
    iput p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->mDurationTime:I

    .line 50
    return-void
.end method
