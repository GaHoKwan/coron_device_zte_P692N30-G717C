.class public Lcom/mediatek/apst/util/command/backup/MediaGetStorageStateReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "MediaGetStorageStateReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 58
    return-void
.end method