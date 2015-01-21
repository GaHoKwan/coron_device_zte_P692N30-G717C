.class public Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "MoveMessageToBoxReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private box:I

.field private updateMmsDates:[J

.field private updateMmsIds:[J

.field private updateSmsDates:[J

.field private updateSmsIds:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getBox()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->box:I

    return v0
.end method

.method public getUpdateMmsDates()[J
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateMmsDates:[J

    return-object v0
.end method

.method public getUpdateMmsIds()[J
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateMmsIds:[J

    return-object v0
.end method

.method public getUpdateSmsDates()[J
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateSmsDates:[J

    return-object v0
.end method

.method public getUpdateSmsIds()[J
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateSmsIds:[J

    return-object v0
.end method

.method public setBox(I)V
    .locals 0
    .parameter "box"

    .prologue
    .line 120
    iput p1, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->box:I

    .line 121
    return-void
.end method

.method public setUpdateMmsDates([J)V
    .locals 0
    .parameter "updateMmsDates"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateMmsDates:[J

    .line 117
    return-void
.end method

.method public setUpdateMmsIds([J)V
    .locals 0
    .parameter "updateMmsIds"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateMmsIds:[J

    .line 113
    return-void
.end method

.method public setUpdateSmsDates([J)V
    .locals 0
    .parameter "updateSmsDates"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateSmsDates:[J

    .line 109
    return-void
.end method

.method public setUpdateSmsIds([J)V
    .locals 0
    .parameter "updateSmsIds"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/MoveMessageToBoxReq;->updateSmsIds:[J

    .line 105
    return-void
.end method
