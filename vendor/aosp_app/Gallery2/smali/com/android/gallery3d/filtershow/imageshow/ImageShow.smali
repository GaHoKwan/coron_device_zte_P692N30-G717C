.class public Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.super Landroid/view/View;
.source "ImageShow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/ui/SliderListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Gallery2/ImageShow"

.field private static UNVEIL_HORIZONTAL:I

.field private static UNVEIL_VERTICAL:I

.field private static mBackgroundColor:I

.field private static mOriginalText:Ljava/lang/String;

.field private static mOriginalTextMargin:I

.field private static mOriginalTextSize:I

.field protected static mTextPadding:I

.field protected static mTextSize:I


# instance fields
.field private final USE_BACKGROUND_IMAGE:Z

.field private final USE_SLIDER_GESTURE:Z

.field protected backUpImage:Landroid/graphics/Bitmap;

.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mController:Lcom/android/gallery3d/filtershow/PanelController;

.field private mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field private mDirtyGeometry:Z

.field private mFilteredImage:Landroid/graphics/Bitmap;

.field private mFiltersOnlyImage:Landroid/graphics/Bitmap;

.field private mGeometryOnlyImage:Landroid/graphics/Bitmap;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

.field private mImageBounds:Landroid/graphics/Rect;

.field protected mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field protected mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field protected mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field protected mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

.field private mImportantToast:Z

.field protected mPaint:Landroid/graphics/Paint;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowControls:Z

.field private mShowOriginal:Z

.field private mShowOriginalDirection:I

.field private mShowToast:Z

.field protected mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

.field private mToast:Ljava/lang/String;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTouchShowOriginal:Z

.field private mTouchShowOriginalDate:J

.field private final mTouchShowOriginalDelayMax:J

.field private final mTouchShowOriginalDelayMin:J

.field protected mTouchX:F

.field protected mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 59
    const/16 v0, 0x14

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 71
    const/high16 v0, -0x1

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 93
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    .line 94
    const/4 v0, 0x2

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    .line 101
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 102
    const/16 v0, 0x1a

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 103
    const-string v0, "Original"

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 264
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 63
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 65
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 67
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 69
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 70
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 73
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 77
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_SLIDER_GESTURE:Z

    .line 79
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

    .line 81
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 84
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 88
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 90
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 91
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 92
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 96
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 97
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 98
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 99
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 105
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->backUpImage:Landroid/graphics/Bitmap;

    .line 115
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 117
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 118
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 121
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 122
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 124
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Lcom/android/gallery3d/filtershow/HistoryAdapter;

    const v1, 0x7f04001a

    const v2, 0x7f0b0067

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 271
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 63
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 65
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 67
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 69
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 70
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 73
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 77
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_SLIDER_GESTURE:Z

    .line 79
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

    .line 81
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 84
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 88
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 90
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 91
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 92
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 96
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 97
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 98
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 99
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 105
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->backUpImage:Landroid/graphics/Bitmap;

    .line 115
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 117
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 118
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 121
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 122
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 124
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 255
    new-instance v0, Lcom/android/gallery3d/filtershow/HistoryAdapter;

    const v1, 0x7f04001a

    const v2, 0x7f0b0067

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 257
    new-instance v0, Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    const v1, 0x7f04001b

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 260
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "enableGestureDetector"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 63
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 65
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 67
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 69
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 70
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 73
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 77
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_SLIDER_GESTURE:Z

    .line 79
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

    .line 81
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 84
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 88
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 90
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 91
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 92
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 96
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 97
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 98
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 99
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 105
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->backUpImage:Landroid/graphics/Bitmap;

    .line 115
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 117
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 118
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 121
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 122
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 124
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/android/gallery3d/filtershow/HistoryAdapter;

    const v1, 0x7f04001a

    const v2, 0x7f0b0067

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 282
    new-instance v0, Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    const v1, 0x7f04001b

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 284
    if-eqz p3, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 287
    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enableGestureDetector"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 291
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 63
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 65
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 67
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 69
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 70
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 73
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 77
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_SLIDER_GESTURE:Z

    .line 79
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

    .line 81
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 84
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 88
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 90
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 91
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 92
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 96
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 97
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 98
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 99
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 105
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->backUpImage:Landroid/graphics/Bitmap;

    .line 115
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 117
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 118
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 121
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 122
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 124
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 295
    new-instance v0, Lcom/android/gallery3d/filtershow/HistoryAdapter;

    const v1, 0x7f04001a

    const v2, 0x7f0b0067

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 297
    if-eqz p2, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 300
    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 301
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    return p1
.end method

