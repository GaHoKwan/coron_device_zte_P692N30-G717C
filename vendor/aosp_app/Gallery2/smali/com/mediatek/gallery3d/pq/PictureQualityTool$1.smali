.class Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;
.super Landroid/os/Handler;
.source "PictureQualityTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "Gallery2/PictureQualityTool"

    const-string v1, " !isEnterADVmode    mImageView.setImageBitmap(mBitmap);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget v2, v2, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " H===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget v2, v2, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
