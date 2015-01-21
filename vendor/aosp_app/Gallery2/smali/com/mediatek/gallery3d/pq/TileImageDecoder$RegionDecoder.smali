.class public Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;
.super Ljava/lang/Object;
.source "TileImageDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/TileImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegionDecoder"
.end annotation


# instance fields
.field private mImageDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/TileImageDecoder;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/TileImageDecoder;Landroid/graphics/BitmapRegionDecoder;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "decoder"
    .parameter "mUri"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;->this$0:Lcom/mediatek/gallery3d/pq/TileImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;->mImageDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 157
    iput-object p3, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;->mUri:Ljava/lang/String;

    .line 158
    iput p4, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;->mScreenWidth:I

    .line 159
    iput p5, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;->mScreenHeight:I

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/TileImageDecoder$RegionDecoder;->this$0:Lcom/mediatek/gallery3d/pq/TileImageDecoder;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/ImageDecoder;->mApply:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    return-void
.end method
