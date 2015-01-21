.class public Lcom/android/gallery3d/filtershow/FilterShowActivity;
.super Landroid/app/Activity;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;,
        Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field protected static final ANIMATE_PANELS:Z = true

.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.EDITOR_CROP"

.field public static final LAUNCH_FULLSCREEN:Ljava/lang/String; = "launch-fullscreen"

.field private static final LOGTAG:Ljava/lang/String; = "Gallery2/FilterShowActivity"

.field private static final SEEK_BAR_MAX:I = 0x258

.field private static final SELECT_PICTURE:I = 0x1

.field private static final SPACE_FULL_FAILED_SAVE:I = -0x1

.field public static final TINY_PLANET_ACTION:Ljava/lang/String; = "com.android.camera.action.TINY_PLANET"

.field private static mImageBorderSize:I


# instance fields
.field private mBorderButton:Landroid/widget/ImageButton;

.field private final mBottomPanelButtons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mColorsButton:Landroid/widget/ImageButton;

.field private mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mFxButton:Landroid/widget/ImageButton;

.field private mGeometryButton:Landroid/widget/ImageButton;

.field private mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

.field private mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

.field private mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

.field private mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

.field private mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

.field private mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

.field private mListBorders:Landroid/view/View;

.field private mListColors:Landroid/view/View;

.field private mListFilterButtons:Landroid/view/View;

.field private mListFx:Landroid/view/View;

.field private mListGeometry:Landroid/view/View;

.field private final mListViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

.field private mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private final mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

.field private mSavingProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharedOutputFile:Ljava/io/File;

.field private mSharingImage:Z

.field private mShowingHistoryPanel:Z

.field private mShowingImageStatePanel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x4

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    .line 1162
    const-string v0, "jni_filtershow_filters"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/PanelController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 110
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 111
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 112
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 113
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 114
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 115
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 116
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 117
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 118
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 119
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 121
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 122
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 123
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 124
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 125
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 127
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 128
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 129
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 130
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 132
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 138
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    .line 142
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    .line 143
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    .line 146
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 148
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 1166
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p1
.end method

.method private createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1023
    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    return-object v0
.end method

