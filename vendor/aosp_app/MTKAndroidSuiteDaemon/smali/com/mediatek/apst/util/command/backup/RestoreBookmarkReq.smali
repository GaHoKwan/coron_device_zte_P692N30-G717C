.class public Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "RestoreBookmarkReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mBookmarkDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;",
            ">;"
        }
    .end annotation
.end field

.field private mBookmarkFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;",
            ">;"
        }
    .end annotation
.end field


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
.method public getmBookmarkDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;->mBookmarkDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmBookmarkFolderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;->mBookmarkFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmBookmarkDataList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;->mBookmarkDataList:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public setmBookmarkFolderList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreBookmarkReq;->mBookmarkFolderList:Ljava/util/ArrayList;

    .line 92
    return-void
.end method
