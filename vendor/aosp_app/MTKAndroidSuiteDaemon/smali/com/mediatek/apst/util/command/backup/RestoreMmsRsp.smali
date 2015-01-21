.class public Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "RestoreMmsRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private insertedIds:[J

.field private threadIds:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 66
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getInsertedIds()[J
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;->insertedIds:[J

    return-object v0
.end method

.method public getThreadIds()[J
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;->threadIds:[J

    return-object v0
.end method

.method public setInsertedIds([J)V
    .locals 0
    .parameter "insertedIds"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;->insertedIds:[J

    .line 85
    return-void
.end method

.method public setThreadIds([J)V
    .locals 0
    .parameter "threadIds"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreMmsRsp;->threadIds:[J

    .line 89
    return-void
.end method
