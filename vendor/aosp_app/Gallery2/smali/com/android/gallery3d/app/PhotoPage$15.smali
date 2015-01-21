.class Lcom/android/gallery3d/app/PhotoPage$15;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->showDrmDialog(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$drmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

.field final synthetic val$imageItem:Lcom/android/gallery3d/data/LocalImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/mediatek/drm/OmaDrmClient;Lcom/android/gallery3d/data/LocalImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$15;->val$drmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$15;->val$imageItem:Lcom/android/gallery3d/data/LocalImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2178
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->val$drmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$15;->val$imageItem:Lcom/android/gallery3d/data/LocalImage;

    iget-object v1, v1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/drm/OmaDrmClient;->consumeRights(Ljava/lang/String;I)I

    .line 2182
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->enterConsumeMode()V

    .line 2184
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->hideBars()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$900(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 2186
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2187
    return-void
.end method
