.class Lcom/android/gallery3d/app/PhotoPage$22;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->showStereoShareDialog(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$item:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic val$onlyShareAs2D:Z

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2886
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$22;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$shareIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$item:Lcom/android/gallery3d/data/MediaItem;

    iput-boolean p4, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$onlyShareAs2D:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2888
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 2889
    const-string v0, "Gallery2/PhotoPage"

    const-string v1, "showStereoShareDialog:convert to 2D clicked!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$22;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$shareIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$item:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->convertAndShare(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V

    .line 2897
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2898
    return-void

    .line 2892
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$onlyShareAs2D:Z

    if-nez v0, :cond_0

    .line 2893
    const-string v0, "Gallery2/PhotoPage"

    const-string v1, "showStereoShareDialog:start original intent!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$22;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$shareIntent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->safeStartIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5400(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V

    goto :goto_0
.end method
