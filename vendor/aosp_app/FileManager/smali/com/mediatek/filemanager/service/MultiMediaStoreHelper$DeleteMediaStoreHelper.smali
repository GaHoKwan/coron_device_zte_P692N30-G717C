.class public Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;
.super Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;
.source "MultiMediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteMediaStoreHelper"
.end annotation


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V
    .locals 0
    .parameter "mediaStoreHelper"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;-><init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V

    .line 91
    return-void
.end method


# virtual methods
.method public updateRecords()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mMediaStoreHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    iget-object v1, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/MediaStoreHelper;->deleteFileInMediaStore(Ljava/util/List;)V

    .line 96
    invoke-super {p0}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->updateRecords()V

    .line 97
    return-void
.end method
