.class public Lcom/mediatek/apst/util/command/backup/MediaBackupReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "MediaBackupReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private backupPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentType:I

.field private fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public getBackupPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;->backupPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;->contentType:I

    return v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;->fileSize:J

    return-wide v0
.end method

.method public setBackupPaths(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, backupPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;->backupPaths:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public setContentType(I)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 99
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;->contentType:I

    .line 100
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/backup/MediaBackupReq;->fileSize:J

    .line 108
    return-void
.end method
