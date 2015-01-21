.class public Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "DeleteMessageRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteMmsCount:I

.field private deleteSmsCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 72
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 73
    return-void
.end method


# virtual methods
.method public getDeleteMmsCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;->deleteMmsCount:I

    return v0
.end method

.method public getDeleteSmsCount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;->deleteSmsCount:I

    return v0
.end method

.method public setDeleteMmsCount(I)V
    .locals 0
    .parameter "deleteMmsCount"

    .prologue
    .line 102
    iput p1, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;->deleteMmsCount:I

    .line 103
    return-void
.end method

.method public setDeleteSmsCount(I)V
    .locals 0
    .parameter "deleteSmsCount"

    .prologue
    .line 98
    iput p1, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageRsp;->deleteSmsCount:I

    .line 99
    return-void
.end method
