.class public Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "AsyncGetAllBookmarkInfoRsp.java"


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
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 71
    const/high16 v0, 0x110

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;->mBookmarkDataList:Ljava/util/ArrayList;

    .line 73
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
    .line 83
    iget-object v0, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;->mBookmarkDataList:Ljava/util/ArrayList;

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
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;->mBookmarkFolderList:Ljava/util/ArrayList;

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
    .line 96
    .local p1, mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;->mBookmarkDataList:Ljava/util/ArrayList;

    .line 97
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
    .line 92
    .local p1, mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncGetAllBookmarkInfoRsp;->mBookmarkFolderList:Ljava/util/ArrayList;

    .line 93
    return-void
.end method
