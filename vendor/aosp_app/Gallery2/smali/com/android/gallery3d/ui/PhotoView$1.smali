.class Lcom/android/gallery3d/ui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/gallery3d/ui/GLView;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPanoramaSwitchBar:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->getFocusButtion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 329
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->switchToPanoramaMode(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$100(Lcom/android/gallery3d/ui/PhotoView;I)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x2

    #calls: Lcom/android/gallery3d/ui/PhotoView;->switchToPanoramaMode(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$100(Lcom/android/gallery3d/ui/PhotoView;I)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
