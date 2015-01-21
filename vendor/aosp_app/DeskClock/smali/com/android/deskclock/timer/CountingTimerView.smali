.class public Lcom/android/deskclock/timer/CountingTimerView;
.super Landroid/view/View;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/CountingTimerView$SignedTime;,
        Lcom/android/deskclock/timer/CountingTimerView$Hundredths;,
        Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
    }
.end annotation


# static fields
.field private static final FONT_VERTICAL_OFFSET:F = 0.14f

.field private static final HUNDREDTH_SEPERATOR:Ljava/lang/String; = "."

.field private static final NEG_ONE_DIGIT:Ljava/lang/String; = "-%01d"

.field private static final NEG_TWO_DIGITS:Ljava/lang/String; = "-%02d"

.field private static final ONE_DIGIT:Ljava/lang/String; = "%01d"

.field private static final TEXT_SIZE_TO_WIDTH_RATIO:F = 0.75f

.field private static final TWO_DIGITS:Ljava/lang/String; = "%02d"

.field private static sAndroidClockMonoBold:Landroid/graphics/Typeface;

.field private static sAndroidClockMonoLight:Landroid/graphics/Typeface;

.field private static sAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private static sRobotoLabel:Landroid/graphics/Typeface;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBigFontSize:F

.field private mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

.field private mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

.field private mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

.field mBlinkThread:Ljava/lang/Runnable;

.field private mDefaultColor:I

.field private mHours:Ljava/lang/String;

.field private mHundredths:Ljava/lang/String;

.field private mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

.field private mMinutes:Ljava/lang/String;

.field private final mPaintBig:Landroid/graphics/Paint;

.field private final mPaintBigThin:Landroid/graphics/Paint;

.field private final mPaintLabel:Landroid/graphics/Paint;

.field private final mPaintMed:Landroid/graphics/Paint;

.field private final mPressedColor:I

.field private final mRedColor:I

.field private mRemeasureText:Z

.field private mSeconds:Ljava/lang/String;

.field private mShowTimeStr:Z

.field private final mSmallFontSize:F

.field private mStopStartTextView:Landroid/widget/TextView;

.field private mTextHeight:F

.field private mTotalTextWidth:F

.field private mVirtualButtonEnabled:Z

.field private mVirtualButtonPressedOn:Z

