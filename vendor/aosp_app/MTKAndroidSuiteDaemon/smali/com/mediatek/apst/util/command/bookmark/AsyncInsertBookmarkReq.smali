.class public Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AsyncInsertBookmarkReq.java"


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
    .line 76
    const/high16 v0, 0x110

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 77
    return-void
.end method


# virtual methods
.method public getBookmarkDataList()Ljava/util/ArrayList;
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
    .line 83
    iget-object v0, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;->mBookmarkDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBookmarkFolderList()Ljava/util/ArrayList;
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
    .line 87
    iget-object v0, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;->mBookmarkFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBookmarkDataList(Ljava/util/ArrayList;)V
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
    .line 94
    .local p1, bookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;->mBookmarkDataList:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public setBookmarkFolderList(Ljava/util/ArrayList;)V
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
    .line 98
    .local p1, bookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncInsertBookmarkReq;->mBookmarkFolderList:Ljava/util/ArrayList;

    .line 99
    return-void
.end method
