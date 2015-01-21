.class public Lcom/mediatek/mock/hardware/MiniFeatureTable;
.super Ljava/lang/Object;
.source "MiniFeatureTable.java"


# static fields
.field private static final KEY_INDEX:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATRIX_SCENE:[[Ljava/lang/String; = null

.field public static final SCENE_AUTO:I = 0xd

.field public static final SCENE_BEACH:I = 0x5

.field public static final SCENE_CANDLE:I = 0xc

.field public static final SCENE_FIREWORKS:I = 0x9

.field private static final SCENE_INDEX:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCENE_LAND:I = 0x2

.field public static final SCENE_NIGHT:I = 0x3

.field public static final SCENE_NIGHTPORTRAIT:I = 0x4

.field public static final SCENE_NORMAL:I = 0x0

.field public static final SCENE_PARTT:I = 0xb

.field public static final SCENE_PORTRAIT:I = 0x1

.field public static final SCENE_SNOW:I = 0x6

.field public static final SCENE_SPORT:I = 0xa

.field public static final SCENE_STEADY:I = 0x8

.field public static final SCENE_SUNSET:I = 0x7

.field public static final SCENE_THEATRE:I = 0x4

.field public static final SETTING_AE_METER:I = 0x3

.field public static final SETTING_BRIGHTNESS:I = 0x7

.field public static final SETTING_CONTRAST:I = 0x8

.field public static final SETTING_EDGE:I = 0x4

.field public static final SETTING_EXPOSURE:I = 0x0

.field public static final SETTING_HUE:I = 0x5

.field public static final SETTING_ISO:I = 0x2

.field public static final SETTING_NUM:I = 0x15

.field public static final SETTING_SATURATION:I = 0x6

.field public static final SETTING_WHITE_BALANCE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    .line 10
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "normal"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "portrait"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "landscape"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "night"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "night-portrait"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "theatre"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "beach"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "snow"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "sunset"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "steadyphoto"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "fireworks"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "sports"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "party"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "candlelight"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    const-string v1, "auto"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "exposure-compensation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "whitebalance"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "iso-speed"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "exposure-meter"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "edge"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "hue"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "saturation"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "brightness"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    const-string v1, "contrast"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "0"

    aput-object v2, v1, v6

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "0"

    aput-object v2, v1, v8

    const-string v2, "0"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "0"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "auto"

    aput-object v2, v1, v5

    const-string v2, "auto"

    aput-object v2, v1, v6

    const-string v2, "daylight"

    aput-object v2, v1, v7

    const-string v2, "auto"

    aput-object v2, v1, v8

    const-string v2, "auto"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "daylight"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "incandescent"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "auto"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "auto"

    aput-object v2, v1, v5

    const-string v2, "auto"

    aput-object v2, v1, v6

    const-string v2, "auto"

    aput-object v2, v1, v7

    const-string v2, "auto"

    aput-object v2, v1, v8

    const-string v2, "auto"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "auto"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "center"

    aput-object v2, v1, v5

    const-string v2, "center"

    aput-object v2, v1, v6

    const-string v2, "center"

    aput-object v2, v1, v7

    const-string v2, "center"

    aput-object v2, v1, v8

    const-string v2, "center"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "center"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "center"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "center"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "middle"

    aput-object v2, v1, v5

    const-string v2, "low"

    aput-object v2, v1, v6

    const-string v2, "high"

    aput-object v2, v1, v7

    const-string v2, "low"

    aput-object v2, v1, v8

    const-string v2, "low"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "high"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "high"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "high"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "high"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "middle"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "middle"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "middle"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "middle"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "middle"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "middle"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v5

    const-string v3, "middle"

    aput-object v3, v2, v6

    const-string v3, "middle"

    aput-object v3, v2, v7

    const-string v3, "middle"

    aput-object v3, v2, v8

    const-string v3, "middle"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "middle"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v5

    const-string v3, "middle"

    aput-object v3, v2, v6

    const-string v3, "middle"

    aput-object v3, v2, v7

    const-string v3, "middle"

    aput-object v3, v2, v8

    const-string v3, "low"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "middle"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v5

    const-string v3, "middle"

    aput-object v3, v2, v6

    const-string v3, "middle"

    aput-object v3, v2, v7

    const-string v3, "middle"

    aput-object v3, v2, v8

    const-string v3, "middle"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "middle"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v5

    const-string v3, "middle"

    aput-object v3, v2, v6

    const-string v3, "middle"

    aput-object v3, v2, v7

    const-string v3, "middle"

    aput-object v3, v2, v8

    const-string v3, "middle"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "middle"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "middle"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->MATRIX_SCENE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static pickItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "scene"

    .prologue
    .line 105
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key or scene not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    sget-object v1, Lcom/mediatek/mock/hardware/MiniFeatureTable;->MATRIX_SCENE:[[Ljava/lang/String;

    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->KEY_INDEX:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v1, v0

    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->SCENE_INDEX:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public getFixedParameters(II)Ljava/lang/String;
    .locals 2
    .parameter "keyIndex"
    .parameter "sceneIndex"

    .prologue
    .line 95
    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please check keyIndex!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    const/16 v0, 0xd

    if-gt p2, v0, :cond_2

    if-gez p2, :cond_3

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please check sceneIndex!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    sget-object v0, Lcom/mediatek/mock/hardware/MiniFeatureTable;->MATRIX_SCENE:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method
