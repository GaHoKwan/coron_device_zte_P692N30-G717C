.class Lcom/android/music/MediaPlaybackActivity$1;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$1;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 400
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    .line 401
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 402
    .local v2, x:I
    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v2, v3, 0x4

    .line 403
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->scrollTo(II)V

    .line 404
    if-nez v2, :cond_0

    .line 405
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, newmsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$1;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v3, v3, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v4, 0xf

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method