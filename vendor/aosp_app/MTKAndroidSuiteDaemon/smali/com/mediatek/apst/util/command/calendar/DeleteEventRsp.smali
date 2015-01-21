.class public Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "DeleteEventRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteResults:[Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 68
    const/high16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 69
    return-void
.end method


# virtual methods
.method public getDeleteResults()[Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;->deleteResults:[Z

    return-object v0
.end method

.method public setDeleteResults([Z)V
    .locals 0
    .parameter "deleteResults"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mediatek/apst/util/command/calendar/DeleteEventRsp;->deleteResults:[Z

    .line 83
    return-void
.end method
