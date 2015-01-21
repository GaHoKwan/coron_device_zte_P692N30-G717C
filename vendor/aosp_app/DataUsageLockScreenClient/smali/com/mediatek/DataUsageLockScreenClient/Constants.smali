.class public Lcom/mediatek/DataUsageLockScreenClient/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CIRCLE_BULE:I = 0x0

.field public static final CIRCLE_GREEN:I = 0x2

.field public static final CIRCLE_ORANGE:I = 0x1

.field public static final CIRCLE_PURPLE:I = 0x3

.field public static final GB_UNIT:J = 0x40000000L

.field public static final GEMINI_CARD_ONE:I = 0x1

.field public static final GEMINI_CARD_TWO:I = 0x2

.field public static final HVGA_WIDTH:I = 0x1e0

#the value of this static final field might be set in the static constructor
.field public static final IN_CIRCLE_BULE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IN_CIRCLE_GREEN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IN_CIRCLE_ORANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IN_CIRCLE_PURPLE:I = 0x0

.field public static final IN_CIRCLE_RADIUS:I = 0x2

.field public static final KB_UNIT:I = 0x400

.field public static final MB_UNIT:J = 0x100000L

.field public static final NO_CARD:I = 0x3

.field public static final ONE_CARD:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final OUT_CIRCLE_COLOR_ALPHA_MORE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final OUT_CIRCLE_COLOR_ALPHA_NORMAL:I = 0x0

.field public static final OUT_CIRCLE_RADIUS:I = 0x3

.field public static final SINGLE_CARD:I = 0x0

.field public static final TEXT_LEFT:I = 0x0

.field public static final TEXT_RIGHT:I = 0x1

.field public static final TEXT_SIZE_LANDSCAPE_SMALL:F = 10.0f

.field public static final TEXT_SIZE_LARGE:F = 32.0f

.field public static final TEXT_SIZE_MIDDLE:F = 20.0f

.field public static final TEXT_SIZE_SMALL:F = 17.0f

.field public static final TWO_CARD:I = 0x2

.field public static final XXHDPI_WIDTH:I = 0x438


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0xff

    const/16 v3, 0xc8

    const/4 v1, 0x0

    .line 32
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/Constants;->OUT_CIRCLE_COLOR_ALPHA_MORE:I

    .line 33
    const/16 v0, 0x64

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/Constants;->OUT_CIRCLE_COLOR_ALPHA_NORMAL:I

    .line 35
    const/16 v0, 0x88

    invoke-static {v3, v2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_ORANGE:I

    .line 36
    const/16 v0, 0xbf

    invoke-static {v3, v1, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_BULE:I

    .line 37
    invoke-static {v3, v1, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_GREEN:I

    .line 38
    const/16 v0, 0xa0

    const/16 v1, 0x20

    const/16 v2, 0xf0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_PURPLE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method
