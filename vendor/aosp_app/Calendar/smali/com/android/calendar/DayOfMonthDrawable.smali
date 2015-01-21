.class public Lcom/android/calendar/DayOfMonthDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DayOfMonthDrawable.java"


# static fields
.field private static mTextSize:F


# instance fields
.field private mDayOfMonth:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTextBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/high16 v0, 0x4160

    sput v0, Lcom/android/calendar/DayOfMonthDrawable;->mTextSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/calendar/DayOfMonthDrawable;->mTextSize:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, -0x888889

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/DayOfMonthDrawable;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 52
    iget-object v2, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 53
    .local v1, textHeight:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 54
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    int-to-float v5, v1

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 66
    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 1
    .parameter "day"

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 76
    return-void
.end method
