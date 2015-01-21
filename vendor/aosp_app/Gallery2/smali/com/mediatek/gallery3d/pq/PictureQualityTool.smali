.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.super Landroid/app/Activity;
.source "PictureQualityTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;
    }
.end annotation


# static fields
.field public static final ACTION_PQ:Ljava/lang/String; = "com.android.camera.action.PQ"

.field public static final BACKUP_PIXEL_COUNT:I = 0x75300

.field public static final SUCCESS_LOAD_BITMAP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/PictureQualityTool"

.field private static isEnterADVmode:Z


# instance fields
.field public PQADVMode:Landroid/view/MenuItem;

.field private PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

.field public PQSwitchmemu:Landroid/view/MenuItem;

.field public WindowsHeight:I

.field public WindowsWidth:I

.field public hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

.field lastX:I

.field lastY:I

.field public mActionBar:Landroid/app/ActionBar;

.field private mApply:Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

.field public mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalSatOption:I

.field private mGlobleSatRange:I

.field private mGrassSatOption:I

.field private mGrassSatRange:I

.field private mGrassToneOption:I

.field private mGrassToneRange:I

.field public mHandler:Landroid/os/Handler;

.field private mHudOptionADV:I

.field private mHudRangeADV:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewADV:Landroid/widget/ImageView;

.field private mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

.field mMetric:Landroid/graphics/Matrix;

.field public mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

.field public mPQMineType:Ljava/lang/String;

.field public mPqUri:Ljava/lang/String;

.field private mSatOptionADV:I

.field private mSatRangeADV:I

.field public mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

.field private mSeekBarGlobal:Landroid/widget/SeekBar;

.field private mSeekBarGrassSat:Landroid/widget/SeekBar;

.field private mSeekBarGrassTone:Landroid/widget/SeekBar;

.field private mSeekBarSharpness:Landroid/widget/SeekBar;

.field private mSeekBarSkinSat:Landroid/widget/SeekBar;

.field private mSeekBarSkinTone:Landroid/widget/SeekBar;

.field private mSeekBarSkySat:Landroid/widget/SeekBar;

.field private mSeekBarSkyTone:Landroid/widget/SeekBar;

.field public mSettingXYAxisLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

.field private mSharpnessOption:I

.field private mSharpnessRange:I

.field private mSkinSatOption:I

.field private mSkinSatRange:I

.field private mSkinToneOption:I

.field private mSkinToneRange:I

.field private mSkySatOption:I

.field private mSkySatRange:I

.field private mSkyToneOption:I

.field private mSkyToneRange:I

.field private mTextViewGlobal:Landroid/widget/TextView;

.field private mTextViewGlobalSatRange:Landroid/widget/TextView;

.field private mTextViewGrassSat:Landroid/widget/TextView;

.field private mTextViewGrassSatRange:Landroid/widget/TextView;

.field private mTextViewGrassTone:Landroid/widget/TextView;

.field private mTextViewGrassToneMin:Landroid/widget/TextView;

.field private mTextViewGrassToneRange:Landroid/widget/TextView;

.field private mTextViewSharpness:Landroid/widget/TextView;

.field private mTextViewSharpnessRange:Landroid/widget/TextView;

.field private mTextViewSkinSat:Landroid/widget/TextView;

.field private mTextViewSkinSatRange:Landroid/widget/TextView;

.field private mTextViewSkinTone:Landroid/widget/TextView;

.field private mTextViewSkinToneMin:Landroid/widget/TextView;

.field private mTextViewSkinToneRange:Landroid/widget/TextView;

.field private mTextViewSkySat:Landroid/widget/TextView;

.field private mTextViewSkySatRange:Landroid/widget/TextView;

.field private mTextViewSkyTone:Landroid/widget/TextView;

.field private mTextViewSkyToneMin:Landroid/widget/TextView;

.field private mTextViewSkyToneRange:Landroid/widget/TextView;

.field mTileImageDecoder:Lcom/mediatek/gallery3d/pq/TileImageDecoder;

.field public mView:Landroid/view/View;

