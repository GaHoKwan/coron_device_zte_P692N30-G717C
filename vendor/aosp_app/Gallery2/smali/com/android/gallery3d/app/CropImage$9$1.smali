.class Lcom/android/gallery3d/app/CropImage$9$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/CropImage$9;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$9$1;->this$1:Lcom/android/gallery3d/app/CropImage$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1795
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$9$1;->this$1:Lcom/android/gallery3d/app/CropImage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$9;->this$0:Lcom/android/gallery3d/app/CropImage;

    const v1, 0x7f0c01d4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1796
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$9$1;->this$1:Lcom/android/gallery3d/app/CropImage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$9;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1797
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$9$1;->this$1:Lcom/android/gallery3d/app/CropImage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$9;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1798
    return-void
.end method
