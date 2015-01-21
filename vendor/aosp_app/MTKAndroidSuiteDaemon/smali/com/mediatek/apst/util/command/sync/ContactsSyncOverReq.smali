.class public Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "ContactsSyncOverReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private syncDate:J


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
.method public getSyncDate()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;->syncDate:J

    return-wide v0
.end method

.method public setSyncDate(J)V
    .locals 0
    .parameter "syncDate"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverReq;->syncDate:J

    .line 89
    return-void
.end method
