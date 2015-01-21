.class Lcom/mediatek/vlw/VideoEditor$4$4;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoEditor$4;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/vlw/VideoEditor$4;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor$4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iput p2, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v1, v1, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mStartTime:I
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$100(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v2, v2, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mEndTime:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$200(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v2

    iget v3, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->val$duration:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/vlw/VLWMediaController;->initControllerState(III)V

    .line 328
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->play()V

    .line 329
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$4;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mTargetState:I
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoEditor;->access$1902(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 330
    const-string v0, "VideoEditor"

    const-string v1, "Play the same video in single video mode."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method
