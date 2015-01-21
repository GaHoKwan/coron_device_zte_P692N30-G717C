.class Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "ContainerPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 1
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/mediatek/gallery3d/conshots/ContainerPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 8
    .parameter "indexHint"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 807
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v4, v4, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 808
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 809
    iput v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    .line 810
    iget v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    .line 831
    :goto_0
    return v4

    .line 812
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 813
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 814
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v3

    .line 816
    .local v3, mediaItemSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 817
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 818
    .local v2, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 820
    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    .line 821
    iget v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    goto :goto_0

    .line 816
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    .end local v0           #i:I
    .end local v2           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #mediaItemSize:I
    :cond_2
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumDataLoader;->getActiveStart()I

    move-result v4

    iput v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    .line 827
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 828
    iput v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    .line 831
    :cond_3
    iget v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    goto :goto_0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 4

    .prologue
    .line 835
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 837
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 848
    :goto_0
    return-object v0

    .line 842
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 843
    .restart local v1       #item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_1

    .line 844
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$500(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 845
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 853
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 856
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 857
    .local v0, path:Lcom/android/gallery3d/data/Path;
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->findItem(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    .line 858
    iget v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->mIndex:I

    .line 860
    .end local v0           #path:Lcom/android/gallery3d/data/Path;
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyDetailsSource;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    return v0
.end method
