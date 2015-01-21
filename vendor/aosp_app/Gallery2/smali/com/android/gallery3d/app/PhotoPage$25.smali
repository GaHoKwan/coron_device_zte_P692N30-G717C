.class Lcom/android/gallery3d/app/PhotoPage$25;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->tryToShareAsVideo(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$finalIntent:Landroid/content/Intent;

.field final synthetic val$shareFormats:[I

.field final synthetic val$shareTypeSelectDialog:Lcom/mediatek/gallery3d/util/SelectDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;[ILcom/mediatek/gallery3d/util/SelectDialogFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3172
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$25;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$25;->val$shareFormats:[I

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$25;->val$shareTypeSelectDialog:Lcom/mediatek/gallery3d/util/SelectDialogFragment;

    iput-object p4, p0, Lcom/android/gallery3d/app/PhotoPage$25;->val$finalIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichItemSelect"

    .prologue
    .line 3175
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$25;->val$shareFormats:[I

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 3176
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$25;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mShareType:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/PhotoPage;->access$5602(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 3188
    :cond_0
    :goto_0
    return-void

    .line 3177
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$25;->val$shareTypeSelectDialog:Lcom/mediatek/gallery3d/util/SelectDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 3179
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$25;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShareType:I
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$5600(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3180
    sget-boolean v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->IS_THUMB_PLAY_DEBUG:Z

    if-eqz v0, :cond_2

    .line 3181
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->markShareClickTime()V

    .line 3183
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$25;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x35f7

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$25;->val$finalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3185
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$25;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$25;->val$finalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
