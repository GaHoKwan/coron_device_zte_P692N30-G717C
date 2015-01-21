.class Lcom/android/mms/util/SmileyParser2$XmSmileys;
.super Ljava/lang/Object;
.source "SmileyParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SmileyParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XmSmileys"
.end annotation


# static fields
.field public static final ANGRY:I = 0xf

.field public static final BADLUCK:I = 0x3

.field public static final CONFUSED:I = 0x8

.field public static final CRY:I = 0xe

.field public static final CURSE:I = 0xb

.field public static final CUTE:I = 0x5

.field public static final DAZE:I = 0x13

.field public static final DISAPPEAR:I = 0x16

.field public static final DIZZY:I = 0x6

.field public static final EMBARRASSED:I = 0x14

.field public static final GRIEVANCE:I = 0x17

.field public static final KISS:I = 0x9

.field public static final LIKE:I = 0x4

.field public static final LOVE:I = 0xa

.field public static final MONEY:I = 0xc

.field public static final NAUGHTY:I = 0x11

.field public static final PLEASED:I = 0x10

.field public static final QUESTION:I = 0x1

.field public static final SLEEP:I = 0x15

.field public static final SMILE:I = 0xd

.field public static final THRILLER:I = 0x12

.field public static final TIRED:I = 0x7

.field public static final VOMIT:I = 0x2

.field public static final WINK:I

.field private static sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->XM_ICON_ARR:[I

    sput-object v0, Lcom/android/mms/util/SmileyParser2$XmSmileys;->sIconIds:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 340
    sget-object v0, Lcom/android/mms/util/SmileyParser2$XmSmileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
