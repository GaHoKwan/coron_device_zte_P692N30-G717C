.class public Lcom/mediatek/gallery3d/pq/ClearMotionTool;
.super Landroid/app/Activity;
.source "ClearMotionTool.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final ACTION_ClearMotionTool:Ljava/lang/String; = "com.android.camera.action.ClearMotionTool"

.field private static final DEFAULTVALUE:I = 0x7d

.field private static final DEFAULTVALUEOFDEMOMODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/ClearMotionTool"

.field private static final sDemooff:Ljava/lang/String; = null

.field private static final sDemooffParameter:I = 0x0

.field private static final sExtPath:[Ljava/lang/String; = null

.field private static final sHorizontal:Ljava/lang/String; = null

.field private static final sHorizontalParameter:I = 0x2

.field private static final sVertical:Ljava/lang/String; = null

.field private static final sVerticalParameter:I = 0x1


# instance fields
.field private final BDR:Ljava/lang/String;

.field private final BDR_NAME:Ljava/lang/String;

.field private final DEMOMODE:Ljava/lang/String;

.field private final NRM:Ljava/lang/String;

.field private final NRM_NAME:Ljava/lang/String;

.field private final Range:I

.field private fblevel_nrm:Ljava/lang/String;

.field private mBDRProgress:Ljava/lang/String;

.field private mClearMotionParameters:[S

.field private mDemoMode:Ljava/lang/String;

.field private mGrassToneRange:I

.field mGroup:Landroid/widget/RadioGroup;

.field private mNRMProgress:Ljava/lang/String;

.field private mOldBDRProgress:Ljava/lang/String;

.field private mOldClearMotionParameters:[S

.field private mOldDemoMode:Ljava/lang/String;

.field private mOldNRMProgress:Ljava/lang/String;

.field private mSeekBarGrassTone:Landroid/widget/SeekBar;

.field private mSeekBarSkinSat:Landroid/widget/SeekBar;

.field private mSkinSatRange:I

.field private mStoragePath:Ljava/lang/String;

.field private mTextViewGrassToneMin:Landroid/widget/TextView;

.field private mTextViewGrassToneProgress:Landroid/widget/TextView;

.field private mTextViewGrassToneRange:Landroid/widget/TextView;

.field private mTextViewSkinSat:Landroid/widget/TextView;

.field private mTextViewSkinSatProgress:Landroid/widget/TextView;

.field private mTextViewSkinSatRange:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sExtPath:[Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sDemooff:Ljava/lang/String;

    .line 293
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sVertical:Ljava/lang/String;

    .line 294
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sHorizontal:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const-string v0, "persist.clearMotion.fblevel.nrm"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->NRM:Ljava/lang/String;

    .line 78
    const-string v0, "Fluency coarse tune"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->NRM_NAME:Ljava/lang/String;

    .line 79
    const-string v0, "persist.clearMotion.fblevel.bdr"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->BDR:Ljava/lang/String;

    .line 80
    const-string v0, "Fluency fine tune"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->BDR_NAME:Ljava/lang/String;

    .line 81
    const-string v0, "persist.clearMotion.demoMode"

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->DEMOMODE:Ljava/lang/String;

    .line 84
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->Range:I

    .line 85
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->fblevel_nrm:Ljava/lang/String;

    .line 86
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    .line 87
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    .line 103
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mStoragePath:Ljava/lang/String;

    .line 280
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mNRMProgress:Ljava/lang/String;

    .line 281
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mBDRProgress:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mDemoMode:Ljava/lang/String;

    .line 284
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    .line 285
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    .line 286
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldDemoMode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/gallery3d/pq/ClearMotionTool;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mDemoMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sDemooff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sVertical:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sHorizontal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/pq/ClearMotionTool;[S)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->write([S)V

    return-void
.end method

.method private getViewById()V
    .locals 2

    .prologue
    .line 247
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mGroup:Landroid/widget/RadioGroup;

    .line 248
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool$1;-><init>(Lcom/mediatek/gallery3d/pq/ClearMotionTool;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 265
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewGrassToneMin:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    .line 267
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewGrassToneRange:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 270
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewSkinSat:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewGrassToneProgress:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewSkinSatRange:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewSkinSatProgress:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    .line 276
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 278
    return-void
.end method

.method private onSaveClicked()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mNRMProgress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mBDRProgress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->write([S)V

    .line 193
    const-string v0, "Gallery2/ClearMotionTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveClicked mNRMProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBDRProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDemoMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    return-void
.end method

.method private read()V
    .locals 9

    .prologue
    .line 319
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mStoragePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 320
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mStoragePath:Ljava/lang/String;

    const-string v7, "SUPPORT_CLEARMOTION"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 322
    .local v3, fileInput:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 323
    .local v0, dataInput:Ljava/io/DataInputStream;
    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v6, v7

    .line 324
    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v6, v7

    .line 325
    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v7, 0x2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v6, v7

    .line 326
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    .line 327
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 328
    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    array-length v5, v6

    .line 329
    .local v5, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 330
    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    iget-object v7, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    aget-short v7, v7, v4

    aput-short v7, v6, v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v0           #dataInput:Ljava/io/DataInputStream;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #i:I
    .end local v5           #length:I
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 339
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 336
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private recoverIndex()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->write([S)V

    .line 185
    const-string v0, "Gallery2/ClearMotionTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoverIndex mOldNRMProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOldBDRProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mOldDemoMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void
.end method

.method private setValue()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    .line 128
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 129
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewGrassToneRange:Landroid/widget/TextView;

    const-string v3, "255"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 133
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewSkinSatRange:Landroid/widget/TextView;

    const-string v3, "255"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->read()V

    .line 136
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    aget-short v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldClearMotionParameters:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldDemoMode:Ljava/lang/String;

    .line 139
    const-string v2, "Gallery2/ClearMotionTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldNRMProgress==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOldBDRProgress=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldDemoMode:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mNRMProgress:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mBDRProgress:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldDemoMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mDemoMode:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldDemoMode:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sDemooff:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const v2, 0x7f0b0028

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 151
    .local v1, radioButton:Landroid/widget/RadioButton;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #radioButton:Landroid/widget/RadioButton;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewGrassToneProgress:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fluency coarse tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldNRMProgress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewSkinSatProgress:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fluency fine tune :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldBDRProgress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void

    .line 152
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldDemoMode:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sVertical:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const v2, 0x7f0b0029

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 154
    .restart local v1       #radioButton:Landroid/widget/RadioButton;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    .end local v1           #radioButton:Landroid/widget/RadioButton;
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mOldDemoMode:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sHorizontal:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 157
    .restart local v1       #radioButton:Landroid/widget/RadioButton;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private setVisible(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "visiable"

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    return-void
.end method

.method private write([S)V
    .locals 6
    .parameter "mParameters"

    .prologue
    .line 343
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mStoragePath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 344
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mStoragePath:Ljava/lang/String;

    const-string v5, "SUPPORT_CLEARMOTION"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 346
    .local v3, fileOutput:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 347
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    aget-short v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 348
    const/4 v4, 0x1

    aget-short v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 349
    const/4 v4, 0x2

    aget-short v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 350
    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->close()V

    .line 351
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    .end local v0           #dataOutput:Ljava/io/DataOutputStream;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileOutput:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 221
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->recoverIndex()V

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f040012

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 108
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mView:Landroid/view/View;

    .line 110
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 111
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->getViewById()V

    .line 113
    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sExtPath:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 114
    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sExtPath:[Ljava/lang/String;

    array-length v2, v3

    .line 115
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 116
    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sExtPath:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 117
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sExtPath:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "SUPPORT_CLEARMOTION"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, clearMotionCfg:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    sget-object v3, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->sExtPath:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mStoragePath:Ljava/lang/String;

    .line 125
    .end local v0           #clearMotionCfg:Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_0
    return-void

    .line 115
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f11000e

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    const v3, 0x7f0b019b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, PQADVMode:Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    const v3, 0x7f0b0167

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 176
    .local v2, save:Landroid/view/MenuItem;
    const v3, 0x7f0c0274

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 177
    const v3, 0x7f0b019a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 178
    .local v1, PQSwitch:Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 179
    const/4 v3, 0x1

    return v3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 215
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 202
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 205
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->recoverIndex()V

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->onSaveClicked()V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b001c -> :sswitch_1
        0x7f0b0167 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 233
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    if-ne v0, p1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewGrassToneProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fluency coarse tune: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    int-to-short v1, p2

    aput-short v1, v0, v3

    .line 305
    :cond_0
    :goto_0
    const-string v0, "Gallery2/ClearMotionTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onProgressChanged  mClearMotionParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    aget-short v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    if-ne v0, p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mTextViewSkinSatProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fluency fine tune: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    int-to-short v1, p2

    aput-short v1, v0, v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->setValue()V

    .line 228
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 310
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 313
    const-string v0, "Gallery2/ClearMotionTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch  mClearMotionParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->mClearMotionParameters:[S

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/pq/ClearMotionTool;->write([S)V

    .line 315
    return-void
.end method
