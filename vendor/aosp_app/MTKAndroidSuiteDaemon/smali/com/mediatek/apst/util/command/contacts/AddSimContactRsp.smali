.class public Lcom/mediatek/apst/util/command/contacts/AddSimContactRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "AddSimContactRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 65
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 66
    return-void
.end method