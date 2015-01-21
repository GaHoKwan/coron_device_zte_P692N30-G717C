.class public Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "RestoreCalendarRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private insertedCount:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 68
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 69
    return-void
.end method


# virtual methods
.method public getInsertedCount()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;->insertedCount:J

    return-wide v0
.end method

.method public setInsertedCount(J)V
    .locals 0
    .parameter "insertedCount"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreCalendarRsp;->insertedCount:J

    .line 80
    return-void
.end method
