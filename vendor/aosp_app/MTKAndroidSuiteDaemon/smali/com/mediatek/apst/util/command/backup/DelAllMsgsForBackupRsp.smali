.class public Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "DelAllMsgsForBackupRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deletedCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 65
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 66
    return-void
.end method


# virtual methods
.method public getDeletedCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;->deletedCount:I

    return v0
.end method

.method public setDeletedCount(I)V
    .locals 0
    .parameter "deletedCount"

    .prologue
    .line 79
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/DelAllMsgsForBackupRsp;->deletedCount:I

    .line 80
    return-void
.end method
