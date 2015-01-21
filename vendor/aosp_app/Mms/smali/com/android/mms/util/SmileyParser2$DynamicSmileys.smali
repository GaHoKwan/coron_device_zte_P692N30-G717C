.class Lcom/android/mms/util/SmileyParser2$DynamicSmileys;
.super Ljava/lang/Object;
.source "SmileyParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SmileyParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicSmileys"
.end annotation


# static fields
.field public static final AMAZING:I = 0x14

.field public static final ANGRY:I = 0x7

.field public static final ANGRY_TOO:I = 0xd

.field public static final AROUND:I = 0xe

.field public static final BYE:I = 0x12

.field public static final CLAPPING:I = 0x1

.field public static final CRY:I = 0xb

.field public static final CURSE:I = 0x8

.field public static final DISCOURAGING:I = 0xc

.field public static final DISDAIN:I = 0x4

.field public static final HAPPY:I = 0x0

.field public static final HOWEVER:I = 0x9

.field public static final HUNGRY:I = 0x15

.field public static final IMPATIENT:I = 0x5

.field public static final INNOCENT:I = 0x13

.field public static final LOVE:I = 0x2

.field public static final PASSING:I = 0xf

.field public static final PROUDLY:I = 0x3

.field public static final PURE:I = 0x11

.field public static final SLAP:I = 0x6

.field public static final SLEEP:I = 0x16

.field public static final TANGLE:I = 0xa

.field public static final WISHES:I = 0x17

.field public static final WORSHIP:I = 0x10

.field private static sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->DYNAMIC_ICON_ARR:[I

    sput-object v0, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->sIconIds:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 274
    sget-object v0, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
