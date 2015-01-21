.class public Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "MediaBackupRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private dirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private newPaths:[Ljava/lang/String;

.field private oldPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 73
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->dirs:Ljava/util/ArrayList;

    .line 75
    return-void
.end method


# virtual methods
.method public getDirs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->dirs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNewPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->newPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getOldPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->oldPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public setDirs(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, dirs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->dirs:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method public setNewPaths([Ljava/lang/String;)V
    .locals 0
    .parameter "newPaths"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->newPaths:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setOldPaths([Ljava/lang/String;)V
    .locals 0
    .parameter "oldPaths"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupRsp;->oldPaths:[Ljava/lang/String;

    .line 98
    return-void
.end method
