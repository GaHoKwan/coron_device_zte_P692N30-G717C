.class public Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "ContactsFastSyncDeleteContactsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteIds:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/high16 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public getDeleteIds()[J
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsReq;->deleteIds:[J

    return-object v0
.end method

.method public setDeleteIds([J)V
    .locals 0
    .parameter "deleteIds"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncDeleteContactsReq;->deleteIds:[J

    .line 81
    return-void
.end method