.method private fillListBorders(Landroid/widget/LinearLayout;)V
    .locals 17
    .parameter "listBorders"

    .prologue
    .line 796
    const/4 v10, 0x0

    .line 797
    .local v10, p:I
    const/16 v13, 0xc

    new-array v1, v13, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 798
    .local v1, borders:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    add-int/lit8 v11, v10, 0x1

    .end local v10           #p:I
    .local v11, p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v13, v1, v10

    .line 802
    const v13, 0x7f020040

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 803
    .local v5, npd1:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v10, v11, 0x1

    .end local v11           #p:I
    .restart local v10       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v13, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v13, v1, v11

    .line 806
    const v13, 0x7f020041

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 807
    .local v6, npd2:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v11, v10, 0x1

    .end local v10           #p:I
    .restart local v11       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v13, v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v13, v1, v10

    .line 809
    const v13, 0x7f020042

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 810
    .local v7, npd3:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v10, v11, 0x1

    .end local v11           #p:I
    .restart local v10       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v13, v7}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v13, v1, v11

    .line 812
    const v13, 0x7f020043

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 813
    .local v8, npd4:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v11, v10, 0x1

    .end local v10           #p:I
    .restart local v11       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v13, v8}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v13, v1, v10

    .line 815
    const v13, 0x7f020044

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 816
    .local v9, npd5:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v10, v11, 0x1

    .end local v11           #p:I
    .restart local v10       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v13, v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v13, v1, v11

    .line 817
    add-int/lit8 v11, v10, 0x1

    .end local v10           #p:I
    .restart local v11       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/high16 v14, -0x100

    sget v15, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v13, v1, v10

    .line 818
    add-int/lit8 v10, v11, 0x1

    .end local v11           #p:I
    .restart local v10       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/high16 v14, -0x100

    sget v15, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v16, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct/range {v13 .. v16}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v13, v1, v11

    .line 820
    add-int/lit8 v11, v10, 0x1

    .end local v10           #p:I
    .restart local v11       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/4 v14, -0x1

    sget v15, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v13, v1, v10

    .line 821
    add-int/lit8 v10, v11, 0x1

    .end local v11           #p:I
    .restart local v10       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/4 v14, -0x1

    sget v15, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v16, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct/range {v13 .. v16}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v13, v1, v11

    .line 823
    const/16 v13, 0xff

    const/16 v14, 0xed

    const/16 v15, 0xed

    const/16 v16, 0xe3

    invoke-static/range {v13 .. v16}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 824
    .local v2, creamColor:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #p:I
    .restart local v11       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v14, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    const/4 v15, 0x0

    invoke-direct {v13, v2, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v13, v1, v10

    .line 825
    add-int/lit8 v10, v11, 0x1

    .end local v11           #p:I
    .restart local v10       #p:I
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v14, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v15, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v13, v2, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v13, v1, v11

    .line 828
    const/4 v12, 0x0

    .line 829
    .local v12, previousFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 830
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;-><init>(Landroid/content/Context;)V

    .line 831
    .local v3, filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
    if-nez v4, :cond_0

    .line 832
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 836
    :goto_1
    aget-object v13, v1, v4

    const v14, 0x7f0c0195

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 837
    aget-object v13, v1, v4

    invoke-virtual {v3, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 838
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 839
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setBorder(Z)V

    .line 840
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 841
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setShowTitle(Z)V

    .line 842
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 843
    move-object v12, v3

    .line 829
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 834
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    goto :goto_1

    .line 845
    .end local v3           #filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
    :cond_1
    return-void
.end method

.method private fillListImages(Landroid/widget/LinearLayout;)V
    .locals 16
    .parameter "listFilters"

    .prologue
    .line 689
    const/16 v12, 0x12

    new-array v4, v12, [Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    .line 690
    .local v4, fxArray:[Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
    const/4 v8, 0x0

    .line 692
    .local v8, p:I
    const/16 v12, 0x9

    new-array v2, v12, [I

    fill-array-data v2, :array_0

    .line 704
    .local v2, drawid:[I
    const/16 v12, 0x9

    new-array v5, v12, [I

    fill-array-data v5, :array_1

    .line 716
    .local v5, fxNameid:[I
    new-instance v10, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const v12, 0x7f0c01a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Ljava/lang/String;)V

    .line 717
    .local v10, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v10, v12}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 718
    new-instance v12, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 723
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    const/4 v14, 0x0

    const v15, 0x7f0c01c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 730
    .local v11, previousFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 731
    .local v7, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 733
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v12, v2

    if-ge v6, v12, :cond_0

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget v13, v2, v6

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 735
    .local v1, b:Landroid/graphics/Bitmap;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #p:I
    .local v9, p:I
    new-instance v12, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    aget v13, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v13}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    aput-object v12, v4, v8

    .line 733
    add-int/lit8 v6, v6, 0x1

    move v8, v9

    .end local v9           #p:I
    .restart local v8       #p:I
    goto :goto_0

    .line 738
    .end local v1           #b:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    .line 739
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 740
    .local v3, filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget-object v12, v4, v6

    invoke-virtual {v3, v12}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 741
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v12}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v12}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 744
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 745
    move-object v11, v3

    .line 738
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 749
    .end local v3           #filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v12, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 750
    return-void

    .line 692
    :array_0
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 704
    :array_1
    .array-data 0x4
        0x9t 0x3t 0xct 0x7ft
        0x4t 0x3t 0xct 0x7ft
        0x8t 0x3t 0xct 0x7ft
        0x6t 0x3t 0xct 0x7ft
        0x5t 0x3t 0xct 0x7ft
        0xbt 0x3t 0xct 0x7ft
        0x7t 0x3t 0xct 0x7ft
        0xct 0x3t 0xct 0x7ft
        0xat 0x3t 0xct 0x7ft
    .end array-data
.end method

.method private getDefaultShareIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 584
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 589
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 591
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 592
    return-object v0
.end method

.method private getScreenImageSize()I
    .locals 6

    .prologue
    .line 508
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 509
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 510
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 511
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 513
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 514
    .local v2, msize:I
    mul-int/lit16 v4, v2, 0x85

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v4, v5

    return v4
.end method

.method private hideSavingProgress()V
    .locals 2

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 540
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 543
    .end local v0           #progress:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method private setListGeometryGravity()V
    .locals 5

    .prologue
    .line 956
    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 957
    .local v1, layout:Landroid/view/View;
    if-nez v1, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 962
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 963
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 966
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 967
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 971
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 969
    :cond_2
    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private showSavingProgress(Ljava/lang/String;)V
    .locals 6
    .parameter "albumName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 519
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 521
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 535
    :goto_0
    return-void

    .line 528
    .end local v0           #progress:Landroid/app/ProgressDialog;
    :cond_0
    if-nez p1, :cond_1

    .line 529
    const v2, 0x7f0c02ad

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, progressText:Ljava/lang/String;
    :goto_1
    const-string v2, ""

    invoke-static {p0, v2, v1, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 534
    .restart local v0       #progress:Landroid/app/ProgressDialog;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 531
    .end local v0           #progress:Landroid/app/ProgressDialog;
    .end local v1           #progressText:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0c02ae

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #progressText:Ljava/lang/String;
    goto :goto_1
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 418
    const v3, 0x7f0b003f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, filters:Landroid/view/View;
    const v3, 0x7f0b003e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 420
    .local v1, loading:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    const v3, 0x7f0b0052

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 423
    .local v2, tinyPlanetView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 424
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_0
    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 427
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    return-void
.end method

.method private toggleImageStatePanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 913
    const v3, 0x7f0b0033

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 914
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0b0031

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 916
    .local v2, viewList:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v3, :cond_0

    .line 917
    const v3, 0x7f0b0062

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 921
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v0

    .line 922
    .local v0, translate:I
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-nez v3, :cond_1

    .line 923
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 924
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 940
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 941
    return-void

    .line 935
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 936
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 937
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private translateMainPanel(Landroid/view/View;)I
    .locals 6
    .parameter "viewPanel"

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 491
    .local v0, accessoryPanelWidth:I
    const v5, 0x7f0b0030

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 492
    .local v4, mainViewWidth:I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 493
    .local v3, mainPanelWidth:I
    if-nez v3, :cond_0

    .line 494
    move v3, v4

    .line 496
    :cond_0
    const v5, 0x7f0b003f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 497
    .local v1, filtersPanelWidth:I
    if-ge v3, v1, :cond_1

    .line 498
    move v3, v1

    .line 500
    :cond_1
    sub-int v5, v4, v3

    sub-int v2, v5, v0

    .line 501
    .local v2, leftOver:I
    if-gez v2, :cond_2

    .line 502
    neg-int v5, v0

    .line 504
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cannotLoadImage()V
    .locals 3

    .prologue
    .line 1052
    const v2, 0x7f0c0192

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, text:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1054
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1055
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1056
    return-void
.end method

.method public cannotSaveImage(I)V
    .locals 3
    .parameter "failedType"

    .prologue
    .line 1061
    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    .line 1062
    const v2, 0x7f0c01c6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, text:Ljava/lang/CharSequence;
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1067
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1068
    return-void

    .line 1064
    .end local v0           #text:Ljava/lang/CharSequence;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    const v2, 0x7f0c01c7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public completeSaveImage(Landroid/net/Uri;I)V
    .locals 4
    .parameter "saveUri"
    .parameter "failedType"

    .prologue
    .line 546
    const-string v2, "Gallery2/FilterShowActivity"

    const-string v3, "completeSaveImage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 549
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 551
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "prepare"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 553
    const-string v2, "Gallery2/FilterShowActivity"

    const-string v3, "completeSaveImage insert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 556
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 557
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 559
    if-nez p1, :cond_1

    .line 560
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->cannotSaveImage(I)V

    .line 563
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 564
    return-void
.end method

.method public disableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 890
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 891
    .local v0, b:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 892
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 893
    const v2, 0x3ecccccd

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 895
    .end local v0           #b:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public enableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 898
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 899
    .local v0, b:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 900
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 901
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 903
    .end local v0           #b:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "id"

    .prologue
    .line 764
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 766
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x2

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 767
    const-string v7, "Gallery2/FilterShowActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmap:try for sample size::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v0, 0x0

    .line 770
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 789
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 771
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 775
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/16 v5, 0x8

    .line 776
    .local v5, maxTryNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v7, 0x8

    if-ge v4, v7, :cond_0

    .line 778
    :try_start_1
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 779
    const-string v7, "Gallery2/FilterShowActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmap:try for sample size::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    :try_start_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 786
    :goto_2
    if-eqz v0, :cond_1

    :cond_0
    move-object v1, v0

    .line 789
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 782
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 783
    .local v3, e1:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v7, "Gallery2/FilterShowActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getBitmap :out of memory when decoding:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    const/4 v0, 0x0

    goto :goto_2

    .line 776
    .end local v3           #e1:Ljava/lang/OutOfMemoryError;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 789
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #i:I
    .end local v5           #maxTryNum:I
    :catchall_0
    move-exception v7

    move-object v1, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getBitmapDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "id"

    .prologue
    .line 753
    const-string v2, "Gallery2/FilterShowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBitmapDrawable]id========"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 755
    .local v0, mBitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 756
    .local v1, mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 757
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 759
    .restart local v1       #mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method

.method public getPixelsFromDip(F)F
    .locals 3
    .parameter "value"

    .prologue
    .line 1073
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1074
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public hideImageViews()V
    .locals 4

    .prologue
    .line 871
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 872
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 873
    .local v1, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 875
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public hideListViews()V
    .locals 3

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 866
    .local v1, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 868
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 859
    .local v1, views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 860
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    goto :goto_0

    .line 862
    .end local v1           #views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public isShowingHistoryPanel()Z
    .locals 1

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1139
    const-string v1, "Gallery2/FilterShowActivity"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1141
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1142
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1143
    .local v0, selectedImageUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 1146
    .end local v0           #selectedImageUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/PanelController;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$1;)V

    .line 1038
    .local v0, cdl:Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c01c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0274

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02bd

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1049
    .end local v0           #cdl:Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 946
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 947
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setListGeometryGravity()V

    .line 952
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 161
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->setRenderScriptContext(Landroid/app/Activity;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setDefaultBackgroundColor(I)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setDefaultBackgroundColor(I)V

    .line 168
    const/high16 v2, 0x4380

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setZoomedSize(F)V

    .line 169
    const/high16 v2, 0x4160

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTextSize(I)V

    .line 170
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTrianglePadding(I)V

    .line 171
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTriangleSize(I)V

    .line 172
    const/high16 v2, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextSize(I)V

    .line 173
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextPadding(I)V

    .line 174
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextMargin(I)V

    .line 175
    const/high16 v2, 0x4190

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextSize(I)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalText(Ljava/lang/String;)V

    .line 177
    const/high16 v2, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextSize(I)V

    .line 178
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextPadding(I)V

    .line 179
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setMargin(I)V

    .line 180
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setTextMargin(I)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 182
    .local v11, curveHandle:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    .line 183
    .local v12, curveHandleSize:I
    invoke-static {v11, v12}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveHandle(Landroid/graphics/drawable/Drawable;I)V

    .line 184
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveWidth(I)V

    .line 186
    const v2, 0x7f040019

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setListGeometryGravity()V

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 191
    .local v9, actionBar:Landroid/app/ActionBar;
    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 192
    const v2, 0x7f040018

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 194
    invoke-virtual {v9}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v2, Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 203
    const v2, 0x7f0b0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 204
    .local v21, listFilters:Landroid/widget/LinearLayout;
    const v2, 0x7f0b0048

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 205
    .local v19, listBorders:Landroid/widget/LinearLayout;
    const v2, 0x7f0b0051

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 207
    .local v20, listColors:Landroid/widget/LinearLayout;
    const v2, 0x7f0b0034

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 208
    const v2, 0x7f0b0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 209
    const v2, 0x7f0b003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 210
    const v2, 0x7f0b0035

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 211
    const v2, 0x7f0b003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 212
    const v2, 0x7f0b0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 213
    const v2, 0x7f0b0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 214
    const v2, 0x7f0b0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 215
    const v2, 0x7f0b003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    const/high16 v3, 0x4190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectTextSize(I)V

    .line 218
    const/high16 v2, 0x41c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setTouchTolerance(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    const v2, 0x7f0b0045

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 230
    const v2, 0x7f0b0047

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 231
    const v2, 0x7f0b0049

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 232
    const v2, 0x7f0b0041

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 233
    const v2, 0x7f0b0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    const v2, 0x7f0b005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 241
    const v2, 0x7f0b005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 242
    const v2, 0x7f0b0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 243
    const v2, 0x7f0b0061

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/PanelController;->setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0034

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0035

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f0b004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f0b004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f0b004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f0b004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 291
    const/16 v2, 0xa

    new-array v0, v2, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 303
    .local v27, recastIDs:[I
    const/16 v2, 0xa

    new-array v15, v2, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    aput-object v3, v15, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    aput-object v3, v15, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    aput-object v3, v15, v2

    .line 316
    .local v15, filters:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    array-length v2, v15

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 317
    new-instance v14, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 318
    .local v14, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget v2, v27, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 319
    .local v30, v:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 320
    .local v26, pos:I
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 322
    aget-object v2, v15, v16

    aget-object v3, v15, v16

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getPreviewParameter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 323
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    if-eqz v2, :cond_0

    .line 324
    aget-object v2, v15, v16

    check-cast v30, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    .end local v30           #v:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 325
    :cond_0
    aget-object v2, v15, v16

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 328
    aget v2, v27, v16

    invoke-virtual {v14, v2}, Landroid/view/View;->setId(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v14}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 330
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 316
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 333
    .end local v14           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    .end local v26           #pos:I
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_1

    .line 337
    .local v24, overlayIDs:[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    .line 341
    .local v23, overlayBitmaps:[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_3

    .line 346
    .local v25, overlayNames:[I
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 347
    new-instance v14, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;-><init>(Landroid/content/Context;)V

    .line 348
    .local v14, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    aget v2, v24, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 349
    .restart local v30       #v:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 350
    .restart local v26       #pos:I
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    aget v29, v25, v16

    .line 352
    .local v29, sid:I
    new-instance v13, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v13, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    .line 357
    .local v13, efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    const/16 v2, -0x12c

    invoke-virtual {v13, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, v23, v16

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 361
    .local v10, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v14, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 362
    invoke-virtual {v14, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 365
    aget v2, v24, v16

    invoke-virtual {v14, v2}, Landroid/view/View;->setId(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v14}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 367
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 346
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 370
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    .end local v14           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    .end local v26           #pos:I
    .end local v29           #sid:I
    .end local v30           #v:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0044

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0042

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 373
    const v2, 0x7f0b0064

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    const v2, 0x7f0b0063

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ListView;

    .line 377
    .local v22, operationsList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 379
    const v2, 0x7f0b0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 380
    .local v17, imageStateList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageStateAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListImages(Landroid/widget/LinearLayout;)V

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListBorders(Landroid/widget/LinearLayout;)V

    .line 386
    const v2, 0x7f0b003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/SeekBar;

    .line 387
    .local v28, seekBar:Landroid/widget/SeekBar;
    const/16 v2, 0x258

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setRowPanel(Landroid/view/View;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0041

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v3, 0x7f0b0044

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v3, 0x7f0b0042

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v3, 0x7f0b0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/PanelController;->setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setCurrentPanel(Landroid/view/View;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 399
    .local v18, intent:Landroid/content/Intent;
    const-string v2, "launch-fullscreen"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 403
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 404
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 409
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, action:Ljava/lang/String;
    const-string v2, "com.android.camera.action.EDITOR_CROP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 415
    :cond_4
    :goto_3
    return-void

    .line 406
    .end local v8           #action:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->pickImage()V

    goto :goto_2

    .line 412
    .restart local v8       #action:Ljava/lang/String;
    :cond_6
    const-string v2, "com.android.camera.action.TINY_PLANET"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f0b0052

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_3

    .line 291
    :array_0
    .array-data 0x4
        0x52t 0x0t 0xbt 0x7ft
        0x55t 0x0t 0xbt 0x7ft
        0x58t 0x0t 0xbt 0x7ft
        0x56t 0x0t 0xbt 0x7ft
        0x5ct 0x0t 0xbt 0x7ft
        0x5dt 0x0t 0xbt 0x7ft
        0x53t 0x0t 0xbt 0x7ft
        0x5bt 0x0t 0xbt 0x7ft
        0x54t 0x0t 0xbt 0x7ft
        0x57t 0x0t 0xbt 0x7ft
    .end array-data

    .line 333
    :array_1
    .array-data 0x4
        0x59t 0x0t 0xbt 0x7ft
        0x5at 0x0t 0xbt 0x7ft
    .end array-data

    .line 337
    :array_2
    .array-data 0x4
        0x49t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
    .end array-data

    .line 341
    :array_3
    .array-data 0x4
        0xb1t 0x1t 0xct 0x7ft
        0xb9t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f110005

    invoke-virtual {v5, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 598
    const v5, 0x7f0b016f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 599
    .local v2, showHistory:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v5, :cond_0

    .line 600
    const v5, 0x7f0c019a

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 604
    :goto_0
    const v5, 0x7f0b0170

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 605
    .local v3, showState:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v5, :cond_1

    .line 606
    const v5, 0x7f0c019c

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 610
    :goto_1
    const v5, 0x7f0b016b

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v5

    check-cast v5, Landroid/widget/ShareActionProvider;

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 612
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getDefaultShareIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 613
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v5, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 615
    const v5, 0x7f0b016c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 616
    .local v4, undoItem:Landroid/view/MenuItem;
    const v5, 0x7f0b016d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 617
    .local v0, redoItem:Landroid/view/MenuItem;
    const v5, 0x7f0b016e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 618
    .local v1, resetItem:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 619
    const/4 v5, 0x1

    return v5

    .line 602
    .end local v0           #redoItem:Landroid/view/MenuItem;
    .end local v1           #resetItem:Landroid/view/MenuItem;
    .end local v3           #showState:Landroid/view/MenuItem;
    .end local v4           #undoItem:Landroid/view/MenuItem;
    :cond_0
    const v5, 0x7f0c0199

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 608
    .restart local v3       #showState:Landroid/view/MenuItem;
    :cond_1
    const v5, 0x7f0c019b

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->quitHandlerThread()V

    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->releaseGestureDetector()V

    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 487
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1124
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController;->showCurrentPanel()V

    .line 1125
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 1127
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 644
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 682
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 647
    :sswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController;->showCurrentPanel()V

    .line 648
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 649
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 650
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 652
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 657
    .end local v0           #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .end local v1           #position:I
    :sswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController;->showCurrentPanel()V

    .line 658
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 659
    .restart local v0       #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->redo()I

    move-result v1

    .line 660
    .restart local v1       #position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 662
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 666
    .end local v0           #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .end local v1           #position:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    goto :goto_0

    .line 670
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleImageStatePanel()V

    goto :goto_0

    .line 674
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    goto :goto_0

    .line 678
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto :goto_0

    .line 644
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_5
        0x7f0b016c -> :sswitch_0
        0x7f0b016d -> :sswitch_1
        0x7f0b016e -> :sswitch_2
        0x7f0b016f -> :sswitch_4
        0x7f0b0170 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 624
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 625
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->pause()V

    .line 630
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 640
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 570
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 572
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "prepare"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 574
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 575
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 576
    const-string v2, "Gallery2/FilterShowActivity"

    const-string v3, "onShareTargetSelected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v2, p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 580
    return v4
.end method

.method public pickImage()V
    .locals 3

    .prologue
    .line 1130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1131
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    const v1, 0x7f0c02b2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1135
    return-void
.end method

.method resetHistory()V
    .locals 4

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 1011
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 1013
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 1014
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->reset()V

    .line 1015
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1016
    .local v1, original:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1017
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/PanelController;->resetParameters()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 1019
    return-void
.end method

.method public saveImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1149
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1151
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 1152
    .local v2, saveDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 1153
    .local v1, bucketId:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, albumName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 1155
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 1159
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #bucketId:I
    .end local v2           #saveDir:Ljava/io/File;
    :goto_0
    return-void

    .line 1157
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public showOriginalViews(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 852
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 853
    .local v1, views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showOriginal(Z)V

    goto :goto_0

    .line 855
    .end local v1           #views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public toggleHistoryPanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 979
    const v3, 0x7f0b0033

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 980
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0b0062

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 982
    .local v2, viewList:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v3, :cond_0

    .line 983
    const v3, 0x7f0b0031

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 987
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v0

    .line 988
    .local v0, translate:I
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-nez v3, :cond_1

    .line 989
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 990
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;

    invoke-direct {v4, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1006
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1007
    return-void

    .line 1001
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 1002
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public unselectBottomPanelButtons()V
    .locals 3

    .prologue
    .line 878
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 879
    .local v0, button:Landroid/widget/ImageButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 881
    .end local v0           #button:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public unselectPanelButtons(Ljava/util/Vector;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p1, buttons:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/widget/ImageButton;>;"
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 885
    .local v0, button:Landroid/widget/ImageButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 887
    .end local v0           #button:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public useImageFilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/filters/ImageFilter;Z)V
    .locals 4
    .parameter "imageSmallFilter"
    .parameter "imageFilter"
    .parameter "setBorder"

    .prologue
    .line 1100
    if-nez p2, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1107
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 1108
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1110
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 1111
    .local v1, oldPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1114
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 1116
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1117
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method

.method public useImagePreset(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 3
    .parameter "imageSmallFilter"
    .parameter "preset"

    .prologue
    .line 1079
    if-nez p2, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1086
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 1087
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1089
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1090
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 1091
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 1095
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method
