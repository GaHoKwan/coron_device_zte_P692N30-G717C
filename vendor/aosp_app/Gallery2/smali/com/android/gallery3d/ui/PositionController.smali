.class public Lcom/android/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PositionController$1;,
        Lcom/android/gallery3d/ui/PositionController$FilmRatio;,
        Lcom/android/gallery3d/ui/PositionController$Gap;,
        Lcom/android/gallery3d/ui/PositionController$Box;,
        Lcom/android/gallery3d/ui/PositionController$Platform;,
        Lcom/android/gallery3d/ui/PositionController$Animatable;,
        Lcom/android/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field private static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAPBACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I = null

.field private static final BOX_MAX:I = 0x3

.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I = null

.field private static final DEFAULT_DELETE_ANIMATION_DURATION:I = 0xc8

.field private static final FILM_MODE_LANDSCAPE_HEIGHT:F = 0.7f

.field private static final FILM_MODE_LANDSCAPE_WIDTH:F = 0.7f

.field private static final FILM_MODE_PORTRAIT_HEIGHT:F = 0.48f

.field private static final FILM_MODE_PORTRAIT_WIDTH:F = 0.7f

#the value of this static final field might be set in the static constructor
.field private static final HORIZONTAL_SLACK:I = 0x0

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_GAP:I = 0x0

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final MAX_DELETE_ANIMATION_DURATION:I = 0x190

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_LIMIT:F = 4.0f

.field private static final SCALE_MAX_EXTRA:F = 1.4f

.field private static final SCALE_MIN_EXTRA:F = 0.7f

.field public static final SNAPBACK_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "Gallery2/PositionController"

.field public static sLastBoxAnimationTime:J


# instance fields
.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/Scroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mIsCamera:Z

.field private mLastScale:F

.field private mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

.field private mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mStereoMode:Z

