.class public Lcom/mediatek/apst/util/command/media/RenameFilesReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "RenameFilesReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newPaths:[Ljava/lang/String;

.field private oldPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/high16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getNewPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/media/RenameFilesReq;->newPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getOldPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/apst/util/command/media/RenameFilesReq;->oldPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public setNewPaths([Ljava/lang/String;)V
    .locals 0
    .parameter "newPaths"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/apst/util/command/media/RenameFilesReq;->newPaths:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setOldPaths([Ljava/lang/String;)V
    .locals 0
    .parameter "oldPaths"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/apst/util/command/media/RenameFilesReq;->oldPaths:[Ljava/lang/String;

    .line 87
    return-void
.end method
