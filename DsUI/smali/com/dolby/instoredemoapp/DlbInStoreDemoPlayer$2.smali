.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;
.super Ljava/lang/Object;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 113
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$400(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$800(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z
    invoke-static {v0, v1}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$702(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    .line 120
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 121
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$800(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_0
    return-void
.end method
