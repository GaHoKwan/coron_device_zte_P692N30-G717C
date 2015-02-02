.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;
.super Landroid/os/Handler;
.source "DlbInStoreDemoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;


# direct methods
.method constructor <init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x7e1

    const/4 v4, 0x0

    .line 69
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle message in handler, msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7dc

    if-ne v1, v2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$000(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/dolby/instoredemoapp/DlbApController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolby/instoredemoapp/DlbApController;->processApMessage(Landroid/os/Message;)Z

    move-result v0

    .line 73
    .local v0, success:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$100(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$100(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    .line 108
    .end local v0           #success:Z
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7dd

    if-eq v1, v2, :cond_0

    .line 84
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7de

    if-ne v1, v2, :cond_2

    .line 85
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "handle START_LOOP_MEDIA_PLAYBACK event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #calls: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getLoopUri()Landroid/net/Uri;
    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$200(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 87
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    const/4 v2, 0x1

    #setter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z
    invoke-static {v1, v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$402(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    .line 88
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 89
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7df

    if-ne v1, v2, :cond_3

    .line 90
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "handle START_DEMO_MEDIA_PLAYBACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #calls: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getDemoUri()Landroid/net/Uri;
    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$500(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 93
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$000(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/dolby/instoredemoapp/DlbApController;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #calls: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getAutoPilotXmlFile()Ljava/io/InputStream;
    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$600(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolby/instoredemoapp/DlbApController;->setApInfoFile(Ljava/io/InputStream;)V

    .line 94
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #setter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z
    invoke-static {v1, v4}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$702(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    .line 95
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #setter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z
    invoke-static {v1, v4}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$402(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    goto :goto_0

    .line 96
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7e0

    if-ne v1, v2, :cond_5

    .line 98
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$000(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/dolby/instoredemoapp/DlbApController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolby/instoredemoapp/DlbApController;->saveCurrentDs1Data()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #calls: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getDemoUri()Landroid/net/Uri;
    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$500(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$800(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 103
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_6

    .line 104
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 106
    :cond_6
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DlbInstoreDemoPlayer.mHandler.handleMessage(), unknown message id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
