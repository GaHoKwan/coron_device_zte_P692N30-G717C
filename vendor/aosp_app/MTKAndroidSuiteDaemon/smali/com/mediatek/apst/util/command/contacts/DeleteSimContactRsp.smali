.class public Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "DeleteSimContactRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteResults:[Z


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
.method public getDeleteResults()[Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;->deleteResults:[Z

    return-object v0
.end method

.method public setDeleteResults([Z)V
    .locals 0
    .parameter "deleteResults"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactRsp;->deleteResults:[Z

    .line 81
    return-void
.end method
