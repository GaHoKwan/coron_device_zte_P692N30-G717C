.class public Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "ContactsSlowSyncInitRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private currentMaxId:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 66
    const/high16 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getCurrentMaxId()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;->currentMaxId:J

    return-wide v0
.end method

.method public setCurrentMaxId(J)V
    .locals 0
    .parameter "currentMaxId"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncInitRsp;->currentMaxId:J

    .line 101
    return-void
.end method
