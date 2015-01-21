.class Lcom/mediatek/vlw/VideoEditor$3;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 216
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const/4 v6, 0x0

    .line 220
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const/4 v4, 0x3

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentState:I
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoEditor;->access$1302(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 221
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 222
    .local v0, duration:I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 223
    .local v1, height:I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    .line 225
    .local v2, width:I
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared, mp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 228
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mIsOpening:Z
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1500(Lcom/mediatek/vlw/VideoEditor;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 229
    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mEndTime:I
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$200(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v3

    const v5, 0x927c0

    if-ne v3, v5, :cond_6

    if-lez v0, :cond_6

    move v3, v0

    :goto_0
    #setter for: Lcom/mediatek/vlw/VideoEditor;->mEndTime:I
    invoke-static {v4, v3}, Lcom/mediatek/vlw/VideoEditor;->access$202(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 231
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mStartTime:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$100(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mEndTime:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$200(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/vlw/VLWMediaController;->initControllerState(III)V

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1700(Lcom/mediatek/vlw/VideoEditor;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-nez v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1000(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$1000(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 238
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared , seekTo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1000(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->play()V
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1800(Lcom/mediatek/vlw/VideoEditor;)V

    .line 242
    :cond_2
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 243
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3

    .line 244
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/mediatek/vlw/VideoEditor;->access$502(Lcom/mediatek/vlw/VideoEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 247
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_4
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared() warning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_5
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mIsOpening:Z
    invoke-static {v3, v6}, Lcom/mediatek/vlw/VideoEditor;->access$1502(Lcom/mediatek/vlw/VideoEditor;Z)Z

    .line 261
    :goto_1
    return-void

    .line 229
    :cond_6
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mEndTime:I
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$200(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v3

    goto/16 :goto_0

    .line 253
    :cond_7
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 254
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$1000(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/vlw/VLWMediaController;->traceBack(I)V

    goto :goto_1

    .line 257
    :cond_8
    const-string v3, "VideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "traceBack curPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$1000(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$3;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$1000(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_1
.end method
