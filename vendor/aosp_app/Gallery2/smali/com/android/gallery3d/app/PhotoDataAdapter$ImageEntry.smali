.class Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

.field public currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

.field public enteredConsumeMode:Z

.field public failToLoad:Z

.field public firstMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

.field public firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

.field public gifDecoderTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field public isDrm:Z

.field public isMpoFrameRecyled:Z

.field public mpoDecoderTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field public mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

.field public mpoTotalCount:I

.field public originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field public originScreenNailTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field public panoramaScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field public panoramaScreenNailTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public requestedFullImage:J

.field public requestedGif:J

.field public requestedMav:J

.field public requestedOriginScreenNail:J

.field public requestedPanoramaScreenNail:J

.field public requestedScreenNail:J

.field public requestedSecondScreenNail:J

.field public screenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field public screenNailTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field public secondMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

.field public secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field public secondScreenNailTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field public stereoLayout:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 1683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1688
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1689
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1690
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 1696
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    .line 1710
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    .line 1711
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    .line 1723
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 1724
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    .line 1727
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedPanoramaScreenNail:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1683
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
