.class Lcom/mediatek/vlw/VideoScene$2;
.super Landroid/content/BroadcastReceiver;
.source "VideoScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoScene;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShutdownReceiver intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    :cond_0
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown: ACTION_SHUTDOWN, mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent.getAction() == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v1, v5}, Lcom/mediatek/vlw/VideoScene;->access$402(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 329
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z
    invoke-static {v1, v5}, Lcom/mediatek/vlw/VideoScene;->access$1402(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 333
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->saveSettings()V
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1500(Lcom/mediatek/vlw/VideoScene;)V

    .line 334
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v1, v5}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 336
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->stopAndReleaseVideoObserver()V
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1600(Lcom/mediatek/vlw/VideoScene;)V

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mStartFromBoot:Z
    invoke-static {v1, v5}, Lcom/mediatek/vlw/VideoScene;->access$1402(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 341
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v1, v4}, Lcom/mediatek/vlw/VideoScene;->access$402(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 343
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVisible:Z
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1000(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mCurrentState:I
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1700(Lcom/mediatek/vlw/VideoScene;)I

    move-result v1

    if-nez v1, :cond_3

    .line 344
    const-string v1, "VideoScene"

    const-string v2, "mShutdownReceiver start video ."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 347
    :cond_3
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/vlw/Utils;->isDefaultVideo(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->isInPlaybackState()Z
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1800(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 354
    :cond_4
    const-string v1, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 356
    .local v0, smartBookPlug:Z
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive EXTRA_SMARTBOOK_PLUG_STATE , Smart Book plug in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->saveSettings()V
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1500(Lcom/mediatek/vlw/VideoScene;)V

    .line 358
    if-eqz v0, :cond_5

    .line 359
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    const-string v2, "smartbook_vlw"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    #setter for: Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VideoScene;->access$1902(Lcom/mediatek/vlw/VideoScene;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 363
    :goto_1
    const-string v1, "VideoScene"

    const-string v2, "smart book swithing done!!!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$2;->this$0:Lcom/mediatek/vlw/VideoScene;

    const-string v2, "vlw"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    #setter for: Lcom/mediatek/vlw/VideoScene;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VideoScene;->access$1902(Lcom/mediatek/vlw/VideoScene;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    goto :goto_1
.end method
