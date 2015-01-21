.class public Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "SaveSmsDraftRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private date:J

.field private insertedId:J

.field private threadId:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 70
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 71
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->date:J

    return-wide v0
.end method

.method public getInsertedId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->insertedId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->threadId:J

    return-wide v0
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->date:J

    .line 101
    return-void
.end method

.method public setInsertedId(J)V
    .locals 0
    .parameter "insertedId"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->insertedId:J

    .line 93
    return-void
.end method

.method public setThreadId(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftRsp;->threadId:J

    .line 97
    return-void
.end method
