.class Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;
.super Ljava/lang/Object;
.source "WfdPowerSaving.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/WfdPowerSaving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 87
    const-string v4, "Gallery2/WfdPowerSaving"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWFDPowerSavingRunnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingMode:I
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$000(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerSavingMode:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$000(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$100(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/os/PowerManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->setBacklightOffForWFD(Z)V

    .line 92
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    new-instance v5, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

    iget-object v6, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;-><init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;)V

    #setter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenOnReceiver:Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;
    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$202(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

    .line 93
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mScreenOnReceiver:Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$200(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->register()V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$400(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, actionbar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 98
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$500(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v3

    .line 99
    .local v3, position:I
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$500(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v1

    .line 100
    .local v1, duration:I
    const-string v5, "Gallery2/WfdPowerSaving"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWFDPowerSavingRunnable videoview index= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$600(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v7}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$500(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$600(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v5}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$500(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 102
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #calls: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->updatePresentation()V
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$700(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V

    .line 103
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-virtual {v4, v3, v1}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->startVideo(II)V

    .line 106
    .end local v0           #actionbar:Landroid/app/ActionBar;
    .end local v1           #duration:I
    .end local v3           #position:I
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWindow:Landroid/view/Window;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$800(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 107
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 108
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mWindow:Landroid/view/Window;
    invoke-static {v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$800(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
