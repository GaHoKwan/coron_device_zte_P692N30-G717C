.class Lcom/android/gallery3d/app/AlbumPage$4$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage$4;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/AlbumPage$4;

.field final synthetic val$convertedUri:Landroid/net/Uri;

.field final synthetic val$fJc:Lcom/android/gallery3d/util/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage$4;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$4;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->val$fJc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->val$convertedUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mConvertUriTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/AlbumPage;->access$902(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 522
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1000(Lcom/android/gallery3d/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "Gallery2/AlbumPage"

    const-string v2, "mConvertUriTask:dismis ProgressDialog"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1000(Lcom/android/gallery3d/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->val$fJc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->val$convertedUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 528
    const-string v1, "Gallery2/AlbumPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAndPick:convertedUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->val$convertedUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 530
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$4$1;->val$convertedUri:Landroid/net/Uri;

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 532
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 534
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    return-void
.end method
