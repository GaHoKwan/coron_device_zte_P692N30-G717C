.class Lcom/android/music/MediaPlaybackService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 474
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mReceiverUnregistered:Z
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$2700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, action:Ljava/lang/String;
    const-string v5, "command"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, cmd:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIntentReceiver.onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 481
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIntentReceiver.onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 486
    :cond_2
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackService;->access$2800(Lcom/android/music/MediaPlaybackService;)Landroid/database/ContentObserver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 490
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$2900(Lcom/android/music/MediaPlaybackService;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 491
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackService;->access$2900(Lcom/android/music/MediaPlaybackService;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5, v10}, Lcom/android/music/MediaPlaybackService;->access$2902(Lcom/android/music/MediaPlaybackService;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 495
    :cond_3
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v5, v9}, Lcom/android/music/MediaPlaybackService;->access$3000(Lcom/android/music/MediaPlaybackService;Z)V

    .line 496
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 499
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 500
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 503
    :cond_4
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->stop()V

    goto/16 :goto_0

    .line 511
    :cond_5
    const-string v5, "next"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "com.android.music.musicservicecommand.next"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 513
    :cond_6
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/MusicUtils;->hasMountedSDcard(Landroid/content/Context;)Z

    move-result v4

    .line 514
    .local v4, hasCard:Z
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIntentReceiver.onReceive hasCard = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz v4, :cond_7

    .line 516
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5, v9}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    goto/16 :goto_0

    .line 518
    :cond_7
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v6, "com.android.music.quitplayback"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    .end local v4           #hasCard:Z
    :cond_8
    const-string v5, "previous"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 522
    :cond_9
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto/16 :goto_0

    .line 523
    :cond_a
    const-string v5, "togglepause"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 524
    :cond_b
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 525
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 526
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v5, v8}, Lcom/android/music/MediaPlaybackService;->access$2402(Lcom/android/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 528
    :cond_c
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 530
    :cond_d
    const-string v5, "pause"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 532
    :cond_e
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 533
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v5, v8}, Lcom/android/music/MediaPlaybackService;->access$2402(Lcom/android/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 534
    :cond_f
    const-string v5, "play"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 535
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 536
    :cond_10
    const-string v5, "stop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 537
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 538
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v5, v8}, Lcom/android/music/MediaPlaybackService;->access$2402(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 539
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 540
    :cond_11
    const-string v5, "appwidgetupdate"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 543
    const-string v5, "appWidgetIds"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 544
    .local v1, appWidgetIds:[I
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$3100(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v5, v6, v1}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    goto/16 :goto_0

    .line 546
    .end local v1           #appWidgetIds:[I
    :cond_12
    const-string v5, "com.android.music.attachauxaudioeffect"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 549
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v6, "auxaudioeffectid"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v5, v6}, Lcom/android/music/MediaPlaybackService;->access$3202(Lcom/android/music/MediaPlaybackService;I)I

    .line 550
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATTACH_AUX_AUDIO_EFFECT with EffectId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)I

    move-result v5

    if-lez v5, :cond_0

    .line 556
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 557
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v6}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->attachAuxEffect(I)V

    .line 558
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setAuxEffectSendLevel(F)V

    .line 559
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z
    invoke-static {v5, v8}, Lcom/android/music/MediaPlaybackService;->access$3302(Lcom/android/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 561
    :cond_13
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z
    invoke-static {v5, v9}, Lcom/android/music/MediaPlaybackService;->access$3302(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 562
    const-string v5, "MusicService"

    const-string v6, "Need attach reverb effect when play music again!"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 565
    :cond_14
    const-string v5, "com.android.music.detachauxaudioeffect"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 567
    const-string v5, "auxaudioeffectid"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 568
    .local v2, auxEffectId:I
    const-string v5, "MusicService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DETACH_AUX_AUDIO_EFFECT with EffectId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 570
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mAuxEffectId:I
    invoke-static {v5, v8}, Lcom/android/music/MediaPlaybackService;->access$3202(Lcom/android/music/MediaPlaybackService;I)I

    .line 571
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 572
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 573
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->attachAuxEffect(I)V

    .line 574
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z
    invoke-static {v5, v8}, Lcom/android/music/MediaPlaybackService;->access$3302(Lcom/android/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 576
    :cond_15
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mWhetherAttachWhenPause:Z
    invoke-static {v5, v9}, Lcom/android/music/MediaPlaybackService;->access$3302(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 577
    const-string v5, "MusicService"

    const-string v6, "Need detach reverb effect when play music again!"

    invoke-static {v5, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
