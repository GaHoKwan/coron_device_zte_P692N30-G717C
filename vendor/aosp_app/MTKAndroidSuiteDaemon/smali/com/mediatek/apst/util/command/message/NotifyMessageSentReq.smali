.class public Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotifyMessageSentReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private date:J

.field private id:J

.field private messageType:I

.field private sent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->date:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->id:J

    return-wide v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->messageType:I

    return v0
.end method

.method public isSent()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->sent:Z

    return v0
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->date:J

    .line 107
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->id:J

    .line 99
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .parameter "messageType"

    .prologue
    .line 102
    iput p1, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->messageType:I

    .line 103
    return-void
.end method

.method public setSent(Z)V
    .locals 0
    .parameter "sent"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/NotifyMessageSentReq;->sent:Z

    .line 111
    return-void
.end method