.method private imageSizeChanged(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "image"

    .prologue
    const/4 v6, 0x0

    .line 660
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    if-nez v5, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 663
    .local v4, w:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 664
    .local v1, h:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v0, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 665
    .local v0, geo:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 666
    .local v2, pb:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 669
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 670
    .local v3, r:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 671
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 672
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setDirtyGeometryFlag()V

    goto :goto_0
.end method

.method private parameterToUI(IIII)I
    .locals 2
    .parameter "parameter"
    .parameter "minp"
    .parameter "maxp"
    .parameter "uimax"

    .prologue
    .line 171
    sub-int v0, p1, p2

    mul-int/2addr v0, p4

    sub-int v1, p3, p2

    div-int/2addr v0, v1

    return v0
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 127
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 128
    return-void
.end method

.method private setDirtyGeometryFlag()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 649
    return-void
.end method

.method public static setOriginalText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 151
    sput-object p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static setOriginalTextMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 143
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 144
    return-void
.end method

.method public static setOriginalTextSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 147
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 148
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 139
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 140
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 135
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 136
    return-void
.end method

.method private uiToParameter(IIII)I
    .locals 1
    .parameter "ui"
    .parameter "minp"
    .parameter "maxp"
    .parameter "uimax"

    .prologue
    .line 175
    sub-int v0, p3, p2

    mul-int/2addr v0, p1

    div-int/2addr v0, p4

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method protected clearDirtyGeometryFlag()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 653
    return-void
.end method

.method public defaultDrawImage(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 395
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 587
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 589
    return-void
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "canvas"
    .parameter "image"

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x4000

    .line 505
    if-eqz p2, :cond_0

    .line 506
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 509
    .local v2, s:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 512
    .local v3, scale:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v7, v3

    .line 513
    .local v6, w:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v1, v7, v3

    .line 514
    .local v1, h:F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .line 515
    .local v5, ty:F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    div-float v4, v7, v11

    .line 517
    .local v4, tx:F
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v7, v4

    float-to-int v8, v5

    add-float v9, v6, v4

    float-to-int v9, v9

    add-float v10, v1, v5

    float-to-int v10, v10

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 519
    .local v0, d:Landroid/graphics/Rect;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 520
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 522
    .end local v0           #d:Landroid/graphics/Rect;
    .end local v1           #h:F
    .end local v2           #s:Landroid/graphics/Rect;
    .end local v3           #scale:F
    .end local v4           #tx:F
    .end local v5           #ty:F
    .end local v6           #w:F
    :cond_0
    return-void
.end method

.method public drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "canvas"
    .parameter "image"

    .prologue
    const/high16 v10, -0x100

    const/high16 v4, 0x3f80

    .line 525
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 528
    if-eqz p2, :cond_2

    .line 529
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    if-nez v0, :cond_1

    .line 530
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 531
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 537
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 538
    .local v8, px:I
    const/4 v9, 0x0

    .line 539
    .local v9, py:I
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_4

    .line 540
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 541
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v9, v0

    .line 547
    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v9

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 549
    .local v7, d:Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 550
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 551
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 552
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_5

    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    sub-float v2, v0, v4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    sub-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 562
    :goto_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 563
    .local v6, bounds:Landroid/graphics/Rect;
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 564
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 565
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 566
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 568
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #d:Landroid/graphics/Rect;
    .end local v8           #px:I
    .end local v9           #py:I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 533
    :cond_3
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    goto/16 :goto_1

    .line 543
    .restart local v8       #px:I
    .restart local v9       #py:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto/16 :goto_2

    .line 558
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local v7       #d:Landroid/graphics/Rect;
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    sub-float v1, v0, v4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    sub-float v3, v0, v4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public drawToast(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    .line 369
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 370
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 371
    .local v0, paint:Landroid/graphics/Paint;
    const/high16 v4, 0x4300

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 372
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 373
    .local v1, textWidth:F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 374
    .local v2, toastX:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 376
    .local v3, toastY:I
    invoke-virtual {v0, v7, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 377
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 380
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 381
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    if-eqz v4, :cond_1

    .line 384
    const/16 v4, 0xc8

    invoke-virtual {v0, v7, v4, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 388
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    .end local v0           #paint:Landroid/graphics/Paint;
    .end local v1           #textWidth:F
    .end local v2           #toastX:I
    .end local v3           #toastY:I
    :cond_0
    return-void

    .line 386
    .restart local v0       #paint:Landroid/graphics/Paint;
    .restart local v1       #textWidth:F
    .restart local v2       #toastX:I
    .restart local v3       #toastY:I
    :cond_1
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0
.end method

.method public getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getDefaultBackgroundColor()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    return v0
.end method

.method protected getDirtyGeometryFlag()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    return v0
.end method

.method public getDisplayedImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    return-object v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v0, dst:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 357
    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getImageRotation()F
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v0

    return v0
.end method

.method public getImageRotationZoomFactor()F
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getImageStateAdapter()Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    return-object v0
.end method

.method public getPanelController()Lcom/android/gallery3d/filtershow/PanelController;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    return-object v0
.end method

.method public hasModifications()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->hasModifications()Z

    move-result v0

    goto :goto_0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 692
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 693
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x0

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawBackground(Landroid/graphics/Canvas;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->defaultDrawImage(Landroid/graphics/Canvas;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 405
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    add-int/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 408
    .local v0, textRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 409
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 410
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    .end local v0           #textRect:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showControls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawToast(Landroid/graphics/Canvas;)V

    .line 421
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 839
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 846
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 751
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setCurrentPreset(I)V

    .line 754
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 853
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 310
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 311
    .local v1, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 312
    .local v0, parentHeight:I
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 317
    return-void
.end method

.method public onNewValue(I)V
    .locals 4
    .parameter "parameter"

    .prologue
    .line 221
    const/16 v0, 0x64

    .line 222
    .local v0, maxp:I
    const/16 v1, -0x64

    .line 223
    .local v1, minp:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 226
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->resetImageForPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/android/gallery3d/filtershow/ImageStateAdapter;)V

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    .line 235
    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateSeekBar(III)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 237
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "arg0"
    .parameter "progress"
    .parameter "arg2"

    .prologue
    .line 789
    move v2, p2

    .line 790
    .local v2, parameter:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 792
    .local v0, maxp:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 793
    .local v1, minp:I
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    invoke-direct {p0, p2, v1, v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->uiToParameter(IIII)I

    move-result v2

    .line 796
    .end local v0           #maxp:I
    .end local v1           #minp:I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 797
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 865
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 803
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 809
    return-void
.end method

.method public onTouchDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 242
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 244
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 705
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 709
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 713
    .local v0, ex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 714
    .local v1, ey:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 715
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 716
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 718
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 720
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 721
    int-to-float v2, v0

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 722
    int-to-float v2, v1

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 723
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 726
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 729
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 730
    iput-boolean v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 731
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 732
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 733
    iput v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 734
    iput v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 736
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 737
    return v7
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 884
    return-void
.end method

.method public releaseGestureDetector()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/view/GestureDetector;->clearSettings()V

    .line 879
    :cond_0
    return-void
.end method

.method public requestFilteredImages()V
    .locals 4

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v1, :cond_3

    .line 460
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 467
    :cond_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 470
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 471
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_2

    .line 475
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 478
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_3

    .line 482
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 487
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    if-eqz v1, :cond_4

    .line 488
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 490
    :cond_4
    return-void
.end method

.method public resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "caller"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 203
    .local v0, currentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getDefaultParameter()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 2
    .parameter "filterShowActivity"
    .parameter "file"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 701
    return-void
.end method

.method public select()V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsColorPreset(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getParameter()I

    move-result v2

    .line 161
    .local v2, parameter:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 162
    .local v0, maxp:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 163
    .local v1, minp:I
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateSeekBar(III)V

    .line 165
    .end local v0           #maxp:I
    .end local v1           #minp:I
    .end local v2           #parameter:I
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 168
    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 333
    return-void
.end method

.method public setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 325
    return-void
.end method

.method public setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 113
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 639
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->addListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 641
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 645
    :cond_0
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 1
    .parameter "preset"

    .prologue
    .line 618
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 619
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V
    .locals 2
    .parameter "preset"
    .parameter "addToHistory"

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 625
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 626
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 627
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 628
    if-eqz p2, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setEndpoint(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 632
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 633
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/android/gallery3d/filtershow/ImageStateAdapter;)V

    .line 634
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setImageRotation(F)V
    .locals 1
    .parameter "r"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setRotation(F)V

    .line 771
    return-void
.end method

.method public setImageRotation(FF)V
    .locals 2
    .parameter "imageRotation"
    .parameter "imageRotationZoomFactor"

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageRotation()F

    move-result v0

    .line 780
    .local v0, r:F
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 783
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageRotation(F)V

    .line 784
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageRotationZoomFactor(F)V

    .line 785
    return-void
.end method

.method public setImageRotationZoomFactor(F)V
    .locals 1
    .parameter "f"

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setScaleFactor(F)V

    .line 775
    return-void
.end method

.method public setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 213
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 321
    return-void
.end method

.method public setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 2
    .parameter "value"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 593
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 602
    :cond_0
    :goto_0
    return-object p0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 305
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 306
    return-void
.end method

.method public showControls()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    return v0
.end method

.method public showHires()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public showOriginal(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 757
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 759
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;Z)V

    .line 337
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 4
    .parameter "text"
    .parameter "important"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 342
    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$1;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method public unselect()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public updateFilteredImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 697
    return-void
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public updateImage()V
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateGeometryFlags()Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 684
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 685
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->imageSizeChanged(Landroid/graphics/Bitmap;)V

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public updateImagePresets(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 432
    .local v1, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-nez v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    if-eqz p1, :cond_2

    .line 436
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->resetImageForPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 438
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-nez v2, :cond_5

    .line 439
    :cond_3
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 440
    .local v0, newPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyFilters(Z)V

    .line 441
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 443
    :cond_4
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 444
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 447
    .end local v0           #newPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_5
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-nez v2, :cond_0

    .line 448
    :cond_6
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 449
    .restart local v0       #newPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyGeometry(Z)V

    .line 450
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    :cond_7
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 453
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public updateSeekBar(III)V
    .locals 3
    .parameter "parameter"
    .parameter "minp"
    .parameter "maxp"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 183
    .local v1, seekMax:I
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->parameterToUI(IIII)I

    move-result v0

    .line 184
    .local v0, progress:I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    goto :goto_0
.end method
