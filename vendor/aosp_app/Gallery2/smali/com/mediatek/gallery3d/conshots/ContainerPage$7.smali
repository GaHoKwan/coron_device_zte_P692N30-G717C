.class Lcom/mediatek/gallery3d/conshots/ContainerPage$7;
.super Ljava/lang/Thread;
.source "ContainerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;->motionTrackBlend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

.field final synthetic val$genProgressDialog:Landroid/app/DialogFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;Landroid/app/DialogFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iput-object p2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->val$genProgressDialog:Landroid/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 961
    .local v0, beginTime:J
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    iget-object v5, v5, Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 962
    .local v4, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;
    invoke-static {v5}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2400(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/mediatek/gallery3d/conshots/MotionTrack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->loadSelected(Ljava/util/ArrayList;)V

    .line 963
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mMotionTrack:Lcom/mediatek/gallery3d/conshots/MotionTrack;
    invoke-static {v5}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2400(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/mediatek/gallery3d/conshots/MotionTrack;

    invoke-static {}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->doBlend()V

    .line 964
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->val$genProgressDialog:Landroid/app/DialogFragment;

    invoke-virtual {v5}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 965
    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$7;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$2300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 968
    .local v2, endTime:J
    const-string v5, "Gallery2/ContainerPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MM_PROFILE blend time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v2, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void
.end method
