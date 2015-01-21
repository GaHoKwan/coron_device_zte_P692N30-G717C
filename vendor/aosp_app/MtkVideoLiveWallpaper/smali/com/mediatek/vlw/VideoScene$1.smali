.class Lcom/mediatek/vlw/VideoScene$1;
.super Landroid/os/Handler;
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
    .line 228
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 231
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 306
    :pswitch_0
    const-string v7, "VideoScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_1
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v7}, Lcom/mediatek/vlw/VideoScene;->getCurrentPosition()I

    move-result v7

    int-to-long v3, v7

    .line 234
    .local v3, pos:J
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v7}, Lcom/mediatek/vlw/VideoScene;->getDuration()I

    move-result v7

    int-to-long v0, v7

    .line 235
    .local v0, duration:J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    .line 236
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 237
    .local v2, message:Landroid/os/Message;
    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 238
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$000(Lcom/mediatek/vlw/VideoScene;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v7, v0

    if-gez v7, :cond_3

    .line 239
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mEndTime:I
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$000(Lcom/mediatek/vlw/VideoScene;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    .line 240
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mStartTime:I
    invoke-static {v8}, Lcom/mediatek/vlw/VideoScene;->access$100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/vlw/VideoScene;->seekTo(J)V

    .line 242
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 243
    .restart local v2       #message:Landroid/os/Message;
    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 245
    .end local v2           #message:Landroid/os/Message;
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 251
    .end local v0           #duration:J
    .end local v3           #pos:J
    :pswitch_2
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v8, 0x0

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 252
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 256
    :pswitch_3
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, videoPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/vlw/Utils;->isExternalFileExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v5, 0x1

    .line 258
    .local v5, videoExistNot:Z
    :goto_1
    const-string v7, "VideoScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_RELOAD_VIDEO, videoExistNot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mHasShutdown = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v9}, Lcom/mediatek/vlw/VideoScene;->access$400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-nez v5, :cond_4

    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHasShutdown:Z
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 260
    :cond_4
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 261
    .restart local v2       #message:Landroid/os/Message;
    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    const-string v7, "VideoScene"

    const-string v8, "Cannot query video path, reload it in 1sec"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    .end local v2           #message:Landroid/os/Message;
    .end local v5           #videoExistNot:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 265
    .restart local v5       #videoExistNot:Z
    :cond_6
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z
    invoke-static {v7, v8}, Lcom/mediatek/vlw/VideoScene;->access$502(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 266
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mPreview:Z
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$600(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 271
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    iget-object v8, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mCurrentPos:I
    invoke-static {v8}, Lcom/mediatek/vlw/VideoScene;->access$800(Lcom/mediatek/vlw/VideoScene;)I

    move-result v8

    int-to-long v8, v8

    #setter for: Lcom/mediatek/vlw/VideoScene;->mSeekWhenPrepared:J
    invoke-static {v7, v8, v9}, Lcom/mediatek/vlw/VideoScene;->access$702(Lcom/mediatek/vlw/VideoScene;J)J

    .line 273
    :cond_7
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 274
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVisible:Z
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$1000(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 275
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v7}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto/16 :goto_0

    .line 281
    .end local v5           #videoExistNot:Z
    .end local v6           #videoPath:Ljava/lang/String;
    :pswitch_4
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$500(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    const-string v7, "VideoScene"

    const-string v8, "MSG_CLEAR sdcard removed, play default video"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mWaitingReload:Z
    invoke-static {v7, v8}, Lcom/mediatek/vlw/VideoScene;->access$502(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 289
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$1100(Lcom/mediatek/vlw/VideoScene;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080005

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/mediatek/vlw/Utils;->showInfo(Landroid/content/Context;IZ)V

    .line 291
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v8, 0x0

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 292
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v8, 0x1

    const/4 v9, 0x1

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 293
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 294
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVisible:Z
    invoke-static {v7}, Lcom/mediatek/vlw/VideoScene;->access$1000(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v7}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto/16 :goto_0

    .line 300
    :pswitch_5
    const-string v7, "VideoScene"

    const-string v8, "find the invalid video"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v7, p0, Lcom/mediatek/vlw/VideoScene$1;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v7}, Lcom/mediatek/vlw/VideoScene;->handleInvalid()V

    .line 302
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
