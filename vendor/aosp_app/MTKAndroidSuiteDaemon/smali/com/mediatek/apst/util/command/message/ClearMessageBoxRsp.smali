.class public Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "ClearMessageBoxRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deletedCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 66
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getDeletedCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;->deletedCount:I

    return v0
.end method

.method public setDeletedCount(I)V
    .locals 0
    .parameter "deletedCount"

    .prologue
    .line 80
    iput p1, p0, Lcom/mediatek/apst/util/command/message/ClearMessageBoxRsp;->deletedCount:I

    .line 81
    return-void
.end method
