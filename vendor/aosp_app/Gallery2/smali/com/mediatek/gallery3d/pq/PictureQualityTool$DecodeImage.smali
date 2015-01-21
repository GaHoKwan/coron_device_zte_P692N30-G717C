.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeImage"
.end annotation


# instance fields
.field private mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

.field private needDecodeBound:Z

.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 690
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->decodeImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 692
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 693
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 695
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 696
    .local v1, mMessage:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 697
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v2, v2, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #mMessage:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public setDecoder(Lcom/mediatek/gallery3d/pq/ImageDecoder;)V
    .locals 0
    .parameter "mDecoder"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    .line 687
    return-void
.end method
