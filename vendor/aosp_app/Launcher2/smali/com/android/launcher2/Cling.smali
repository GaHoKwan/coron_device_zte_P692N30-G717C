.class public Lcom/android/launcher2/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# static fields
.field static final ALLAPPS_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.allapps.dismissed"

.field private static final ALLAPPS_LANDSCAPE:Ljava/lang/String; = "all_apps_landscape"

.field private static final ALLAPPS_LARGE:Ljava/lang/String; = "all_apps_large"

.field private static final ALLAPPS_PORTRAIT:Ljava/lang/String; = "all_apps_portrait"

.field static final FOLDER_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.folder.dismissed"

.field private static final FOLDER_LANDSCAPE:Ljava/lang/String; = "folder_landscape"

.field private static final FOLDER_LARGE:Ljava/lang/String; = "folder_large"

.field private static final FOLDER_PORTRAIT:Ljava/lang/String; = "folder_portrait"

.field static final WORKSPACE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.workspace.dismissed"

.field private static final WORKSPACE_CUSTOM:Ljava/lang/String; = "workspace_custom"

.field private static final WORKSPACE_LANDSCAPE:Ljava/lang/String; = "workspace_landscape"

.field private static final WORKSPACE_LARGE:Ljava/lang/String; = "workspace_large"

.field private static final WORKSPACE_PORTRAIT:Ljava/lang/String; = "workspace_portrait"


# instance fields
.field private mAppIconSize:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mButtonBarHeight:I

.field private mDrawIdentifier:Ljava/lang/String;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

