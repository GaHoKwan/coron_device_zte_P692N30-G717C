.class Lcom/android/gallery3d/app/PhotoPage$24$2;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage$24;->dismissDialogAndForwardIntent(Landroid/content/Intent;Landroid/app/DialogFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/PhotoPage$24;

.field final synthetic val$finalIntent:Landroid/content/Intent;

.field final synthetic val$genProgressDialog:Landroid/app/DialogFragment;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage$24;Landroid/app/DialogFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3122
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$24$2;->this$1:Lcom/android/gallery3d/app/PhotoPage$24;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$24$2;->val$genProgressDialog:Landroid/app/DialogFragment;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$24$2;->val$finalIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$24$2;->val$genProgressDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 3125
    sget-boolean v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->IS_THUMB_PLAY_DEBUG:Z

    if-eqz v0, :cond_0

    .line 3126
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->printShareTime()V

    .line 3128
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$24$2;->this$1:Lcom/android/gallery3d/app/PhotoPage$24;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$24$2;->val$finalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3129
    return-void
.end method
