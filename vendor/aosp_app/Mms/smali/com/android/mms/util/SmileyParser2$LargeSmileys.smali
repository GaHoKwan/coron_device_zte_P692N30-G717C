.class Lcom/android/mms/util/SmileyParser2$LargeSmileys;
.super Ljava/lang/Object;
.source "SmileyParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SmileyParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LargeSmileys"
.end annotation


# static fields
.field public static final ANGRY:I = 0x8

.field public static final APPROVE:I = 0x9

.field public static final BORING:I = 0xa

.field public static final CRY:I = 0xb

.field public static final DRIVING:I = 0xc

.field public static final EATING:I = 0xd

.field public static final FLY:I = 0x7

.field public static final GIFT:I = 0x1

.field public static final HAPPY:I = 0xe

.field public static final HOLD:I = 0xf

.field public static final HOLIDAY:I = 0x10

.field public static final ILL:I = 0x5

.field public static final KONGFU:I = 0x2

.field public static final LOVE:I = 0x11

.field public static final PRAISE:I = 0x0

.field public static final PRAY:I = 0x12

.field public static final PRESSURE:I = 0x13

.field public static final RICH:I = 0x6

.field public static final SCARE:I = 0x4

.field public static final SHOWER:I = 0x3

.field public static final SING:I = 0x14

.field public static final SLEEP:I = 0x15

.field public static final SPORTS:I = 0x16

.field public static final SWIMMING:I = 0x17

.field private static sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->LARGE_ICON_ARR:[I

    sput-object v0, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->sIconIds:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 241
    sget-object v0, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
