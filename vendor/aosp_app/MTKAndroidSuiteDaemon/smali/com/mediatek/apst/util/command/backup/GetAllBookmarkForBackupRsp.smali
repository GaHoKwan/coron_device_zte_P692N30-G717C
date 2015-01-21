.class public Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;
.super Lcom/mediatek/apst/util/command/RawBlockResponse;
.source "GetAllBookmarkForBackupRsp.java"


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

.field private mTest:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 84
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;-><init>(II)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->mBookmarkDataList:Ljava/util/ArrayList;

    .line 86
    return-void
.end method


# virtual methods
.method public getGetAllBookmarkInfoResults()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->mTest:Ljava/lang/String;

    return-object v0
.end method

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
    .line 89
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->mBookmarkDataList:Ljava/util/ArrayList;

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
    .line 68
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->mBookmarkFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGetAllBookmarkInfoResults(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->mTest:Ljava/lang/String;

    .line 115
    return-void
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
    .line 93
    .local p1, mBookmarkDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkData;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->mBookmarkDataList:Ljava/util/ArrayList;

    .line 94
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
    .line 72
    .local p1, mBookmarkFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/bookmark/BookmarkFolder;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/GetAllBookmarkForBackupRsp;->mBookmarkFolderList:Ljava/util/ArrayList;

    .line 73
    return-void
.end method
