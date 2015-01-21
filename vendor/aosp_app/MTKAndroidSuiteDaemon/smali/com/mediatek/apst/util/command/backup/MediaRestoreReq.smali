.class public Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "MediaRestoreReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contentType:I

.field private fileSize:J

.field private restorePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public getContentType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;->contentType:I

    return v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;->fileSize:J

    return-wide v0
.end method

.method public getRestorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;->restorePath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(I)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;->contentType:I

    .line 92
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;->fileSize:J

    .line 100
    return-void
.end method

.method public setRestorePath(Ljava/lang/String;)V
    .locals 0
    .parameter "restorePath"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreReq;->restorePath:Ljava/lang/String;

    .line 96
    return-void
.end method
