.class public Lcom/android/camera/manager/PickImageViewManager;
.super Lcom/android/camera/manager/ViewManager;
.source "PickImageViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;
    }
.end annotation


# static fields
.field static final ANIMATION:Z = true

.field private static final HEIGHT_PADDING:I = 0x28

.field private static final TAG:Ljava/lang/String; = "PickImageViewManager"

.field private static final WIDTH_PADDING:I = 0xc8


# instance fields
.field private mAspectRatio:D

.field private mDisplayOrientaion:I

.field private mDisplayRotation:I

.field private mEv0:Lcom/android/camera/ui/EVPickerItem;

.field private mEvPickers:[Lcom/android/camera/ui/EVPickerItem;

.field private mEvm:Lcom/android/camera/ui/EVPickerItem;

.field private mEvp:Lcom/android/camera/ui/EVPickerItem;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mNeedInitialize:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPictures2Pick:I

.field private mRootView:Landroid/view/View;

.field private mS3DMode:Z

.field private mSaveRequests:[Lcom/android/camera/SaveRequest;

.field private mSelectedChangedListener:Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;I)V
    .locals 2
    .parameter "context"
    .parameter "pictures2Pick"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 27
    iput-boolean v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mS3DMode:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/manager/PickImageViewManager;->mNeedInitialize:Z

    .line 45
    iput v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mPictures2Pick:I

    .line 53
    new-instance v0, Lcom/android/camera/manager/PickImageViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/PickImageViewManager$1;-><init>(Lcom/android/camera/manager/PickImageViewManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 90
    iput p2, p0, Lcom/android/camera/manager/PickImageViewManager;->mPictures2Pick:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/PickImageViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mPictures2Pick:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/manager/PickImageViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/manager/PickImageViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/manager/PickImageViewManager;->isAnyImgSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/manager/PickImageViewManager;)Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mSelectedChangedListener:Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;

    return-object v0
.end method

.method private configLayoutOrientation()V
    .locals 3

    .prologue
    .line 144
    const-string v0, "PickImageViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configLayoutOrientation RequestedOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    const/16 v0, 0x10e

    invoke-super {p0, v0}, Lcom/android/camera/manager/ViewManager;->onOrientationChanged(I)V

    .line 148
    :cond_0
    return-void
.end method

.method private initializeViewManager()V
    .locals 6

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;

    const v4, 0x7f0b013c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/EVPickerItem;

    iput-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mEv0:Lcom/android/camera/ui/EVPickerItem;

    .line 116
    iget-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;

    const v4, 0x7f0b013e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/EVPickerItem;

    iput-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvp:Lcom/android/camera/ui/EVPickerItem;

    .line 117
    iget-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;

    const v4, 0x7f0b013d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/EVPickerItem;

    iput-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvm:Lcom/android/camera/ui/EVPickerItem;

    .line 118
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/camera/ui/EVPickerItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvm:Lcom/android/camera/ui/EVPickerItem;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/camera/manager/PickImageViewManager;->mEv0:Lcom/android/camera/ui/EVPickerItem;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvp:Lcom/android/camera/ui/EVPickerItem;

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvPickers:[Lcom/android/camera/ui/EVPickerItem;

    .line 120
    iget-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mEv0:Lcom/android/camera/ui/EVPickerItem;

    iget-object v4, p0, Lcom/android/camera/manager/PickImageViewManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvp:Lcom/android/camera/ui/EVPickerItem;

    iget-object v4, p0, Lcom/android/camera/manager/PickImageViewManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvm:Lcom/android/camera/ui/EVPickerItem;

    iget-object v4, p0, Lcom/android/camera/manager/PickImageViewManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getDisplayOrientation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mDisplayOrientaion:I

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mDisplayRotation:I

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 130
    .local v2, windowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 131
    .local v0, tmpHeight:I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 132
    .local v1, tmpWidth:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mFrameWidth:I

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/manager/PickImageViewManager;->mFrameHeight:I

    .line 134
    return-void
.end method

.method private isAnyImgSelected()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mEv0:Lcom/android/camera/ui/EVPickerItem;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvp:Lcom/android/camera/ui/EVPickerItem;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvm:Lcom/android/camera/ui/EVPickerItem;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

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


# virtual methods
.method public displayImages()Z
    .locals 21

    .prologue
    .line 163
    const-string v3, "PickImageViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayImages mSaveRequests="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    if-nez v3, :cond_0

    .line 165
    const/4 v3, 0x0

    .line 239
    :goto_0
    return v3

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/manager/PickImageViewManager;->mFrameHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v17, v3, -0x28

    .line 169
    .local v17, thumbHeight:I
    move/from16 v0, v17

    int-to-double v3, v0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/manager/PickImageViewManager;->mAspectRatio:D

    mul-double/2addr v3, v5

    double-to-int v0, v3

    move/from16 v18, v0

    .line 173
    .local v18, thumbWidth:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/manager/PickImageViewManager;->mFrameWidth:I

    add-int/lit16 v14, v3, -0xc8

    .line 174
    .local v14, maxWidth:I
    move/from16 v0, v18

    if-le v0, v14, :cond_1

    .line 176
    move/from16 v18, v14

    .line 177
    move/from16 v0, v18

    int-to-double v3, v0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/manager/PickImageViewManager;->mAspectRatio:D

    div-double/2addr v3, v5

    double-to-int v0, v3

    move/from16 v17, v0

    .line 181
    :cond_1
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 185
    .local v20, widgetId:[I
    const/4 v7, 0x0

    .line 186
    .local v7, matrix:Landroid/graphics/Matrix;
    const/16 v19, 0x0

    .line 187
    .local v19, tmpPath:Ljava/lang/String;
    const/4 v15, 0x0

    .line 188
    .local v15, orientation:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    array-length v3, v3

    if-ge v13, v3, :cond_7

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    aget-object v3, v3, v13

    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v19

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;

    aget v4, v20, v13

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/EVPickerItem;

    .line 192
    .local v16, p:Lcom/android/camera/ui/EVPickerItem;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/EVPickerItem;->performClick()Z

    .line 196
    :cond_2
    mul-int v3, v18, v17

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/camera/Util;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 198
    .local v2, bmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 199
    const-string v3, "PickImageViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is gone or damaged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    aget-object v5, v5, v13

    invoke-interface {v5}, Lcom/android/camera/SaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 203
    :cond_3
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 204
    .local v12, exif:Landroid/media/ExifInterface;
    invoke-static {v12}, Lcom/android/camera/Util;->getExifOrientation(Landroid/media/ExifInterface;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    aget-object v3, v3, v13

    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->getJpegRotation()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getDisplayRotation()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Util;->getGapOrientation(II)I

    move-result v4

    add-int v15, v3, v4

    .line 213
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 214
    .local v10, bmpWidth:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 216
    .local v9, bmpHeight:F
    if-nez v7, :cond_4

    .line 217
    new-instance v7, Landroid/graphics/Matrix;

    .end local v7           #matrix:Landroid/graphics/Matrix;
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    neg-int v3, v15

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 220
    move/from16 v0, v17

    int-to-float v3, v0

    div-float/2addr v3, v9

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v4, v10

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 225
    :cond_4
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 226
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    aget v3, v20, v13

    const v4, 0x7f0b013c

    if-ne v3, v4, :cond_5

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ui/EVPickerItem;->performClick()Z

    .line 233
    :cond_5
    const-string v3, "PickImageViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bmpWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bmpHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSaveRequests[i].getJpegRotation()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    aget-object v5, v5, v13

    invoke-interface {v5}, Lcom/android/camera/SaveRequest;->getJpegRotation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thumb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bmp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAspectRatio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/manager/PickImageViewManager;->mAspectRatio:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 205
    .end local v9           #bmpHeight:F
    .end local v10           #bmpWidth:F
    .end local v12           #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v11

    .line 206
    .local v11, ex:Ljava/io/IOException;
    const-string v3, "PickImageViewManager"

    const-string v4, "cannot read exif"

    invoke-static {v3, v4, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 222
    .end local v11           #ex:Ljava/io/IOException;
    .restart local v9       #bmpHeight:F
    .restart local v10       #bmpWidth:F
    .restart local v12       #exif:Landroid/media/ExifInterface;
    :cond_6
    move/from16 v0, v18

    int-to-float v3, v0

    div-float/2addr v3, v10

    move/from16 v0, v17

    int-to-float v4, v0

    div-float/2addr v4, v9

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_2

    .line 239
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #bmpHeight:F
    .end local v10           #bmpWidth:F
    .end local v12           #exif:Landroid/media/ExifInterface;
    .end local v16           #p:Lcom/android/camera/ui/EVPickerItem;
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 181
    nop

    :array_0
    .array-data 0x4
        0x3dt 0x1t 0xbt 0x7ft
        0x3ct 0x1t 0xbt 0x7ft
        0x3et 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    const v1, 0x7f040059

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;

    .line 111
    return-object v0
.end method

.method public isSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mEvPickers:[Lcom/android/camera/ui/EVPickerItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    return v0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mNeedInitialize:Z

    .line 141
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 0
    .parameter "aspectRatio"

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/android/camera/manager/PickImageViewManager;->mAspectRatio:D

    .line 156
    return-void
.end method

.method public setSaveRequests([Lcom/android/camera/SaveRequest;)V
    .locals 0
    .parameter "saveRequests"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/camera/manager/PickImageViewManager;->mSaveRequests:[Lcom/android/camera/SaveRequest;

    .line 244
    return-void
.end method

.method public setSelectedChangedListener(Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;)V
    .locals 0
    .parameter "selectedChangedListener"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/manager/PickImageViewManager;->mSelectedChangedListener:Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;

    .line 152
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mNeedInitialize:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/camera/manager/PickImageViewManager;->initializeViewManager()V

    .line 97
    invoke-direct {p0}, Lcom/android/camera/manager/PickImageViewManager;->configLayoutOrientation()V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/manager/PickImageViewManager;->displayImages()Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/PickImageViewManager;->mNeedInitialize:Z

    .line 101
    :cond_0
    return-void
.end method
