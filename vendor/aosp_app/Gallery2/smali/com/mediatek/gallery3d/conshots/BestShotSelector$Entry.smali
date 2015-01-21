.class Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
.super Ljava/lang/Object;
.source "BestShotSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/BestShotSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# static fields
.field public static final WAVE_CREST:I = 0x1

.field public static final WAVE_NORMAL:I = 0x0

.field public static final WAVE_TROUGH:I = 0x2


# instance fields
.field public mBestShot:Z

.field public mFileSize:Ljava/math/BigInteger;

.field public mFocusValue:Ljava/math/BigInteger;

.field public mGrayPercent:F

.field public mIndex:I

.field public mItem:Lcom/android/gallery3d/data/MediaItem;

.field public mWave:I

.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/BestShotSelector;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/conshots/BestShotSelector;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 4
    .parameter
    .parameter "item"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 333
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->this$0:Lcom/mediatek/gallery3d/conshots/BestShotSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mBestShot:Z

    .line 330
    iput v1, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 334
    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 335
    iput-object p2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 336
    iput p3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 337
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFocusValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    .line 338
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFileSize:Ljava/math/BigInteger;

    .line 339
    iput v1, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 340
    return-void

    :cond_0
    move v0, v1

    .line 334
    goto :goto_0
.end method
