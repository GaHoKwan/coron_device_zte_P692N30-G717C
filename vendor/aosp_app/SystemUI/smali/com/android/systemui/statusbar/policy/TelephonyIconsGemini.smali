.class public Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;
.super Ljava/lang/Object;
.source "TelephonyIconsGemini.java"


# static fields
.field static final DATA:[[I

.field static final DATA_1X:[I

.field static final DATA_1X_ROAM:[I

.field static final DATA_3G:[I

.field static final DATA_3G_PLUS:[I

.field static final DATA_3G_PLUS_ROAM:[I

.field static final DATA_3G_ROAM:[I

.field static final DATA_4G:[I

.field static final DATA_4G_ROAM:[I

.field static final DATA_E:[I

.field static final DATA_E_ROAM:[I

.field static final DATA_G:[I

.field static final DATA_G_ROAM:[I

.field static final DATA_H:[I

.field static final DATA_H_PLUS:[I

.field static final DATA_H_PLUS_ROAM:[I

.field static final DATA_H_ROAM:[I

.field static final DATA_ROAM:[[I

.field static final EVDO_DATA_3G:[I

.field static final EVDO_DATA_3G_ROAM:[I

.field static final ROAMING:[I

.field private static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_DOWN:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_UP:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_WHITE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x5

    .line 45
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH_UP:[[I

    .line 67
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH_DOWN:[[I

    .line 91
    new-array v0, v3, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH_WHITE:[I

    .line 99
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 126
    new-array v0, v3, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_1X:[I

    .line 134
    new-array v0, v3, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G:[I

    .line 142
    new-array v0, v3, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_4G:[I

    .line 150
    new-array v0, v3, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_E:[I

    .line 158
    new-array v0, v3, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_G:[I

    .line 166
    new-array v0, v3, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H:[I

    .line 174
    new-array v0, v3, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H_PLUS:[I

    .line 182
    new-array v0, v3, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G_PLUS:[I

    .line 190
    const/16 v0, 0x8

    new-array v0, v0, [[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_1X:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_4G:[I

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_E:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_G:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H:[I

    aput-object v1, v0, v3

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H_PLUS:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G_PLUS:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA:[[I

    .line 205
    new-array v0, v3, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_1X_ROAM:[I

    .line 213
    new-array v0, v3, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G_ROAM:[I

    .line 221
    new-array v0, v3, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_4G_ROAM:[I

    .line 229
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_E_ROAM:[I

    .line 237
    new-array v0, v3, [I

    fill-array-data v0, :array_19

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_G_ROAM:[I

    .line 245
    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H_ROAM:[I

    .line 253
    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H_PLUS_ROAM:[I

    .line 261
    new-array v0, v4, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->EVDO_DATA_3G:[I

    .line 268
    new-array v0, v4, [I

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->EVDO_DATA_3G_ROAM:[I

    .line 276
    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G_PLUS_ROAM:[I

    .line 284
    const/16 v0, 0x8

    new-array v0, v0, [[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_1X_ROAM:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G_ROAM:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_4G_ROAM:[I

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_E_ROAM:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_G_ROAM:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H_ROAM:[I

    aput-object v1, v0, v3

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_H_PLUS_ROAM:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_3G_PLUS_ROAM:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_ROAM:[[I

    .line 299
    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->ROAMING:[I

    return-void

    .line 45
    nop

    :array_0
    .array-data 0x4
        0x2dt 0x2t 0x2t 0x7ft
        0x2et 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0x38t 0x2t 0x2t 0x7ft
        0x3dt 0x2t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x2dt 0x2t 0x2t 0x7ft
        0x30t 0x2t 0x2t 0x7ft
        0x35t 0x2t 0x2t 0x7ft
        0x3at 0x2t 0x2t 0x7ft
        0x3ft 0x2t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x2dt 0x2t 0x2t 0x7ft
        0x2ft 0x2t 0x2t 0x7ft
        0x34t 0x2t 0x2t 0x7ft
        0x39t 0x2t 0x2t 0x7ft
        0x3et 0x2t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x2dt 0x2t 0x2t 0x7ft
        0x31t 0x2t 0x2t 0x7ft
        0x36t 0x2t 0x2t 0x7ft
        0x3bt 0x2t 0x2t 0x7ft
        0x40t 0x2t 0x2t 0x7ft
    .end array-data

    .line 67
    :array_4
    .array-data 0x4
        0x16t 0x2t 0x2t 0x7ft
        0x17t 0x2t 0x2t 0x7ft
        0x1ct 0x2t 0x2t 0x7ft
        0x21t 0x2t 0x2t 0x7ft
        0x26t 0x2t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x16t 0x2t 0x2t 0x7ft
        0x19t 0x2t 0x2t 0x7ft
        0x1et 0x2t 0x2t 0x7ft
        0x23t 0x2t 0x2t 0x7ft
        0x28t 0x2t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x16t 0x2t 0x2t 0x7ft
        0x18t 0x2t 0x2t 0x7ft
        0x1dt 0x2t 0x2t 0x7ft
        0x22t 0x2t 0x2t 0x7ft
        0x27t 0x2t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x16t 0x2t 0x2t 0x7ft
        0x1at 0x2t 0x2t 0x7ft
        0x1ft 0x2t 0x2t 0x7ft
        0x24t 0x2t 0x2t 0x7ft
        0x29t 0x2t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_8
    .array-data 0x4
        0x1t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
        0xbt 0x2t 0x2t 0x7ft
        0x10t 0x2t 0x2t 0x7ft
        0x15t 0x2t 0x2t 0x7ft
    .end array-data

    .line 99
    :array_9
    .array-data 0x4
        0x1t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x7t 0x2t 0x2t 0x7ft
        0xct 0x2t 0x2t 0x7ft
        0x11t 0x2t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x2t 0x2t 0x7ft
        0x4t 0x2t 0x2t 0x7ft
        0x9t 0x2t 0x2t 0x7ft
        0xet 0x2t 0x2t 0x7ft
        0x13t 0x2t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x1t 0x2t 0x2t 0x7ft
        0x3t 0x2t 0x2t 0x7ft
        0x8t 0x2t 0x2t 0x7ft
        0xdt 0x2t 0x2t 0x7ft
        0x12t 0x2t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x2t 0x2t 0x7ft
        0x5t 0x2t 0x2t 0x7ft
        0xat 0x2t 0x2t 0x7ft
        0xft 0x2t 0x2t 0x7ft
        0x14t 0x2t 0x2t 0x7ft
    .end array-data

    .line 126
    :array_d
    .array-data 0x4
        0xa3t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0xa9t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
    .end array-data

    .line 134
    :array_e
    .array-data 0x4
        0xadt 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xaft 0x1t 0x2t 0x7ft
        0xbdt 0x1t 0x2t 0x7ft
        0xbft 0x1t 0x2t 0x7ft
    .end array-data

    .line 142
    :array_f
    .array-data 0x4
        0xc1t 0x1t 0x2t 0x7ft
        0xc5t 0x1t 0x2t 0x7ft
        0xc3t 0x1t 0x2t 0x7ft
        0xc7t 0x1t 0x2t 0x7ft
        0xc9t 0x1t 0x2t 0x7ft
    .end array-data

    .line 150
    :array_10
    .array-data 0x4
        0xcbt 0x1t 0x2t 0x7ft
        0xcft 0x1t 0x2t 0x7ft
        0xcdt 0x1t 0x2t 0x7ft
        0xd1t 0x1t 0x2t 0x7ft
        0xd3t 0x1t 0x2t 0x7ft
    .end array-data

    .line 158
    :array_11
    .array-data 0x4
        0xddt 0x1t 0x2t 0x7ft
        0xe1t 0x1t 0x2t 0x7ft
        0xdft 0x1t 0x2t 0x7ft
        0xe3t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
    .end array-data

    .line 166
    :array_12
    .array-data 0x4
        0xe7t 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
        0xf7t 0x1t 0x2t 0x7ft
        0xf9t 0x1t 0x2t 0x7ft
    .end array-data

    .line 174
    :array_13
    .array-data 0x4
        0xedt 0x1t 0x2t 0x7ft
        0xf1t 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
        0xf3t 0x1t 0x2t 0x7ft
        0xf5t 0x1t 0x2t 0x7ft
    .end array-data

    .line 182
    :array_14
    .array-data 0x4
        0xb3t 0x1t 0x2t 0x7ft
        0xb7t 0x1t 0x2t 0x7ft
        0xb5t 0x1t 0x2t 0x7ft
        0xb9t 0x1t 0x2t 0x7ft
        0xbbt 0x1t 0x2t 0x7ft
    .end array-data

    .line 205
    :array_15
    .array-data 0x4
        0xa4t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
    .end array-data

    .line 213
    :array_16
    .array-data 0x4
        0xaet 0x1t 0x2t 0x7ft
        0xb2t 0x1t 0x2t 0x7ft
        0xb0t 0x1t 0x2t 0x7ft
        0xbet 0x1t 0x2t 0x7ft
        0xc0t 0x1t 0x2t 0x7ft
    .end array-data

    .line 221
    :array_17
    .array-data 0x4
        0xc2t 0x1t 0x2t 0x7ft
        0xc6t 0x1t 0x2t 0x7ft
        0xc4t 0x1t 0x2t 0x7ft
        0xc8t 0x1t 0x2t 0x7ft
        0xcat 0x1t 0x2t 0x7ft
    .end array-data

    .line 229
    :array_18
    .array-data 0x4
        0xcct 0x1t 0x2t 0x7ft
        0xd0t 0x1t 0x2t 0x7ft
        0xcet 0x1t 0x2t 0x7ft
        0xd2t 0x1t 0x2t 0x7ft
        0xd4t 0x1t 0x2t 0x7ft
    .end array-data

    .line 237
    :array_19
    .array-data 0x4
        0xdet 0x1t 0x2t 0x7ft
        0xe2t 0x1t 0x2t 0x7ft
        0xe0t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 245
    :array_1a
    .array-data 0x4
        0xe8t 0x1t 0x2t 0x7ft
        0xect 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
        0xf8t 0x1t 0x2t 0x7ft
        0xfat 0x1t 0x2t 0x7ft
    .end array-data

    .line 253
    :array_1b
    .array-data 0x4
        0xeet 0x1t 0x2t 0x7ft
        0xf2t 0x1t 0x2t 0x7ft
        0xf0t 0x1t 0x2t 0x7ft
        0xf4t 0x1t 0x2t 0x7ft
        0xf6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 261
    :array_1c
    .array-data 0x4
        0xd5t 0x1t 0x2t 0x7ft
        0xd9t 0x1t 0x2t 0x7ft
        0xd7t 0x1t 0x2t 0x7ft
        0xdbt 0x1t 0x2t 0x7ft
    .end array-data

    .line 268
    :array_1d
    .array-data 0x4
        0xd6t 0x1t 0x2t 0x7ft
        0xdat 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xdct 0x1t 0x2t 0x7ft
    .end array-data

    .line 276
    :array_1e
    .array-data 0x4
        0xb4t 0x1t 0x2t 0x7ft
        0xb8t 0x1t 0x2t 0x7ft
        0xb6t 0x1t 0x2t 0x7ft
        0xbat 0x1t 0x2t 0x7ft
        0xbct 0x1t 0x2t 0x7ft
    .end array-data

    .line 299
    :array_1f
    .array-data 0x4
        0xfbt 0x1t 0x2t 0x7ft
        0xfdt 0x1t 0x2t 0x7ft
        0xfct 0x1t 0x2t 0x7ft
        0xfet 0x1t 0x2t 0x7ft
        0xfft 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataTypeIconListGemini(ZLcom/mediatek/systemui/ext/DataType;)[I
    .locals 3
    .parameter "roaming"
    .parameter "dataType"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, iconList:[I
    if-eqz p0, :cond_0

    .line 312
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA_ROAM:[[I

    invoke-virtual {p1}, Lcom/mediatek/systemui/ext/DataType;->getTypeId()I

    move-result v2

    aget-object v0, v1, v2

    .line 316
    :goto_0
    return-object v0

    .line 314
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->DATA:[[I

    invoke-virtual {p1}, Lcom/mediatek/systemui/ext/DataType;->getTypeId()I

    move-result v2

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public static getSignalStrengthIconGemini(IIIZ)I
    .locals 1
    .parameter "simColorId"
    .parameter "type"
    .parameter "level"
    .parameter "showSimIndicator"

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH_UP:[[I

    aget-object v0, v0, p0

    aget v0, v0, p2

    .line 42
    :goto_0
    return v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH_DOWN:[[I

    aget-object v0, v0, p0

    aget v0, v0, p2

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getTelephonySignalStrengthIconList(IZ)[I
    .locals 1
    .parameter "simColorId"
    .parameter "showSimIndicator"

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH_WHITE:[I

    .line 31
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsGemini;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, p0

    goto :goto_0
.end method
