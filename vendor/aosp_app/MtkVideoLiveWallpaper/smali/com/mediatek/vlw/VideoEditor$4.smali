.class Lcom/mediatek/vlw/VideoEditor$4;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "mp"

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const/4 v4, 0x4

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I
    invoke-static {v2, v4}, Lcom/mediatek/vlw/VideoEditor;->access$1302(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 271
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 273
    .local v0, duration:I
    const-string v4, "VideoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCompletion mCurrentState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1300(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",duration = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mTargetState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mTargetState:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1900(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mBucketId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$300(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mMode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$700(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mLoopMode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$800(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/Utils$LoopMode;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",uris = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$600(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$600(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",invalidUris = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mTargetState:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$1900(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 283
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$300(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 284
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$800(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/Utils$LoopMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$700(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/vlw/VideoEditor;->access$600(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v2, v4}, Lcom/mediatek/vlw/VideoEditor;->access$702(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 285
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$700(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 286
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v1

    .line 287
    .local v1, oldUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$600(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$700(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v4, v2}, Lcom/mediatek/vlw/VideoEditor;->access$402(Lcom/mediatek/vlw/VideoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 288
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$2000(Lcom/mediatek/vlw/VideoEditor;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/vlw/VideoEditor$4$1;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoEditor$4$1;-><init>(Lcom/mediatek/vlw/VideoEditor$4;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    .end local v1           #oldUri:Landroid/net/Uri;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v3

    .line 273
    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto/16 :goto_1

    .line 298
    .restart local v1       #oldUri:Landroid/net/Uri;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->clear(ZZ)V
    invoke-static {v2, v3, v3}, Lcom/mediatek/vlw/VideoEditor;->access$1100(Lcom/mediatek/vlw/VideoEditor;ZZ)V

    .line 300
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/mediatek/vlw/VideoEditor;->access$402(Lcom/mediatek/vlw/VideoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 303
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$2000(Lcom/mediatek/vlw/VideoEditor;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/vlw/VideoEditor$4$2;

    invoke-direct {v3, p0}, Lcom/mediatek/vlw/VideoEditor$4$2;-><init>(Lcom/mediatek/vlw/VideoEditor$4;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 312
    .end local v1           #oldUri:Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$2000(Lcom/mediatek/vlw/VideoEditor;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/vlw/VideoEditor$4$3;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/vlw/VideoEditor$4$3;-><init>(Lcom/mediatek/vlw/VideoEditor$4;Landroid/media/MediaPlayer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 321
    :cond_5
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$2000(Lcom/mediatek/vlw/VideoEditor;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/vlw/VideoEditor$4$4;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/vlw/VideoEditor$4$4;-><init>(Lcom/mediatek/vlw/VideoEditor$4;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
