.class Lcom/android/mms/util/SmileyParser2$Smileys;
.super Ljava/lang/Object;
.source "SmileyParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SmileyParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Smileys"
.end annotation


# static fields
.field public static final ABSORBED:I = 0x1b

.field public static final AEROPLANE:I = 0x41

.field public static final ANGEL:I = 0x8

.field public static final ANGRY:I = 0x1f

.field public static final BADLOL:I = 0x23

.field public static final BIRTHDAYCAKE:I = 0x35

.field public static final BOMB:I = 0x25

.field public static final BROKENHEART:I = 0x39

.field public static final BULB:I = 0x3a

.field public static final CANDLE:I = 0x34

.field public static final CAONIMA:I = 0x43

.field public static final CHARMING:I = 0x17

.field public static final CLOCK:I = 0x32

.field public static final CONFUSED:I = 0xf

.field public static final COOL:I = 0x4

.field public static final CRYING:I = 0x3

.field public static final CUTE:I = 0x1c

.field public static final DEMONS:I = 0x19

.field public static final DEPRESSED:I = 0x27

.field public static final DOMINEERING:I = 0x26

.field public static final DOWN:I = 0x2d

.field public static final EMAIL:I = 0x33

.field public static final EMBARRASSED:I = 0xa

.field public static final FAINT:I = 0x21

.field public static final FILM:I = 0x40

.field public static final FUYUN:I = 0x3d

.field public static final GIFT:I = 0x36

.field public static final GOBALLISTIC:I = 0x24

.field public static final GOOD:I = 0x28

.field public static final GRIEVANCE:I = 0x1a

.field public static final HAPPY:I = 0x0

.field public static final HEART:I = 0x11

.field public static final HORROR:I = 0x20

.field public static final KISSING:I = 0x5

.field public static final LAUGHING:I = 0xe

.field public static final LIGHTNING:I = 0x2f

.field public static final LIPSARESEALED:I = 0x10

.field public static final MAD:I = 0x12

.field public static final MICROPHONE:I = 0x31

.field public static final MONRY:I = 0xb

.field public static final MUSIC:I = 0x3b

.field public static final NO:I = 0x29

.field public static final OK:I = 0x2a

.field public static final PENGUIN:I = 0x44

.field public static final PIG:I = 0x45

.field public static final POKER:I = 0x14

.field public static final RAIN:I = 0x2e

.field public static final REDHEART:I = 0x38

.field public static final RICE:I = 0x3e

.field public static final ROSES:I = 0x3f

.field public static final SAD:I = 0x2

.field public static final SEDUCE:I = 0x2c

.field public static final SHENMA:I = 0x3c

.field public static final SLEEP:I = 0x15

.field public static final SLEEPY:I = 0x1d

.field public static final SLOBBER:I = 0x22

.field public static final SMIRK:I = 0x13

.field public static final SPEECHLESS:I = 0x18

.field public static final STAR:I = 0x37

.field public static final STRUGGLE:I = 0x1e

.field public static final SUN:I = 0x30

.field public static final SURPRISED:I = 0x9

.field public static final TONGUE:I = 0x6

.field public static final UMBRELLA:I = 0x42

.field public static final UNDECIDED:I = 0xd

.field public static final VICROTY:I = 0x2b

.field public static final VOMIT:I = 0x16

.field public static final WINKING:I = 0x1

.field public static final WRONG:I = 0xc

.field public static final YRLLING:I = 0x7

.field private static sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/mms/util/MessageConsts;->emoticonIdList:[I

    sput-object v0, Lcom/android/mms/util/SmileyParser2$Smileys;->sIconIds:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 208
    sget-object v0, Lcom/android/mms/util/SmileyParser2$Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
