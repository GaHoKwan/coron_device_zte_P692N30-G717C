.class Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "ContainerPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/mediatek/gallery3d/conshots/ContainerPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 6
    .parameter "loadingFailed"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 773
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->clearLoadingBit(I)V
    invoke-static {v2, v0}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1800(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V

    .line 775
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 777
    .local v0, inSelectionMode:Z
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1900(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1900(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    .line 779
    .local v1, itemCount:I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->onSourceContentChanged()V

    .line 780
    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 781
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->restoreSelection()V

    .line 782
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 783
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 785
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mInMotionMode:Z
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 786
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2200(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1900(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->markBestShotItems(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    .line 793
    :cond_1
    :goto_2
    return-void

    .end local v0           #inSelectionMode:Z
    .end local v1           #itemCount:I
    :cond_2
    move v0, v3

    .line 775
    goto :goto_0

    .restart local v0       #inSelectionMode:Z
    :cond_3
    move v1, v3

    .line 777
    goto :goto_1

    .line 788
    .restart local v1       #itemCount:I
    :cond_4
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1900(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/conshots/MotionSet;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/conshots/MotionSet;->isParentExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$MyLoadingListener;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/gallery3d/conshots/ContainerPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$1700(Lcom/mediatek/gallery3d/conshots/ContainerPage;I)V

    .line 769
    return-void
.end method
