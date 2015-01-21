.class Lcom/android/gallery3d/app/PhotoPage$24$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/PhotoPage$24;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage$24;)V
    .locals 0
    .parameter

    .prologue
    .line 3097
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$24$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$24$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$24;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$24;->val$genProgressDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 3100
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$24$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$24;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$24;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0c0266

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3102
    return-void
.end method
