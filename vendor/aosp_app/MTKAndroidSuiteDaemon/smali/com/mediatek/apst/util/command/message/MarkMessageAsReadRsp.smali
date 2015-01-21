.class public Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "MarkMessageAsReadRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private updateMmsCount:I

.field private updateSmsCount:I


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
.method public getUpdateMmsCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;->updateMmsCount:I

    return v0
.end method

.method public getUpdateSmsCount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;->updateSmsCount:I

    return v0
.end method

.method public setUpdateMmsCount(I)V
    .locals 0
    .parameter "updateMmsCount"

    .prologue
    .line 102
    iput p1, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;->updateMmsCount:I

    .line 103
    return-void
.end method

.method public setUpdateSmsCount(I)V
    .locals 0
    .parameter "updateSmsCount"

    .prologue
    .line 98
    iput p1, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadRsp;->updateSmsCount:I

    .line 99
    return-void
.end method
