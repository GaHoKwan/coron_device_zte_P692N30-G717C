.class Lcom/mediatek/vlw/VideoEditor$2;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 177
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .parameter "mp"
    .parameter "framworkErr"
    .parameter "implErr"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$300(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mBucketId:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$300(Lcom/mediatek/vlw/VideoEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    .local v0, newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VideoEditor;->access$502(Lcom/mediatek/vlw/VideoEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/mediatek/vlw/VideoEditor;->access$602(Lcom/mediatek/vlw/VideoEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 194
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mLoopMode:Lcom/mediatek/vlw/Utils$LoopMode;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoEditor;->access$800(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/Utils$LoopMode;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$700(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoEditor;->access$600(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/mediatek/vlw/VideoEditor;->access$500(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/vlw/Utils;->getLoopIndex(Lcom/mediatek/vlw/Utils$LoopMode;ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VideoEditor;->access$702(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 195
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$700(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 196
    iget-object v2, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUriList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$600(Lcom/mediatek/vlw/VideoEditor;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v3}, Lcom/mediatek/vlw/VideoEditor;->access$700(Lcom/mediatek/vlw/VideoEditor;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/mediatek/vlw/VideoEditor;->access$402(Lcom/mediatek/vlw/VideoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mCurrentPos:I
    invoke-static {v1, v6}, Lcom/mediatek/vlw/VideoEditor;->access$1002(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 209
    .end local v0           #newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_1
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    const v2, 0x7f080005

    invoke-static {v1, v2, v7}, Lcom/mediatek/vlw/Utils;->showInfo(Landroid/content/Context;IZ)V

    .line 210
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->startPlayback()V
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$1200(Lcom/mediatek/vlw/VideoEditor;)V

    .line 212
    return v7

    .line 198
    .restart local v0       #newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    const-string v1, "VideoEditor"

    const-string v2, "Error: No valid videos, play default video"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->clear(ZZZ)V
    invoke-static {v1, v6, v7, v7}, Lcom/mediatek/vlw/VideoEditor;->access$900(Lcom/mediatek/vlw/VideoEditor;ZZZ)V

    .line 200
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mMode:I
    invoke-static {v1, v6}, Lcom/mediatek/vlw/VideoEditor;->access$702(Lcom/mediatek/vlw/VideoEditor;I)I

    goto :goto_0

    .line 206
    .end local v0           #newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    const-string v1, "VideoEditor"

    const-string v2, "errors, play default video"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$2;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->clear(ZZ)V
    invoke-static {v1, v6, v6}, Lcom/mediatek/vlw/VideoEditor;->access$1100(Lcom/mediatek/vlw/VideoEditor;ZZ)V

    goto :goto_1
.end method
