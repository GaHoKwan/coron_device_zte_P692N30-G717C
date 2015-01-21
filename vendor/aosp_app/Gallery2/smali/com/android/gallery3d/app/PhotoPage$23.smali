.class Lcom/android/gallery3d/app/PhotoPage$23;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->convertAndShare(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$item:Lcom/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2928
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$23;->val$item:Lcom/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$23;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2928
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$23;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .parameter "jc"

    .prologue
    .line 2931
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$23;->val$item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$23;->val$item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->convertSingle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2933
    .local v0, convertedUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$23;->val$intent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2935
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$23$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/PhotoPage$23$1;-><init>(Lcom/android/gallery3d/app/PhotoPage$23;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2946
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2947
    const-string v1, "Gallery2/PhotoPage"

    const-string v2, "showStereoShareDialog:start new intent!"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$23;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->safeStartIntent(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$5400(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V

    .line 2950
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
