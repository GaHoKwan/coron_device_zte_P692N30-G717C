.class public Lcom/mediatek/calendar/extension/LunarMonthViewExt;
.super Ljava/lang/Object;
.source "LunarMonthViewExt.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IMonthViewExt;


# static fields
.field private static final PADDING_LUNAR_OFFSET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LunarMonthViewExt"

.field private static sIsScaled:Z

.field private static sLunarOffsetXFromMonthNumber:I

.field private static sLunarTextSize:I


# instance fields
.field private final mCanShowLunar:Z

.field private final mLunarTextPaint:Landroid/graphics/Paint;

.field private final mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

.field private final mMonthWeekEventsView:Lcom/mediatek/calendar/extension/IMonthViewForExt;

.field private final mOrientation:I

.field private final mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, -0xa

    sput v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarOffsetXFromMonthNumber:I

    .line 23
    const/16 v0, 0xb

    sput v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarTextSize:I

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sIsScaled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/calendar/extension/IMonthViewForExt;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mMonthWeekEventsView:Lcom/mediatek/calendar/extension/IMonthViewForExt;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mOrientation:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mScale:F

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarTextPaint:Landroid/graphics/Paint;

    .line 43
    invoke-static {p1}, Lcom/mediatek/calendar/lunar/LunarUtil;->getInstance(Landroid/content/Context;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

    .line 44
    iget-object v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

    invoke-virtual {v0}, Lcom/mediatek/calendar/lunar/LunarUtil;->canShowLunarCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mCanShowLunar:Z

    .line 45
    invoke-direct {p0}, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->initDimens()V

    .line 46
    return-void
.end method

.method private doDrawLunar(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 12
    .parameter "lunarText"
    .parameter "canvas"
    .parameter "monthNumPaint"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 101
    iget-object v8, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 102
    iget-object v8, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarTextPaint:Landroid/graphics/Paint;

    sget v9, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget v8, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 105
    iget-object v8, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, words:[Ljava/lang/String;
    sget v8, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarOffsetXFromMonthNumber:I

    add-int v5, p4, v8

    .line 108
    .local v5, wordX:I
    sget v8, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarTextSize:I

    add-int v6, p5, v8

    .line 109
    .local v6, wordY:I
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 110
    .local v4, word:Ljava/lang/String;
    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    sget v8, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarTextSize:I

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #word:Ljava/lang/String;
    .end local v5           #wordX:I
    .end local v6           #wordY:I
    .end local v7           #words:[Ljava/lang/String;
    :cond_0
    const-string v2, " "

    .line 115
    .local v2, landDelim:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    const-string v8, ";"

    const-string v9, " "

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, p4, 0x2

    int-to-float v9, v9

    sget v10, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarTextSize:I

    add-int v10, v10, p5

    int-to-float v10, v10

    iget-object v11, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    .end local v2           #landDelim:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private drawLunar(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 7
    .parameter "canvas"
    .parameter "monthNumPaint"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mMonthWeekEventsView:Lcom/mediatek/calendar/extension/IMonthViewForExt;

    invoke-interface {v0, p3, p4}, Lcom/mediatek/calendar/extension/IMonthViewForExt;->getTimeFromLocation(II)Landroid/text/format/Time;

    move-result-object v6

    .line 79
    .local v6, weekDayTime:Landroid/text/format/Time;
    if-nez v6, :cond_0

    .line 80
    const-string v0, "LunarMonthViewExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawWeekNums(),getDayFromLocation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return null,for loop continue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/calendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mLunarUtil:Lcom/mediatek/calendar/lunar/LunarUtil;

    iget v2, v6, Landroid/text/format/Time;->year:I

    iget v3, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v6, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/calendar/lunar/LunarUtil;->getLunarFestivalChineseString(III)Ljava/lang/String;

    move-result-object v1

    .local v1, lunarText:Ljava/lang/String;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->doDrawLunar(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    goto :goto_0
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 53
    sget-boolean v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sIsScaled:Z

    if-nez v0, :cond_0

    .line 54
    sget v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarTextSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarTextSize:I

    .line 55
    sget v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarOffsetXFromMonthNumber:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sLunarOffsetXFromMonthNumber:I

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->sIsScaled:Z

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public drawInCell(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 1
    .parameter "canvas"
    .parameter "monthNumPaint"
    .parameter "numX"
    .parameter "numY"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->mCanShowLunar:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/calendar/extension/LunarMonthViewExt;->drawLunar(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 67
    :cond_0
    return-void
.end method
