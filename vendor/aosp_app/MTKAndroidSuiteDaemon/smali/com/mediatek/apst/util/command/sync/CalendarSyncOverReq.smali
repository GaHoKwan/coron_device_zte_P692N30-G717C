.class public Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "CalendarSyncOverReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private syncDate:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x11000

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getSyncDate()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;->syncDate:J

    return-wide v0
.end method

.method public setSyncDate(J)V
    .locals 0
    .parameter "syncDate"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/CalendarSyncOverReq;->syncDate:J

    .line 91
    return-void
.end method