.field private final mWhiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/CountingTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-boolean v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    .line 57
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    .line 58
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    .line 59
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 67
    iput-boolean v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 77
    iput-boolean v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    .line 78
    iput-boolean v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    .line 80
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/timer/CountingTimerView$1;-><init>(Lcom/android/deskclock/timer/CountingTimerView;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    .line 244
    sget-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoThin:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 247
    :cond_0
    sget-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoBold:Landroid/graphics/Typeface;

    if-nez v2, :cond_1

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/AndroidClockMono-Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoBold:Landroid/graphics/Typeface;

    .line 250
    :cond_1
    sget-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoLight:Landroid/graphics/Typeface;

    if-nez v2, :cond_2

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/AndroidClockMono-Light.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoLight:Landroid/graphics/Typeface;

    .line 253
    :cond_2
    sget-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sRobotoLabel:Landroid/graphics/Typeface;

    if-nez v2, :cond_3

    .line 254
    const-string v2, "sans-serif-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/android/deskclock/timer/CountingTimerView;->sRobotoLabel:Landroid/graphics/Typeface;

    .line 257
    :cond_3
    const-string v2, "accessibility"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 260
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    .line 261
    iget v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .line 262
    invoke-static {}, Lcom/android/deskclock/Utils;->getPressedColorId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    .line 263
    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRedColor:I

    .line 265
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 267
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 268
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    .line 270
    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSmallFontSize:F

    .line 272
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 273
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 275
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 277
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 278
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 279
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 280
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/deskclock/timer/CountingTimerView;->sAndroidClockMonoLight:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 282
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 283
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 285
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/deskclock/timer/CountingTimerView;->sRobotoLabel:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 286
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->resetTextSize()V

    .line 289
    iget v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/CountingTimerView;->setTextColor(I)V

    .line 292
    const-string v2, "%010d"

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x75bcd15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, allDigits:Ljava/lang/String;
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    const v4, 0x7f0d005f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    .line 295
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    const v4, 0x7f0d0060

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Lcom/android/deskclock/timer/CountingTimerView$SignedTime;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    .line 297
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    const v4, 0x7f0d0061

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    .line 299
    new-instance v2, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    iget-object v3, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    const-string v4, "."

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/timer/CountingTimerView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/timer/CountingTimerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/timer/CountingTimerView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/CountingTimerView;->withinVirtualButtonBounds(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/CountingTimerView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V

    return-void
.end method

.method private calcTotalTextWidth()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    .line 409
    return-void
.end method

.method private getDigitsLength()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_3
.end method

.method private static getTimeStringForAccessibility(IIIZLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"
    .parameter "showNeg"
    .parameter "r"

    .prologue
    const v7, 0x7f0f0003

    const v6, 0x7f0f0004

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, s:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 485
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_0
    if-eqz p3, :cond_1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 490
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 493
    :cond_1
    if-nez p0, :cond_2

    .line 494
    invoke-virtual {p4, v7, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 502
    :cond_2
    const v1, 0x7f0f0002

    invoke-virtual {p4, v1, p0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {p4, v7, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private resetTextSize()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 304
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 305
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 306
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSmallFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 307
    return-void
.end method

.method private setTextColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    return-void
.end method

.method private setTotalTextWidth()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 412
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->calcTotalTextWidth()V

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 417
    .local v4, width:I
    if-eqz v4, :cond_0

    .line 418
    const/high16 v5, 0x3f40

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v3, v5

    .line 420
    .local v3, wantWidth:F
    :goto_0
    iget v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 422
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v5

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v6

    add-float v0, v5, v6

    .line 424
    .local v0, fixedWidths:F
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getWidth()F

    move-result v5

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getWidth()F

    move-result v6

    add-float v2, v5, v6

    .line 427
    .local v2, varWidths:F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_0

    cmpl-float v5, v0, v7

    if-eqz v5, :cond_0

    cmpl-float v5, v0, v3

    if-ltz v5, :cond_1

    .line 440
    .end local v0           #fixedWidths:F
    .end local v2           #varWidths:F
    .end local v3           #wantWidth:F
    :cond_0
    return-void

    .line 431
    .restart local v0       #fixedWidths:F
    .restart local v2       #varWidths:F
    .restart local v3       #wantWidth:F
    :cond_1
    sub-float v5, v3, v0

    div-float v1, v5, v2

    .line 432
    .local v1, sizeRatio:F
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 433
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 434
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 436
    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    iput v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 437
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->calcTotalTextWidth()V

    goto :goto_0
.end method

.method private virtualButtonPressed(Z)V
    .locals 2
    .parameter "pressedOn"

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    .line 523
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 525
    return-void

    .line 523
    :cond_0
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    goto :goto_0
.end method

.method private withinVirtualButtonBounds(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v11, 0x4000

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 529
    .local v6, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 530
    .local v4, height:I
    div-int/lit8 v7, v6, 0x2

    int-to-float v0, v7

    .line 531
    .local v0, centerX:F
    div-int/lit8 v7, v4, 0x2

    int-to-float v1, v7

    .line 532
    .local v1, centerY:F
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .line 535
    .local v5, radius:F
    sub-float v7, v0, p1

    float-to-double v7, v7

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-float v9, v1, p2

    float-to-double v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 536
    .local v2, distance:D
    float-to-double v7, v5

    cmpg-double v7, v2, v7

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public blinkTimeStr(Z)V
    .locals 3
    .parameter "blink"

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 445
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 450
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    goto :goto_0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 470
    const-string v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 472
    :cond_0
    const-string v0, "%s:%s:%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 474
    const-string v0, "%s:%s.%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_2
    const-string v0, "%s:%s:%s.%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 584
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    if-nez v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 589
    .local v14, width:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    if-eqz v1, :cond_2

    if-eqz v14, :cond_2

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->setTotalTextWidth()V

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 592
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 595
    :cond_2
    div-int/lit8 v15, v14, 0x2

    .line 596
    .local v15, xCenter:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v16, v1, 0x2

    .line 598
    .local v16, yCenter:I
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v4, v1, v2

    .line 599
    .local v4, textXstart:F
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    const v3, 0x3e0f5c29

    mul-float/2addr v2, v3

    sub-float v5, v1, v2

    .line 601
    .local v5, textYstart:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    const v2, 0x3f3851ec

    mul-float/2addr v1, v2

    sub-float v1, v5, v1

    const v2, 0x3f3851ec

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    mul-float/2addr v2, v3

    add-float v6, v1, v2

    .line 606
    .local v6, labelYStart:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    if-eqz v1, :cond_6

    .line 607
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    .line 608
    .local v13, textColor:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBig:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    .line 620
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    .line 623
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mBigThinSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    .line 627
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 628
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    move-object/from16 v8, p1

    move v10, v4

    move v11, v5

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F

    move-result v4

    goto/16 :goto_0

    .line 610
    .end local v13           #textColor:I
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .restart local v13       #textColor:I
    goto :goto_1
.end method

.method public redTimeStr(ZZ)V
    .locals 1
    .parameter "red"
    .parameter "forceUpdate"

    .prologue
    .line 458
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRedColor:I

    :goto_0
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .line 459
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->setTextColor(I)V

    .line 460
    if-eqz p2, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 463
    :cond_0
    return-void

    .line 458
    :cond_1
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    goto :goto_0
.end method

.method public registerStopTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "stopStartTextView"

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    .line 635
    return-void
.end method

.method public registerVirtualButtonAction(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/android/deskclock/timer/CountingTimerView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$2;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 579
    :goto_0
    return-void

    .line 572
    :cond_0
    new-instance v0, Lcom/android/deskclock/timer/CountingTimerView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$3;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTime(JZZ)V
    .locals 22
    .parameter "time"
    .parameter "showHundredths"
    .parameter "update"

    .prologue
    .line 317
    const/4 v12, 0x0

    .local v12, neg:Z
    const/16 v17, 0x0

    .line 318
    .local v17, showNeg:Z
    const/4 v5, 0x0

    .line 319
    .local v5, format:Ljava/lang/String;
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-gez v18, :cond_0

    .line 320
    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    .line 321
    const/16 v17, 0x1

    move/from16 v12, v17

    .line 324
    .end local v12           #neg:Z
    :cond_0
    const-wide/16 v18, 0x3e8

    div-long v15, p1, v18

    .line 325
    .local v15, seconds:J
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v15

    sub-long v18, p1, v18

    const-wide/16 v20, 0xa

    div-long v8, v18, v20

    .line 326
    .local v8, hundreds:J
    const-wide/16 v18, 0x3c

    div-long v10, v15, v18

    .line 327
    .local v10, minutes:J
    const-wide/16 v18, 0x3c

    mul-long v18, v18, v10

    sub-long v15, v15, v18

    .line 328
    const-wide/16 v18, 0x3c

    div-long v6, v10, v18

    .line 329
    .local v6, hours:J
    const-wide/16 v18, 0x3c

    mul-long v18, v18, v6

    sub-long v10, v10, v18

    .line 330
    const-wide/16 v18, 0x3e7

    cmp-long v18, v6, v18

    if-lez v18, :cond_1

    .line 331
    const-wide/16 v6, 0x0

    .line 335
    :cond_1
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-nez v18, :cond_2

    .line 336
    const/16 v17, 0x0

    .line 339
    :cond_2
    if-nez p3, :cond_5

    .line 340
    if-nez v12, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_3

    .line 341
    const-wide/16 v18, 0x1

    add-long v15, v15, v18

    .line 342
    const-wide/16 v18, 0x3c

    cmp-long v18, v15, v18

    if-nez v18, :cond_3

    .line 343
    const-wide/16 v15, 0x0

    .line 344
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 345
    const-wide/16 v18, 0x3c

    cmp-long v18, v10, v18

    if-nez v18, :cond_3

    .line 346
    const-wide/16 v10, 0x0

    .line 347
    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    .line 351
    :cond_3
    const-wide/16 v18, 0xa

    cmp-long v18, v8, v18

    if-ltz v18, :cond_4

    const-wide/16 v18, 0x5a

    cmp-long v18, v8, v18

    if-lez v18, :cond_5

    .line 352
    :cond_4
    const/16 p4, 0x1

    .line 356
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getDigitsLength()I

    move-result v14

    .line 358
    .local v14, oldLength:I
    const-wide/16 v18, 0xa

    cmp-long v18, v6, v18

    if-ltz v18, :cond_b

    .line 359
    if-eqz v17, :cond_a

    const-string v5, "-%02d"

    .line 360
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    .line 368
    :goto_1
    const-wide/16 v18, 0xa

    cmp-long v18, v10, v18

    if-gez v18, :cond_6

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_f

    .line 369
    :cond_6
    if-eqz v17, :cond_e

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_e

    const-string v5, "-%02d"

    .line 370
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    .line 376
    :goto_3
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    .line 377
    if-eqz p3, :cond_11

    .line 378
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    .line 383
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getDigitsLength()I

    move-result v13

    .line 384
    .local v13, newLength:I
    if-eq v14, v13, :cond_8

    .line 385
    if-le v14, v13, :cond_7

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->resetTextSize()V

    .line 388
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 391
    :cond_8
    if-eqz p4, :cond_9

    .line 392
    long-to-int v0, v6

    move/from16 v18, v0

    long-to-int v0, v10

    move/from16 v19, v0

    long-to-int v0, v15

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/deskclock/timer/CountingTimerView;->getTimeStringForAccessibility(IIIZLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 396
    :cond_9
    return-void

    .line 359
    .end local v13           #newLength:I
    :cond_a
    const-string v5, "%02d"

    goto/16 :goto_0

    .line 361
    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_d

    .line 362
    if-eqz v17, :cond_c

    const-string v5, "-%01d"

    .line 363
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    goto/16 :goto_1

    .line 362
    :cond_c
    const-string v5, "%01d"

    goto :goto_5

    .line 365
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    goto/16 :goto_1

    .line 369
    :cond_e
    const-string v5, "%02d"

    goto/16 :goto_2

    .line 372
    :cond_f
    if-eqz v17, :cond_10

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_10

    const-string v5, "-%01d"

    .line 373
    :goto_6
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    goto/16 :goto_3

    .line 372
    :cond_10
    const-string v5, "%01d"

    goto :goto_6

    .line 380
    :cond_11
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public setVirtualButtonEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    .line 519
    return-void
.end method

.method public showTime(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 455
    return-void
.end method
