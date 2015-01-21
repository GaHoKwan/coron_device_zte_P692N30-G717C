.class Lcom/android/gallery3d/app/AlbumPage$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->showStereoPickDialog(Lcom/android/gallery3d/data/MediaItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$fItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic val$onlyPickAs2D:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$fItem:Lcom/android/gallery3d/data/MediaItem;

    iput-boolean p3, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$onlyPickAs2D:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, -0x1

    .line 479
    if-ne v4, p2, :cond_1

    .line 480
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$fItem:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->convertAndPick(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$800(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 489
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 490
    return-void

    .line 482
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$onlyPickAs2D:Z

    if-nez v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 484
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$fItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 486
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