.field private mTempBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 69
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    .line 107
    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    .line 109
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 110
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 215
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 216
    .local v1, j:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    neg-int v1, v1

    .line 217
    :cond_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1932
    .end local v1           #j:I
    :cond_1
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/gallery3d/ui/PositionController;->sLastBoxAnimationTime:J

    return-void

    .line 69
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x3

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 120
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 121
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    .line 178
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-direct {v1, p0, v5}, Lcom/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 179
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v4}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 182
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 183
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v1, p0, v5}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    .line 186
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v4}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 187
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 191
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v4}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    .line 1925
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    .line 222
    iput-object p2, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    .line 223
    new-instance v1, Lcom/android/gallery3d/ui/FlingScroller;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/FlingScroller;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    .line 224
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v5, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 228
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {v2, p0, v5}, Lcom/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 230
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 231
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {v2, p0, v5}, Lcom/android/gallery3d/ui/PositionController$Gap;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PositionController;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2200()[I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PositionController;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method private calculateStableBound(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1422
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    .line 1423
    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6
    .parameter "scale"
    .parameter "horizontalSlack"

    .prologue
    const/4 v5, 0x0

    .line 1397
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1400
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    .line 1401
    .local v2, w:I
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v1

    .line 1404
    .local v1, h:I
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1405
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 1406
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1407
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1416
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1417
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1419
    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 593
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 600
    :goto_0
    :sswitch_0
    return v1

    .line 594
    :cond_0
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 600
    goto :goto_0

    .line 594
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 11
    .parameter "i"

    .prologue
    const/high16 v10, 0x4000

    .line 933
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 934
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 935
    .local v4, r:Landroid/graphics/Rect;
    iget v8, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v9, v9, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 936
    .local v7, y:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v5

    .line 937
    .local v5, w:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 938
    .local v3, h:I
    if-nez p1, :cond_0

    .line 939
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 942
    .local v6, x:I
    int-to-float v8, v5

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 943
    mul-int/lit8 v8, v6, 0x2

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 957
    .end local v6           #x:I
    :goto_0
    int-to-float v8, v3

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 958
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 959
    return-void

    .line 944
    :cond_0
    if-lez p1, :cond_1

    .line 945
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 946
    .local v0, a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 947
    .local v2, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 948
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 950
    .end local v0           #a:Landroid/graphics/Rect;
    .end local v2           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 951
    .restart local v0       #a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 952
    .restart local v2       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 953
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private debugMoveBox([I)V
    .locals 5
    .parameter "fromIndex"

    .prologue
    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveBox:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1030
    aget v1, p1, v0

    .line 1031
    .local v1, j:I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 1032
    const-string v3, " N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1038
    .end local v1           #j:I
    :cond_1
    const-string v3, "Gallery2/PositionController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-void
.end method

.method private dumpRect(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 919
    .local v0, r:Landroid/graphics/Rect;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 926
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 928
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v2, "Gallery2/PositionController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 899
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 900
    const-string v3, "Gallery2/PositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 904
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->dumpRect(I)V

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 907
    :cond_1
    const/4 v0, -0x3

    :goto_2
    if-gt v0, v5, :cond_4

    .line 908
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_3
    if-gt v1, v5, :cond_3

    .line 909
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 910
    const-string v2, "Gallery2/PositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "intersects!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 907
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 914
    .end local v1           #j:I
    :cond_4
    return-void
.end method

.method private gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 3
    .parameter "b"

    .prologue
    .line 451
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDefaultGapSize(I)I
    .locals 5
    .parameter "i"

    .prologue
    .line 432
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 435
    :goto_0
    return v2

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 434
    .local v0, a:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 435
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 1
    .parameter "b"

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    .line 1372
    :goto_0
    return v0

    .line 1370
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    goto :goto_0

    .line 1371
    :cond_1
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->doesMaxEqualMin(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    goto :goto_0

    .line 1372
    :cond_2
    const/high16 v0, 0x4080

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 13
    .parameter "b"

    .prologue
    const/high16 v3, 0x4080

    .line 1330
    const/high16 v7, 0x3f80

    .line 1331
    .local v7, wFactor:F
    const/high16 v0, 0x3f80

    .line 1334
    .local v0, hFactor:F
    iget-boolean v8, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 1336
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1337
    .local v6, viewW:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1343
    .local v5, viewH:I
    :goto_0
    iget-boolean v8, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v8, :cond_0

    .line 1344
    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-le v8, v9, :cond_3

    .line 1345
    const v7, 0x3f333333

    .line 1346
    const v0, 0x3ef5c28f

    .line 1353
    :cond_0
    :goto_1
    iget v8, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    if-eqz v8, :cond_4

    .line 1355
    int-to-float v8, v6

    mul-float/2addr v8, v7

    int-to-float v9, v5

    mul-float/2addr v9, v0

    iget v10, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v11, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    iget v12, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v8, v9, v10, v11, v12}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMinimalScale(FFIII)F

    move-result v2

    .line 1357
    .local v2, scale:F
    iget v8, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v8}, Lcom/mediatek/gallery3d/util/MediatekFeature;->minScaleLimit(I)F

    move-result v4

    .line 1358
    .local v4, tempScaleLimit:F
    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    move v3, v4

    .line 1360
    .local v3, scaleLimit:F
    :cond_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1365
    .end local v2           #scale:F
    .end local v3           #scaleLimit:F
    .end local v4           #tempScaleLimit:F
    :goto_2
    return v8

    .line 1339
    .end local v5           #viewH:I
    .end local v6           #viewW:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 1340
    .restart local v6       #viewW:I
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .restart local v5       #viewH:I
    goto :goto_0

    .line 1348
    :cond_3
    const v7, 0x3f333333

    .line 1349
    const v0, 0x3f333333

    goto :goto_1

    .line 1363
    :cond_4
    int-to-float v8, v6

    mul-float/2addr v8, v7

    iget v9, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v9, v0

    iget v10, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1365
    .local v1, s:F
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto :goto_2
.end method

.method private getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 4
    .parameter "b"

    .prologue
    .line 1434
    iget-wide v0, p1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 872
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 882
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 980
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 981
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 982
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 983
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 984
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 985
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 986
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 987
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 988
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 989
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 990
    return-void
.end method

.method private initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 994
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 995
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 1008
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 999
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 1000
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 1001
    iput-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 1002
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 1003
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 1004
    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1005
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1006
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1007
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1014
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1015
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1016
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1017
    return-void
.end method

.method private initGap(II)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1021
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1022
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1023
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1024
    return-void
.end method

.method private initPlatform()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 973
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 974
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 975
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 976
    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1376
    sub-float v0, p0, p1

    .line 1377
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0           #diff:F
    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    .prologue
    .line 891
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 892
    sget-object v1, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_0
    return-void
.end method

.method private mtkPostAdvanceAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1942
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1943
    .local v0, currentBox:Lcom/android/gallery3d/ui/PositionController$Box;
    if-nez v0, :cond_1

    .line 1944
    const-string v1, "Gallery2/PositionController"

    const-string v2, "mtkPostAdvanceAnimation:why we got a null current box!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    iget-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1949
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/gallery3d/ui/PositionController;->sLastBoxAnimationTime:J

    .line 1954
    :cond_2
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 1955
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->doesMaxEqualMin(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1956
    :cond_3
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0

    .line 1958
    :cond_4
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0

    .line 1960
    :cond_5
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1961
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1963
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0

    .line 1966
    :cond_6
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0
.end method

.method private mtkPostStartAnimation(IIFI)V
    .locals 2
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 1936
    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    .line 1937
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/ui/PositionController;->sLastBoxAnimationTime:J

    .line 1939
    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 805
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PositionController$Listener;->invalidate()V

    .line 806
    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 5
    .parameter "i"
    .parameter "width"
    .parameter "height"
    .parameter "isViewSize"

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 319
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 322
    .local v2, wasViewSize:Z
    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v3

    .line 324
    :cond_1
    iput-boolean p4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 326
    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    if-ne p3, v4, :cond_2

    .line 327
    iget-boolean v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubTypeChanged:Z

    if-eqz v4, :cond_0

    .line 330
    iput-boolean v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubTypeChanged:Z

    .line 341
    :cond_2
    if-le p2, p3, :cond_6

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 345
    .local v1, ratio:F
    :goto_1
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 346
    iput p3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 351
    if-eqz v2, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v3, :cond_7

    .line 352
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 353
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 360
    :goto_2
    if-nez p1, :cond_5

    .line 361
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 362
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 365
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 341
    .end local v1           #ratio:F
    :cond_6
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    .line 355
    .restart local v1       #ratio:F
    :cond_7
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 356
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 357
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_2
.end method

.method private snapAndRedraw()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 809
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    .line 810
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 811
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Box;->startSnapback()Z

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    .line 814
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    .line 817
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 818
    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    move-result v1

    or-int/2addr v0, v1

    .line 824
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 825
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 828
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/PositionController;->mtkPostStartAnimation(IIFI)V

    .line 830
    return v0
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 369
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v4

    .line 370
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 371
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-nez v6, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 375
    .local v3, r:Landroid/graphics/Rect;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 377
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 378
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 379
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 381
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v6, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 386
    const/4 v2, -0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 387
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 388
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 389
    iget v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v4, v9}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_2
    move v4, v5

    .line 392
    goto :goto_0
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 417
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_0

    .line 418
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 419
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 420
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v4, :cond_1

    .line 424
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 425
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1426
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 867
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 877
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, changed:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$Animatable;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 837
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v4, :cond_0

    .line 838
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$Animatable;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    :cond_0
    const/4 v1, -0x3

    :goto_1
    if-ge v1, v4, :cond_1

    .line 841
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$Animatable;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 840
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 843
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$Animatable;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 846
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->mtkPostAdvanceAnimation()V

    .line 848
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v1           #i:I
    :cond_2
    :goto_2
    return-void

    .line 849
    :catch_0
    move-exception v2

    .line 850
    .local v2, t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public beginScale(FF)V
    .locals 5
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x3f00

    .line 527
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 528
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 529
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 530
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 531
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 532
    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 533
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 534
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 563
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 564
    return-void
.end method

.method public flingFilmX(I)Z
    .locals 13
    .parameter "velocityX"

    .prologue
    const/4 v2, 0x0

    .line 718
    if-nez p1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v2

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 721
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 724
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v10, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 725
    .local v10, defaultX:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_2

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-le v0, v10, :cond_0

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 732
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v12

    .line 733
    .local v12, targetX:I
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v2

    goto :goto_0
.end method

.method public flingFilmY(II)I
    .locals 8
    .parameter "boxIndex"
    .parameter "velocityY"

    .prologue
    const/16 v7, 0x8

    .line 741
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 744
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 746
    .local v3, h:I
    const/4 v0, 0x3

    .line 747
    .local v0, FUZZY:I
    if-ltz p2, :cond_0

    if-nez p2, :cond_1

    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-gtz v5, :cond_1

    .line 748
    :cond_0
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int v4, v5, v0

    .line 755
    .local v4, targetY:I
    :goto_0
    if-eqz p2, :cond_2

    .line 756
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 758
    .local v2, duration:I
    const/16 v5, 0x190

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 764
    :goto_1
    sget-object v5, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    aput v2, v5, v7

    .line 765
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, v4, v5, v7}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 766
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 769
    .end local v2           #duration:I
    :goto_2
    return v2

    .line 750
    .end local v4           #targetY:I
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int v4, v5, v0

    .restart local v4       #targetY:I
    goto :goto_0

    .line 760
    :cond_2
    const/16 v2, 0xc8

    .restart local v2       #duration:I
    goto :goto_1

    .line 769
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public flingPage(II)Z
    .locals 14
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 687
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 690
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 714
    :goto_0
    return v0

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v10

    .line 698
    .local v10, edges:I
    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 700
    :cond_2
    const/4 p1, 0x0

    .line 702
    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    .line 704
    :cond_5
    const/16 p2, 0x0

    .line 707
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 709
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    .line 711
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v12

    .line 712
    .local v12, targetX:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v13

    .line 713
    .local v13, targetY:I
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 714
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 283
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 285
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 286
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .prologue
    .line 1278
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1279
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 1280
    .local v2, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 1281
    const/4 v1, 0x0

    .line 1282
    .local v1, edges:I
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    .line 1283
    or-int/lit8 v1, v1, 0x2

    .line 1285
    :cond_0
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    .line 1286
    or-int/lit8 v1, v1, 0x1

    .line 1288
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    .line 1289
    or-int/lit8 v1, v1, 0x8

    .line 1291
    :cond_2
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    .line 1292
    or-int/lit8 v1, v1, 0x4

    .line 1294
    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1261
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    return v1
.end method

.method public getImageScale()F
    .locals 3

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1270
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    if-eqz v0, :cond_0

    .line 1271
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mLastScale:F

    .line 1273
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mLastScale:F

    return v1
.end method

.method public getImageWidth()I
    .locals 3

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1256
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    return v1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStereoMode()Z
    .locals 1

    .prologue
    .line 1928
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    return v0
.end method

.method public hasDeletingBox()Z
    .locals 3

    .prologue
    .line 1317
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1318
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1319
    const/4 v1, 0x1

    .line 1322
    :goto_1
    return v1

    .line 1317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1322
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hitTest(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 777
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 778
    sget-object v3, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 779
    .local v1, j:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 780
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 777
    .restart local v1       #j:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public hitTestIgnoreVertical(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1973
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 1974
    sget-object v3, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 1975
    .local v1, j:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1976
    .local v2, r:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-lt p1, v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-gt p1, v3, :cond_0

    .line 1981
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 1973
    .restart local v1       #j:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1981
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public inOpeningAnimation()Z
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 855
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1245
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1249
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1250
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFirstAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1987
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1989
    .local v0, b1:Lcom/android/gallery3d/ui/PositionController$Box;
    if-eqz v0, :cond_0

    .line 1990
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    .line 1992
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 4

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;[I)V
    .locals 20
    .parameter "fromIndex"
    .parameter "hasPrev"
    .parameter "hasNext"
    .parameter "constrained"
    .parameter "sizes"
    .parameter "types"

    .prologue
    .line 1061
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 1062
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    .line 1064
    new-instance v8, Lcom/android/gallery3d/util/RangeIntArray;

    const/16 v18, -0x3

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Lcom/android/gallery3d/util/RangeIntArray;-><init>([III)V

    .line 1066
    .local v8, from:Lcom/android/gallery3d/util/RangeIntArray;
    new-instance v5, Lcom/android/gallery3d/util/RangeArray;

    const/16 v18, -0x3

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    .line 1069
    .local v5, boxesBackup:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<Lcom/android/gallery3d/ui/PositionController$Box;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 1070
    const/4 v10, -0x3

    .local v10, i:I
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_0

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1072
    .local v4, b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 1073
    .local v15, r:Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1070
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1077
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #r:Landroid/graphics/Rect;
    :cond_0
    const/4 v10, -0x3

    :goto_1
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_1

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1081
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v0}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1077
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1083
    :cond_1
    const/4 v10, -0x3

    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1083
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1089
    :cond_2
    const/4 v10, -0x3

    :goto_3
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_4

    .line 1090
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1091
    .local v11, j:I
    const v18, 0x7fffffff

    move/from16 v0, v18

    if-ne v11, v0, :cond_3

    .line 1089
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1094
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v0}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1099
    .end local v11           #j:I
    :cond_4
    const/4 v10, -0x3

    :goto_5
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_7

    .line 1100
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1101
    .restart local v11       #j:I
    const v18, 0x7fffffff

    move/from16 v0, v18

    if-ne v11, v0, :cond_6

    .line 1099
    :cond_5
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1102
    :cond_6
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v12

    .line 1103
    .local v12, k:I
    const v18, 0x7fffffff

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 1104
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_5

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 1111
    .end local v11           #j:I
    .end local v12           #k:I
    :cond_7
    const/4 v12, -0x3

    .line 1112
    .restart local v12       #k:I
    const/4 v10, -0x3

    :goto_7
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_a

    .line 1115
    invoke-virtual {v5, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 1112
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1116
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    .line 1117
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1120
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v0}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12           #k:I
    .local v13, k:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1122
    add-int/lit8 v18, v10, 0x3

    aget v18, p6, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSubType(II)V

    .line 1123
    add-int/lit8 v18, v10, 0x3

    aget-object v18, p5, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/gallery3d/ui/PositionController;->initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    move v12, v13

    .end local v13           #k:I
    .restart local v12       #k:I
    goto :goto_8

    .line 1125
    :cond_a
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 1132
    const/4 v7, -0x3

    .local v7, first:I
    :goto_a
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v7, v0, :cond_b

    .line 1133
    invoke-virtual {v8, v7}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 1135
    :cond_b
    const/4 v14, 0x3

    .local v14, last:I
    :goto_b
    const/16 v18, -0x3

    move/from16 v0, v18

    if-lt v14, v0, :cond_c

    .line 1136
    invoke-virtual {v8, v14}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 1140
    :cond_c
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v7, v0, :cond_d

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1142
    const/4 v14, 0x0

    move v7, v14

    .line 1150
    :cond_d
    const/16 v18, 0x0

    add-int/lit8 v19, v7, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_c
    if-ge v10, v14, :cond_12

    .line 1151
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 1150
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1132
    .end local v14           #last:I
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1135
    .restart local v14       #last:I
    :cond_f
    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    .line 1152
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1153
    .local v3, a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1154
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1155
    .local v16, wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1156
    .local v17, wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v19, v16, v19

    add-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    add-int v18, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_d

    .line 1161
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto/16 :goto_d

    .line 1166
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_12
    const/16 v18, -0x1

    add-int/lit8 v19, v14, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_e
    if-le v10, v7, :cond_15

    .line 1167
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 1166
    :goto_f
    add-int/lit8 v10, v10, -0x1

    goto :goto_e

    .line 1168
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1169
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1170
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1171
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1172
    .restart local v17       #wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v17, v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 1175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1177
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1182
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_15
    const/4 v12, -0x3

    .line 1183
    const/4 v10, -0x3

    :goto_10
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_19

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_16

    .line 1183
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 1185
    :cond_16
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_17

    .line 1186
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 1188
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12           #k:I
    .restart local v13       #k:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1190
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1191
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1192
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1193
    .restart local v17       #wb:I
    if-lt v10, v7, :cond_18

    if-ge v10, v14, :cond_18

    .line 1194
    iget v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, v16, 0x2

    sub-int v19, v16, v19

    sub-int v9, v18, v19

    .line 1195
    .local v9, g:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/android/gallery3d/ui/PositionController;->initGap(II)V

    move v12, v13

    .line 1196
    .end local v13           #k:I
    .restart local v12       #k:I
    goto :goto_11

    .line 1197
    .end local v9           #g:I
    .end local v12           #k:I
    .restart local v13       #k:I
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    move v12, v13

    .end local v13           #k:I
    .restart local v12       #k:I
    goto :goto_11

    .line 1203
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_19
    add-int/lit8 v10, v7, -0x1

    :goto_13
    const/16 v18, -0x3

    move/from16 v0, v18

    if-lt v10, v0, :cond_1a

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1205
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1206
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1207
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1208
    .restart local v17       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1209
    .local v9, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v17, v19

    sub-int v18, v18, v19

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1203
    add-int/lit8 v10, v10, -0x1

    goto :goto_13

    .line 1212
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v9           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_1a
    add-int/lit8 v10, v14, 0x1

    :goto_14
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_1b

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1214
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1215
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1216
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1217
    .restart local v17       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1218
    .restart local v9       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v19, v16, v19

    add-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    add-int v18, v18, v19

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1212
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 1222
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v9           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 1223
    .local v6, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p4

    if-eq v0, v1, :cond_1c

    .line 1229
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 1231
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1233
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1236
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 1237
    return-void
.end method

.method public resetToFullView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 523
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 524
    return-void
.end method

.method public scaleBy(FFF)I
    .locals 8
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f00

    .line 542
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 543
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p3, v6

    .line 544
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 545
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 552
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 553
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_1

    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 554
    .local v2, x:I
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 555
    .local v3, y:I
    :goto_1
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 556
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    const/4 v4, -0x1

    .line 558
    :cond_0
    :goto_2
    return v4

    .line 553
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v6, p1

    sub-float v6, p2, v6

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_0

    .line 554
    .restart local v2       #x:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v6, p1

    sub-float v6, p3, v6

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_1

    .line 557
    .restart local v3       #y:I
    :cond_3
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 558
    goto :goto_2
.end method

.method public scrollFilmX(I)V
    .locals 8
    .parameter "dx"

    .prologue
    const/4 v7, 0x0

    .line 642
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 674
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 645
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 649
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 650
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 660
    :cond_1
    :sswitch_0
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v2, v3, p1

    .line 664
    .local v2, x:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, v3

    .line 665
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 666
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 667
    const/4 v2, 0x0

    .line 672
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, v3

    .line 673
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 668
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 669
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    neg-int v4, v2

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 670
    const/4 v2, 0x0

    goto :goto_1

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public scrollFilmY(II)V
    .locals 4
    .parameter "boxIndex"
    .parameter "dy"

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 680
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v1, v2, p2

    .line 681
    .local v1, y:I
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v3, 0x0

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 682
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    goto :goto_0
.end method

.method public scrollPage(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x0

    .line 604
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 639
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 607
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 609
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 611
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v3, v5, p1

    .line 612
    .local v3, x:I
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v4, v5, p2

    .line 616
    .local v4, y:I
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq v5, v6, :cond_1

    .line 617
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v4, v5, :cond_3

    .line 618
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    sub-int/2addr v6, v4

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 624
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 628
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v3, v5, :cond_4

    .line 629
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 630
    .local v2, pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 631
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 638
    .end local v2           #pixels:I
    :cond_2
    :goto_2
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 619
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v4, v5, :cond_1

    .line 620
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    sub-int v6, v4, v6

    invoke-interface {v5, v6, v8}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_1

    .line 632
    :cond_4
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v3, v5, :cond_2

    .line 633
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 634
    .restart local v2       #pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 635
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "cFrame"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 278
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 408
    if-nez p1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setFilmMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 399
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 400
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 401
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 402
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "index"
    .parameter "s"
    .parameter "cFrame"

    .prologue
    .line 291
    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v2, :cond_0

    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    .line 294
    .local v0, cFrameChanged:Z
    const/4 v1, 0x0

    .line 295
    .local v1, needUpdate:Z
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 298
    const/4 v1, 0x1

    .line 299
    if-nez p1, :cond_2

    .line 300
    const/4 v0, 0x1

    .line 303
    :cond_2
    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iget v3, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 305
    if-eqz v1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 307
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSubType(II)V
    .locals 2
    .parameter "index"
    .parameter "subType"

    .prologue
    .line 1917
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1919
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    if-ne p2, v1, :cond_0

    .line 1923
    :goto_0
    return-void

    .line 1921
    :cond_0
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    .line 1922
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubTypeChanged:Z

    goto :goto_0
.end method

.method public setIsCamera(Z)V
    .locals 0
    .parameter "isCamera"

    .prologue
    .line 1997
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    .line 1998
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 241
    return-void
.end method

.method public setPopFromTop(Z)V
    .locals 0
    .parameter "top"

    .prologue
    .line 1313
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    .line 1314
    return-void
.end method

.method public setViewSize(II)V
    .locals 6
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    .line 244
    const-string v3, "Gallery2/PositionController"

    const-string v4, "invoke setViewSize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v3, "Gallery2/PositionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the viewW is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", the viewH is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 250
    .local v2, wasMinimal:Z
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 251
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 252
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 254
    const/4 v1, -0x3

    .local v1, i:I
    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 255
    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 262
    if-eqz v2, :cond_3

    .line 263
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 264
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 269
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0
.end method

.method public skipAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, -0x1

    .line 466
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v3, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 467
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 468
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 469
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v5, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 471
    :cond_0
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 472
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 473
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 471
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 475
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 476
    iput-wide v5, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_1

    .line 478
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_2
    const/4 v2, -0x3

    :goto_2
    if-ge v2, v7, :cond_4

    .line 479
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 480
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-wide v3, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 478
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 481
    :cond_3
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 482
    iput-wide v5, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_3

    .line 484
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 485
    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 493
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 494
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 495
    return-void
.end method

.method public snapback()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 489
    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 577
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 578
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 579
    .local v2, n:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 581
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    .line 583
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 584
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v2, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 585
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 586
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 587
    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 568
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 569
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 570
    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    .line 456
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 457
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 461
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1304
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    const/high16 v9, 0x3f00

    .line 502
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    .line 503
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 504
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 507
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v7, v7, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    .line 508
    .local v3, tempX:F
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    .line 510
    .local v4, tempY:F
    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    .line 511
    .local v5, x:I
    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    .line 513
    .local v6, y:I
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 514
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 515
    .local v1, targetX:I
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 516
    .local v2, targetY:I
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    .line 518
    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 519
    return-void
.end method
