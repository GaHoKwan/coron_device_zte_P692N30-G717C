.class public Lcom/mediatek/apst/util/command/message/DeleteMessageReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "DeleteMessageReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteMmsDates:[J

.field private deleteMmsIds:[J

.field private deleteSmsDates:[J

.field private deleteSmsIds:[J


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
.method public getDeleteMmsDates()[J
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteMmsDates:[J

    return-object v0
.end method

.method public getDeleteMmsIds()[J
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteMmsIds:[J

    return-object v0
.end method

.method public getDeleteSmsDates()[J
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteSmsDates:[J

    return-object v0
.end method

.method public getDeleteSmsIds()[J
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteSmsIds:[J

    return-object v0
.end method

.method public setDeleteMmsDates([J)V
    .locals 0
    .parameter "deleteMmsDates"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteMmsDates:[J

    .line 111
    return-void
.end method

.method public setDeleteMmsIds([J)V
    .locals 0
    .parameter "deleteMmsIds"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteMmsIds:[J

    .line 107
    return-void
.end method

.method public setDeleteSmsDates([J)V
    .locals 0
    .parameter "deleteSmsDates"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteSmsDates:[J

    .line 103
    return-void
.end method

.method public setDeleteSmsIds([J)V
    .locals 0
    .parameter "deleteSmsIds"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/DeleteMessageReq;->deleteSmsIds:[J

    .line 99
    return-void
.end method
