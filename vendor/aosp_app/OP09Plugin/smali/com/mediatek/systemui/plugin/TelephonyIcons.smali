.class final Lcom/mediatek/systemui/plugin/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA:[[I

.field static final DATA_1X:[I

.field static final DATA_2G:[I

.field static final DATA_3G:[I

.field static final DATA_4G:[I

.field static final DATA_ACTIVITY:[[I

.field static final DATA_E:[I

.field static final DATA_G:[I

.field static final DATA_H:[I

.field static final DATA_H_PLUS:[I

.field static final NETWORK_TYPE:[[I

.field static final NETWORK_TYPE_1X:[I

.field static final NETWORK_TYPE_1X3G:[I

.field static final NETWORK_TYPE_2G:[I

.field static final NETWORK_TYPE_3G:[I

.field static final WIFI_INOUT_ICON:[I

.field static final WIFI_STRENGTH_ICON:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x5

    .line 12
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_1X:[I

    .line 20
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_2G:[I

    .line 28
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_3G:[I

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_4G:[I

    .line 44
    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_2G:[I

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_E:[I

    .line 46
    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_2G:[I

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_G:[I

    .line 48
    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_3G:[I

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_H:[I

    .line 50
    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_3G:[I

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_H_PLUS:[I

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [[I

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_1X:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_3G:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_4G:[I

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_E:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_G:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_H:[I

    aput-object v1, v0, v3

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_H_PLUS:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA:[[I

    .line 66
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_2G:[I

    .line 73
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_3G:[I

    .line 80
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_1X:[I

    .line 87
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_1X3G:[I

    .line 95
    new-array v0, v4, [[I

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_2G:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_3G:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_1X:[I

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE_1X3G:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE:[[I

    .line 106
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_ACTIVITY:[[I

    .line 129
    new-array v0, v3, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->WIFI_STRENGTH_ICON:[I

    .line 137
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->WIFI_INOUT_ICON:[I

    return-void

    .line 12
    nop

    :array_0
    .array-data 0x4
        0xd3t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 20
    :array_1
    .array-data 0x4
        0xd8t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
    .end array-data

    .line 28
    :array_2
    .array-data 0x4
        0xddt 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 36
    :array_3
    .array-data 0x4
        0xe2t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 66
    :array_4
    .array-data 0x4
        0x5t 0x1t 0x2t 0x7ft
        0x7t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
    .end array-data

    .line 73
    :array_5
    .array-data 0x4
        0xat 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
    .end array-data

    .line 80
    :array_6
    .array-data 0x4
        0x0t 0x1t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
        0x4t 0x1t 0x2t 0x7ft
    .end array-data

    .line 87
    :array_7
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x7ft
        0xfdt 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
    .end array-data

    .line 106
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x16t 0x1t 0x2t 0x7ft
        0x21t 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x1t 0x2t 0x7ft
        0x23t 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x17t 0x1t 0x2t 0x7ft
        0x22t 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x19t 0x1t 0x2t 0x7ft
        0x24t 0x1t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
    .end array-data

    .line 129
    :array_c
    .array-data 0x4
        0x28t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x2at 0x1t 0x2t 0x7ft
        0x2bt 0x1t 0x2t 0x7ft
        0x2ct 0x1t 0x2t 0x7ft
    .end array-data

    .line 137
    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x25t 0x1t 0x2t 0x7ft
        0x27t 0x1t 0x2t 0x7ft
        0x26t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
