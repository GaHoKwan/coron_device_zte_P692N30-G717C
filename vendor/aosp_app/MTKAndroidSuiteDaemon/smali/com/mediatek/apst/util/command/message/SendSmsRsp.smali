.class public Lcom/mediatek/apst/util/command/message/SendSmsRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "SendSmsRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private dates:[J

.field private insertedIds:[J

.field private simId:I

.field private threadId:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 74
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->simId:I

    .line 77
    return-void
.end method


# virtual methods
.method public getDates()[J
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->dates:[J

    return-object v0
.end method

.method public getInsertedIds()[J
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->insertedIds:[J

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->simId:I

    return v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->threadId:J

    return-wide v0
.end method

.method public setDates([J)V
    .locals 0
    .parameter "dates"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->dates:[J

    .line 120
    return-void
.end method

.method public setInsertedIds([J)V
    .locals 0
    .parameter "insertedIds"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->insertedIds:[J

    .line 112
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 132
    iput p1, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->simId:I

    .line 133
    return-void
.end method

.method public setThreadId(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/SendSmsRsp;->threadId:J

    .line 116
    return-void
.end method
