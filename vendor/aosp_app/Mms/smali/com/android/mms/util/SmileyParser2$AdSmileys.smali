.class Lcom/android/mms/util/SmileyParser2$AdSmileys;
.super Ljava/lang/Object;
.source "SmileyParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SmileyParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdSmileys"
.end annotation


# static fields
.field public static final ANGRY:I = 0xe

.field public static final ASTRICTION:I = 0x17

.field public static final BRETING:I = 0x0

.field public static final BYE:I = 0x16

.field public static final COMPLACENT:I = 0xb

.field public static final CRY:I = 0x2

.field public static final CURSE:I = 0x9

.field public static final DANCING:I = 0xd

.field public static final DOZING:I = 0x5

.field public static final EATING:I = 0x12

.field public static final HALO:I = 0x3

.field public static final HEARTBEAT:I = 0x4

.field public static final HOOP:I = 0x13

.field public static final IMPATIENCE:I = 0x7

.field public static final JUMPING:I = 0xf

.field public static final LAUGH:I = 0x6

.field public static final PASSING:I = 0x14

.field public static final PEEP:I = 0x10

.field public static final PRATFALL:I = 0x11

.field public static final RUNNING:I = 0x8

.field public static final SHAKE:I = 0x15

.field public static final SIDESHOW:I = 0x1

.field public static final SNEEZE:I = 0xc

.field public static final SWEAT:I = 0xa

.field private static sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->AD_ICON_ARR:[I

    sput-object v0, Lcom/android/mms/util/SmileyParser2$AdSmileys;->sIconIds:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 307
    sget-object v0, Lcom/android/mms/util/SmileyParser2$AdSmileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
