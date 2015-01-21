.class public Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "DeleteAllMessagesReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private keepLockedMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public isKeepLockedMessage()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;->keepLockedMessage:Z

    return v0
.end method

.method public setKeepLockedMessage(Z)V
    .locals 0
    .parameter "keepLockedMessage"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/message/DeleteAllMessagesReq;->keepLockedMessage:Z

    .line 81
    return-void
.end method
