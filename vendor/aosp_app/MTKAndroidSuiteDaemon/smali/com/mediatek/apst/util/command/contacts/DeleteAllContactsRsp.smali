.class public Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "DeleteAllContactsRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 66
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;->deleteCount:I

    return v0
.end method

.method public setDeleteCount(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 80
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteAllContactsRsp;->deleteCount:I

    .line 81
    return-void
.end method
