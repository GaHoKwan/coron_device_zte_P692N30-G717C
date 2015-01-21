.class public abstract Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;
.super Ljava/lang/Object;
.source "MultiMediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$DeleteMediaStoreHelper;,
        Lcom/mediatek/filemanager/service/MultiMediaStoreHelper$PasteMediaStoreHelper;
    }
.end annotation


# static fields
.field private static final NEED_UPDATE:I = 0xc8


# instance fields
.field protected final mMediaStoreHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

.field protected final mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/service/MediaStoreHelper;)V
    .locals 2
    .parameter "mediaStoreHelper"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaStoreHelper has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mMediaStoreHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    .line 54
    return-void
.end method


# virtual methods
.method public addRecord(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->updateRecords()V

    .line 61
    :cond_0
    return-void
.end method

.method public setDstFolder(Ljava/lang/String;)V
    .locals 1
    .parameter "dstFolder"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mMediaStoreHelper:Lcom/mediatek/filemanager/service/MediaStoreHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/service/MediaStoreHelper;->setDstFolder(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public updateRecords()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/filemanager/service/MultiMediaStoreHelper;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    return-void
.end method
