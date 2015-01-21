.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;
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
    name = "Apply"
.end annotation


# instance fields
.field private mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 708
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->apply()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 710
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 711
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 716
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 717
    .local v1, mMessage:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 718
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v2, v2, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #mMessage:Landroid/os/Message;
    :cond_0
    return-void

    .line 713
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const-string v2, "Gallery2/PictureQualityTool"

    const-string v3, "bitmap == null##########################"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDecoder(Lcom/mediatek/gallery3d/pq/ImageDecoder;)V
    .locals 0
    .parameter "mDecoder"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    .line 706
    return-void
.end method
