.class public Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "MediaRestoreOverReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private restoreFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getRestoreFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;->restoreFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setRestoreFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "restoreFilePath"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreOverReq;->restoreFilePath:Ljava/lang/String;

    .line 83
    return-void
.end method
