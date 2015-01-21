.class public Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "MediaFileRenameReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newPaths:[Ljava/lang/String;

.field private oldPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public getNewPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;->newPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getOldPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;->oldPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public setNewPaths([Ljava/lang/String;)V
    .locals 0
    .parameter "newPaths"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;->newPaths:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setOldPaths([Ljava/lang/String;)V
    .locals 0
    .parameter "oldPaths"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaFileRenameReq;->oldPaths:[Ljava/lang/String;

    .line 84
    return-void
.end method
