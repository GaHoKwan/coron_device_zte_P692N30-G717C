.class final enum Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$4;
.super Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
.source "DownloadInfoDBStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/update/data/storage/DownloadInfoDBStorage$1;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lcom/zte/update/data/DownloadInfo;Landroid/database/Cursor;)V
    .locals 1
    .parameter "info"
    .parameter "cursor"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$4;->index:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/update/data/DownloadInfo;->setDownloadfileName(Ljava/lang/String;)V

    .line 43
    return-void
.end method