.field public mVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

.field public mbitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field public options:Landroid/graphics/BitmapFactory$Options;

.field private origionGrassToneIndex:I

.field private origionGrassToneSIndex:I

.field private origionSatAdjIndex:I

.field private origionSharpnessIndex:I

.field private origionSkinToneIndex:I

.field private origionSkinToneSIndex:I

.field private origionSkyToneIndex:I

.field private origionSkyToneSIndex:I

.field public saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

.field private seekBar_hue:Landroid/widget/SeekBar;

.field public seekBar_saturation:Landroid/widget/SeekBar;

.field public sign:Z

.field private textView_hue:Landroid/widget/TextView;

.field private textView_hue_left:Landroid/widget/TextView;

.field private textView_hue_left_temple:Landroid/widget/TextView;

.field private textView_hue_progress:Landroid/widget/TextView;

.field private textView_hue_progress_temple:Landroid/widget/TextView;

.field private textView_hue_temple:Landroid/widget/TextView;

.field private textView_saturation:Landroid/widget/TextView;

.field private textView_saturation_left:Landroid/widget/TextView;

.field private textView_saturation_left_temple:Landroid/widget/TextView;

.field private textView_saturation_progress:Landroid/widget/TextView;

.field private textView_saturation_progress_temple:Landroid/widget/TextView;

.field private textView_saturation_temple:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 167
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    .line 182
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    .line 186
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mbitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 209
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    .line 212
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    .line 213
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    .line 219
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    .line 222
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTileImageDecoder:Lcom/mediatek/gallery3d/pq/TileImageDecoder;

    .line 224
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHandler:Landroid/os/Handler;

    .line 853
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    return v0
.end method

.method static synthetic access$2900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I

    return v0
.end method

