.class public Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "MarkMessageAsReadReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private read:Z

.field private updateMmsIds:[J

.field private updateSmsIds:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getUpdateMmsIds()[J
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->updateMmsIds:[J

    return-object v0
.end method

.method public getUpdateSmsIds()[J
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->updateSmsIds:[J

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->read:Z

    return v0
.end method

.method public setRead(Z)V
    .locals 0
    .parameter "read"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->read:Z

    .line 101
    return-void
.end method

.method public setUpdateMmsIds([J)V
    .locals 0
    .parameter "updateMmsIds"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->updateMmsIds:[J

    .line 97
    return-void
.end method

.method public setUpdateSmsIds([J)V
    .locals 0
    .parameter "updateSmsIds"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/MarkMessageAsReadReq;->updateSmsIds:[J

    .line 93
    return-void
.end method
