.class public Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "ClearMessageBoxReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private box:I

.field private keepLockedMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getBox()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;->box:I

    return v0
.end method

.method public isKeepLockedMessage()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;->keepLockedMessage:Z

    return v0
.end method

.method public setBox(I)V
    .locals 0
    .parameter "box"

    .prologue
    .line 112
    iput p1, p0, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;->box:I

    .line 113
    return-void
.end method

.method public setKeepLockedMessage(Z)V
    .locals 0
    .parameter "keepLockedMessage"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/ClearMessageBoxReq;->keepLockedMessage:Z

    .line 121
    return-void
.end method