.method static synthetic access$3102(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I

    return p1
.end method

.method static synthetic access$3200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I

    return v0
.end method

.method static synthetic access$3402(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I

    return p1
.end method

.method static synthetic access$3500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I

    return v0
.end method

.method static synthetic access$3802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I

    return p1
.end method

.method static synthetic access$3900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I

    return v0
.end method

.method static synthetic access$4202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I

    return p1
.end method

.method static synthetic access$4300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    return v0
.end method

.method static synthetic access$4400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I

    return v0
.end method

.method static synthetic access$4502(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I

    return p1
.end method

.method static synthetic access$4600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    return v0
.end method

.method static synthetic access$4700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I

    return v0
.end method

.method static synthetic access$4802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I

    return p1
.end method

.method static synthetic access$4900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method private addSeekBarListener()V
    .locals 2

    .prologue
    .line 669
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    .line 670
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->setLisenter(Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;)V

    .line 671
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 672
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 673
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 674
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 675
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 676
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 677
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 678
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 680
    return-void
.end method

.method private addSeekBarListenerADVMode()V
    .locals 7

    .prologue
    .line 647
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGestureDetector:Landroid/view/GestureDetector;

    .line 648
    new-instance v0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;-><init>(IILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    .line 650
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 651
    new-instance v0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;-><init>(IILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    .line 653
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 654
    new-instance v6, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;

    invoke-direct {v6, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    .line 656
    .local v6, mSeekBarTouchVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6, v1}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->setLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;Landroid/widget/SeekBar;)V

    .line 657
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6, v1}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->setLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;Landroid/widget/SeekBar;)V

    .line 659
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListenerADVmode()V

    .line 660
    return-void
.end method

.method private addSeekBarListenerADVmode()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 665
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 666
    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 930
    if-eqz p1, :cond_0

    .line 932
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private enterADVmode()V
    .locals 1

    .prologue
    .line 400
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 401
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->initPQToolViewADVMode()V

    .line 402
    return-void
.end method

.method private enterBasemode()V
    .locals 1

    .prologue
    .line 395
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 396
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->initPQToolView()V

    .line 397
    return-void
.end method

.method private getOriginIndex()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSharpAdjIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSharpnessIndex:I

    .line 615
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneIndex:I

    .line 616
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneHIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneIndex:I

    .line 617
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneHIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneIndex:I

    .line 618
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSatAdjIndex:I

    .line 619
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneSIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneSIndex:I

    .line 620
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneSIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneSIndex:I

    .line 621
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneSIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneSIndex:I

    .line 622
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSharpnessIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSharpnessIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkyToneIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionGrassToneIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkinToneIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSatAdjIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSatAdjIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkinToneSIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneSIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionGrassToneSIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneSIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkyToneSIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneSIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method private getViewById()V
    .locals 1

    .prologue
    .line 420
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneMin:Landroid/widget/TextView;

    .line 421
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneMin:Landroid/widget/TextView;

    .line 422
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneMin:Landroid/widget/TextView;

    .line 424
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageView:Landroid/widget/ImageView;

    .line 425
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpnessRange:Landroid/widget/TextView;

    .line 426
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobalSatRange:Landroid/widget/TextView;

    .line 427
    const v0, 0x7f0b0100

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneRange:Landroid/widget/TextView;

    .line 428
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneRange:Landroid/widget/TextView;

    .line 429
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneRange:Landroid/widget/TextView;

    .line 431
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSatRange:Landroid/widget/TextView;

    .line 432
    const v0, 0x7f0b00fd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSatRange:Landroid/widget/TextView;

    .line 433
    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySatRange:Landroid/widget/TextView;

    .line 436
    const v0, 0x7f0b00f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;

    .line 437
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    .line 440
    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;

    .line 441
    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    .line 444
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;

    .line 445
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    .line 448
    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;

    .line 449
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    .line 452
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;

    .line 453
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    .line 455
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;

    .line 456
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    .line 458
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;

    .line 459
    const v0, 0x7f0b00fc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    .line 461
    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;

    .line 462
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    .line 463
    return-void
.end method

.method private getViewByIdADVMode()V
    .locals 11

    .prologue
    const v2, 0x7f040051

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v10, 0x8

    .line 466
    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    .line 467
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 468
    .local v7, lay:Landroid/view/LayoutInflater;
    invoke-virtual {v7, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 469
    .local v9, v:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 470
    .local v8, mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040052

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040053

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    new-instance v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mbitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    .line 474
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    .line 477
    const v0, 0x7f0b011e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left:Landroid/widget/TextView;

    .line 478
    const v0, 0x7f0b011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    .line 479
    const v0, 0x7f0b0120

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    .line 481
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;

    .line 482
    const v0, 0x7f0b0118

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    .line 483
    const v0, 0x7f0b0119

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    .line 485
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 486
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 487
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 488
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 490
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 491
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 494
    const v0, 0x7f0b011a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    .line 495
    const v0, 0x7f0b0121

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left:Landroid/widget/TextView;

    .line 496
    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    .line 497
    const v0, 0x7f0b0123

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    .line 499
    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;

    .line 500
    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    .line 501
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    .line 503
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 504
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 505
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 506
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 508
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 509
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 510
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 511
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

    .line 512
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->setVisibleLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;)V

    .line 513
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSettingXYAxisLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

    .line 514
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSettingXYAxisLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->setXYAxisLisenter(Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;)V

    .line 515
    return-void
.end method

.method private initPQToolView()V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getViewById()V

    .line 406
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 407
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setRangeAndIndex()V

    .line 409
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListener()V

    .line 411
    return-void
.end method

.method private initPQToolViewADVMode()V
    .locals 2

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getViewByIdADVMode()V

    .line 525
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 526
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setRangeAndIndexADVMode()V

    .line 527
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListenerADVMode()V

    .line 529
    return-void
.end method

.method private onSaveClicked()V
    .locals 4

    .prologue
    .line 633
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 634
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "global"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string v2, "sharpness"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSharpAdjIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-string v2, "skyTone"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string v2, "skinTone"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneHRange()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string v2, "grassTone"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneHRange()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    const-string v2, "skinSat"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneSIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    const-string v2, "grassSat"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneSIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const-string v2, "skySat"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneSIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 644
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 645
    return-void
.end method

.method private recoverIndex()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSharpnessIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSharpAdjIndex(I)Z

    .line 385
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSatAdjIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSatAdjIndex(I)Z

    .line 386
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkinToneHIndex(I)Z

    .line 387
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetGrassToneHIndex(I)Z

    .line 388
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkyToneHIndex(I)Z

    .line 389
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneSIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkinToneSIndex(I)Z

    .line 390
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneSIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetGrassToneSIndex(I)Z

    .line 391
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneSIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeSetSkyToneSIndex(I)Z

    .line 392
    return-void
.end method

.method private setRangeAndIndex()V
    .locals 4

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getOriginIndex()V

    .line 550
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSharpAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    .line 551
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    .line 553
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneHRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    .line 554
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneHRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    .line 555
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    .line 556
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkinToneRange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGrassToneRange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkyToneRange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneSRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    .line 561
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneSRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    .line 562
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneSRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    .line 564
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneMin:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneMin:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneMin:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpnessRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobalSatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sharpness:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSharpAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSharpAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 581
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PQJni.nativeGetSkyToneHIndex()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PQJni.nativeGetSkyToneHIndex()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneHIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 587
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneHIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneHIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 591
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneHIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneHIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 594
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global Sat.:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 596
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkyToneRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SkinToneRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GrassToneRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mColorRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSharpnessRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneSIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkinToneSIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 604
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneSIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetGrassToneSIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 607
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneSIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSkyToneSIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 611
    return-void
.end method

.method private setRangeAndIndexADVMode()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetHueAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    .line 532
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    .line 534
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hue:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetHueAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetHueAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 538
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sat:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 542
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hue:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetHueAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sat:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni:Lcom/mediatek/gallery3d/pq/PictureQualityJni;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void
.end method


# virtual methods
.method public getMineType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "mUri"

    .prologue
    .line 724
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v6, 0x0

    .line 726
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 728
    .local v8, mMineType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 729
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "mime_type"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 735
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 737
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMineType===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    if-eqz v6, :cond_1

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 747
    :cond_1
    :goto_0
    return-object v8

    .line 740
    :catch_0
    move-exception v7

    .line 741
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Gallery2/PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ ]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    if-eqz v6, :cond_1

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 743
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->recoverIndex()V

    .line 851
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 852
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 247
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 248
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 249
    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 250
    new-instance v21, Landroid/util/DisplayMetrics;

    invoke-direct/range {v21 .. v21}, Landroid/util/DisplayMetrics;-><init>()V

    .line 251
    .local v21, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 252
    move-object/from16 v0, v21

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    .line 253
    move-object/from16 v0, v21

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    .line 254
    const-string v1, "Gallery2/PictureQualityTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowsWidth=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WindowsHeight=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const v1, 0x7f040049

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mView:Landroid/view/View;

    .line 256
    const v1, 0x7f040049

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 258
    .local v20, bundle:Landroid/os/Bundle;
    const-string v1, "PQUri"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mPqUri:Ljava/lang/String;

    .line 259
    const-string v1, "PQMineType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mPQMineType:Ljava/lang/String;

    .line 260
    const-string v1, "PQViewWidth"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 261
    .local v7, viewW:I
    const-string v1, "PQViewHeight"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 262
    .local v8, viewH:I
    const-string v1, "PQLevelCount"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 263
    .local v9, level:I
    move-object/from16 v2, p0

    .line 264
    .local v2, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mPQMineType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mPQMineType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    const/16 v6, 0x3c0

    .line 268
    .local v6, targetSize:I
    new-instance v1, Lcom/mediatek/gallery3d/pq/ImageDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mPqUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    invoke-direct/range {v1 .. v9}, Lcom/mediatek/gallery3d/pq/ImageDecoder;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    .line 276
    .end local v6           #targetSize:I
    :cond_0
    :goto_0
    new-instance v1, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    invoke-direct {v1, v3}, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;-><init>(Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    .line 278
    new-instance v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    invoke-virtual {v1, v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->setDecoder(Lcom/mediatek/gallery3d/pq/ImageDecoder;)V

    .line 281
    new-instance v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mApply:Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mApply:Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    invoke-virtual {v1, v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;->setDecoder(Lcom/mediatek/gallery3d/pq/ImageDecoder;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mPQMineType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    instance-of v1, v1, Lcom/mediatek/gallery3d/pq/TileImageDecoder;

    if-eqz v1, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mApply:Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;

    invoke-virtual {v1, v3}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->setApply(Ljava/lang/Runnable;)V

    .line 286
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mApply:Lcom/mediatek/gallery3d/pq/PictureQualityTool$Apply;

    invoke-virtual {v1, v3}, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->setDecodeImage(Ljava/lang/Runnable;)V

    .line 288
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 290
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPictureQualityEnhanceSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 293
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->initPQToolView()V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListener()V

    .line 296
    return-void

    .line 270
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    .line 271
    .restart local v6       #targetSize:I
    new-instance v10, Lcom/mediatek/gallery3d/pq/TileImageDecoder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mPqUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object v11, v2

    move v15, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/mediatek/gallery3d/pq/TileImageDecoder;-><init>(Landroid/content/Context;Ljava/lang/String;IIILandroid/os/Handler;III)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 323
    const v0, 0x7f0b019a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    .line 324
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ_ADV:Z

    if-nez v0, :cond_0

    .line 326
    const v0, 0x7f0b019b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQADVMode:Landroid/view/MenuItem;

    .line 327
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQADVMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 329
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 315
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 316
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/high16 v8, 0x4000

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 334
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 380
    :goto_0
    return v7

    .line 336
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 339
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->recoverIndex()V

    .line 340
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->onSaveClicked()V

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 344
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->onSaveClicked()V

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 348
    :sswitch_3
    sget-boolean v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    if-eqz v3, :cond_0

    .line 349
    sput-boolean v4, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 350
    const-string v3, "Base"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 351
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->enterBasemode()V

    .line 352
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 357
    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 358
    .local v2, scaleW:F
    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 359
    .local v1, scaleH:F
    sub-float v3, v2, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v0, v1

    .line 360
    .local v0, scale:F
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 361
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 362
    sput-boolean v7, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 363
    const-string v3, "ADV"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 364
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->enterADVmode()V

    goto/16 :goto_0

    .end local v0           #scale:F
    :cond_1
    move v0, v2

    .line 359
    goto :goto_1

    .line 369
    .end local v1           #scaleH:F
    .end local v2           #scaleW:F
    :sswitch_4
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    if-nez v3, :cond_2

    .line 370
    const-string v3, "PQ off"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 371
    iput-boolean v7, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    goto/16 :goto_0

    .line 373
    :cond_2
    const-string v3, "PQ on"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 374
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    goto/16 :goto_0

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b001c -> :sswitch_1
        0x7f0b0167 -> :sswitch_2
        0x7f0b019a -> :sswitch_4
        0x7f0b019b -> :sswitch_3
    .end sparse-switch

    .line 355
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 307
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecoder:Lcom/mediatek/gallery3d/pq/ImageDecoder;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/pq/ImageDecoder;->recycle()V

    .line 310
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 301
    return-void
.end method

.method public setTextViewPositionAsSeekBar(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .parameter "parent"
    .parameter "leftOfParent"
    .parameter "rightOfParent"
    .parameter "bottomAndcenterOfParent"

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 788
    .local v1, left:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 789
    .local v6, top:I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    .line 790
    .local v5, right:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 791
    .local v0, bottom:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 792
    .local v7, width:I
    const-string v8, "Gallery2/PictureQualityTool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "left=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " right=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9, v1, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 795
    .local v3, paramsLeft:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 798
    .local v4, paramsRight:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v1

    invoke-direct {v2, v8, v9, v10, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 801
    .local v2, paramsCenter:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    return-void
.end method

.method public setVisibilityADM(Landroid/view/View;I)V
    .locals 0
    .parameter "mView"
    .parameter "isVisible"

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    :cond_0
    return-void
.end method