.field private mIsInitialized:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPositionData:[I

.field private mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

.field private mPunchThroughGraphicCenterRadius:I

.field private mRevealRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    sget-object v1, Lcom/android/launcher/R$styleable;->Cling:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 89
    return-void
.end method

.method private getPunchThroughPositions()[I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 126
    iget-object v5, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v6, "workspace_portrait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, navBarHeight:I
    new-array v5, v7, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    aput v6, v5, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    aput v6, v5, v9

    .line 155
    .end local v2           #navBarHeight:I
    :goto_0
    return-object v5

    .line 133
    :cond_0
    new-array v5, v7, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    aput v6, v5, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    aput v6, v5, v9

    goto :goto_0

    .line 135
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v6, "workspace_landscape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_2

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    .line 139
    .local v4, statusBarHeight:I
    const/4 v2, 0x0

    .line 141
    .restart local v2       #navBarHeight:I
    new-array v5, v7, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    aput v6, v5, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    aput v6, v5, v9

    goto :goto_0

    .line 143
    .end local v2           #navBarHeight:I
    .end local v4           #statusBarHeight:I
    :cond_2
    new-array v5, v7, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    aput v6, v5, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    aput v6, v5, v9

    goto :goto_0

    .line 145
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v6, "workspace_large"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v3

    .line 147
    .local v3, scale:F
    const/high16 v5, 0x4170

    mul-float/2addr v5, v3

    float-to-int v0, v5

    .line 148
    .local v0, cornerXOffset:I
    const/high16 v5, 0x4120

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 149
    .local v1, cornerYOffset:I
    new-array v5, v7, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v0

    aput v6, v5, v8

    aput v1, v5, v9

    goto :goto_0

    .line 150
    .end local v0           #cornerXOffset:I
    .end local v1           #cornerYOffset:I
    .end local v3           #scale:F
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v6, "all_apps_portrait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v6, "all_apps_landscape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v6, "all_apps_large"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    goto/16 :goto_0

    .line 155
    :cond_6
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    .line 119
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-eqz v12, :cond_e

    .line 214
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    .local v8, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 220
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    .local v2, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "workspace_portrait"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "workspace_landscape"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "workspace_large"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 227
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 241
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_9

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    :goto_1
    const/4 v3, -0x1

    .line 249
    .local v3, cx:I
    const/4 v4, -0x1

    .line 250
    .local v4, cy:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    int-to-float v13, v13

    div-float v11, v12, v13

    .line 251
    .local v11, scale:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v6, v12

    .line 252
    .local v6, dw:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v5, v12

    .line 255
    .local v5, dh:I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getPunchThroughPositions()[I

    move-result-object v10

    .line 256
    .local v10, positions:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v12, v10

    if-ge v7, v12, :cond_a

    .line 257
    aget v3, v10, v7

    .line 258
    add-int/lit8 v12, v7, 0x1

    aget v4, v10, v12

    .line 259
    const/4 v12, -0x1

    if-le v3, v12, :cond_2

    const/4 v12, -0x1

    if-le v4, v12, :cond_2

    .line 260
    int-to-float v12, v3

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v13, v6, 0x2

    sub-int v13, v3, v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v4, v14

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v3

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 228
    .end local v3           #cx:I
    .end local v4           #cy:I
    .end local v5           #dh:I
    .end local v6           #dw:I
    .end local v7           #i:I
    .end local v10           #positions:[I
    .end local v11           #scale:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "all_apps_portrait"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "all_apps_landscape"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "all_apps_large"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 231
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "folder_portrait"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "folder_landscape"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 234
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 235
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "folder_large"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020007

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 237
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "workspace_custom"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020008

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 245
    :cond_9
    const/high16 v12, -0x6700

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 267
    .restart local v3       #cx:I
    .restart local v4       #cy:I
    .restart local v5       #dh:I
    .restart local v6       #dw:I
    .restart local v7       #i:I
    .restart local v10       #positions:[I
    .restart local v11       #scale:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "all_apps_portrait"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "all_apps_landscape"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v13, "all_apps_large"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 270
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_c

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    div-int/lit8 v9, v12, 0x4

    .line 274
    .local v9, offset:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    add-int v13, v3, v9

    add-int v14, v4, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    add-int/2addr v15, v3

    add-int/2addr v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    add-int v16, v16, v4

    add-int v16, v16, v9

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    .end local v9           #offset:I
    :cond_d
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #cx:I
    .end local v4           #cy:I
    .end local v5           #dh:I
    .end local v6           #dw:I
    .end local v7           #i:I
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .end local v10           #positions:[I
    .end local v11           #scale:F
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 287
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 160
    invoke-virtual {p0, p0, p1}, Lcom/android/launcher2/Cling;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 165
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDrawIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method init(Lcom/android/launcher2/Launcher;[I)V
    .locals 4
    .parameter "l"
    .parameter "positionData"

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-nez v1, :cond_0

    .line 93
    iput-object p1, p0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 94
    iput-object p2, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 99
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    .line 101
    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    .line 102
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    .line 103
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 106
    iget-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    iget-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    .line 112
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v1, "workspace_portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v1, "workspace_landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v1, "workspace_large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v1, "all_apps_portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v1, "all_apps_landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v1, "all_apps_large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v1, "workspace_custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v11, 0x4000

    .line 181
    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "workspace_portrait"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "workspace_landscape"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "workspace_large"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "all_apps_portrait"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "all_apps_landscape"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "all_apps_large"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Cling;->getPunchThroughPositions()[I

    move-result-object v4

    .line 189
    .local v4, positions:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_5

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    aget v8, v4, v3

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-int/lit8 v10, v3, 0x1

    aget v10, v4, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 192
    .local v0, diff:D
    iget v7, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    float-to-double v7, v7

    cmpg-double v7, v0, v7

    if-gez v7, :cond_2

    .line 208
    .end local v0           #diff:D
    .end local v3           #i:I
    .end local v4           #positions:[I
    :cond_1
    :goto_1
    return v6

    .line 189
    .restart local v0       #diff:D
    .restart local v3       #i:I
    .restart local v4       #positions:[I
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 196
    .end local v0           #diff:D
    .end local v3           #i:I
    .end local v4           #positions:[I
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "folder_portrait"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "folder_landscape"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    const-string v8, "folder_large"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 199
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 200
    .local v2, f:Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_5

    .line 201
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 202
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 208
    .end local v2           #f:Lcom/android/launcher2/Folder;
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_5
    const/4 v6, 0x1

    goto :goto_1
.end method
