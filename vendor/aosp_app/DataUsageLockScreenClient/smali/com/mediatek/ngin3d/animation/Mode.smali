.class public final enum Lcom/mediatek/ngin3d/animation/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/ngin3d/animation/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum CUSTOM_MODE:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_BACK:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_BACK:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_QUART:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_QUART:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_IN_SINE:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_BACK:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_QUART:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum EASE_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

.field public static final enum LINEAR:Lcom/mediatek/ngin3d/animation/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "CUSTOM_MODE"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->CUSTOM_MODE:Lcom/mediatek/ngin3d/animation/Mode;

    .line 53
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->LINEAR:Lcom/mediatek/ngin3d/animation/Mode;

    .line 56
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_QUAD"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

    .line 57
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_QUAD"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

    .line 58
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_QUAD"

    invoke-direct {v0, v1, v7}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

    .line 61
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_CUBIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 62
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_CUBIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 63
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_CUBIC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 66
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_QUART"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_QUART:Lcom/mediatek/ngin3d/animation/Mode;

    .line 67
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_QUART"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_QUART:Lcom/mediatek/ngin3d/animation/Mode;

    .line 68
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_QUART"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_QUART:Lcom/mediatek/ngin3d/animation/Mode;

    .line 71
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_QUINT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

    .line 72
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_QUINT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

    .line 73
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_QUINT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

    .line 76
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_SINE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    .line 77
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_SINE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    .line 78
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_SINE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    .line 81
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_EXPO"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

    .line 82
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_EXPO"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

    .line 83
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_EXPO"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

    .line 86
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_CIRC"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 87
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_CIRC"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 88
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_CIRC"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 91
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_ELASTIC"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 92
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_ELASTIC"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 93
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_ELASTIC"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

    .line 96
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_BACK"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_BACK:Lcom/mediatek/ngin3d/animation/Mode;

    .line 97
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_BACK"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_BACK:Lcom/mediatek/ngin3d/animation/Mode;

    .line 98
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_BACK"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_BACK:Lcom/mediatek/ngin3d/animation/Mode;

    .line 101
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_BOUNCE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

    .line 102
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_OUT_BOUNCE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

    .line 103
    new-instance v0, Lcom/mediatek/ngin3d/animation/Mode;

    const-string v1, "EASE_IN_OUT_BOUNCE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/animation/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/mediatek/ngin3d/animation/Mode;

    sget-object v1, Lcom/mediatek/ngin3d/animation/Mode;->CUSTOM_MODE:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/ngin3d/animation/Mode;->LINEAR:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_CUBIC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_QUART:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_QUART:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_QUART:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_QUINT:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_SINE:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_EXPO:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_CIRC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_ELASTIC:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_BACK:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_BACK:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_BACK:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_OUT_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_BOUNCE:Lcom/mediatek/ngin3d/animation/Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/ngin3d/animation/Mode;->$VALUES:[Lcom/mediatek/ngin3d/animation/Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ngin3d/animation/Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/mediatek/ngin3d/animation/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Mode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ngin3d/animation/Mode;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mediatek/ngin3d/animation/Mode;->$VALUES:[Lcom/mediatek/ngin3d/animation/Mode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ngin3d/animation/Mode;

    return-object v0
.end method
