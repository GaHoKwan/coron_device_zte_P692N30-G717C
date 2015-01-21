.class public interface abstract Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;
.super Ljava/lang/Object;
.source "PrxrMsg.java"


# static fields
.field public static final MSG_ID_BT_PRXR_AUTHORIZE_IND:I = 0xbbc

.field public static final MSG_ID_BT_PRXR_AUTHORIZE_RSP:I = 0xbbd

.field public static final MSG_ID_BT_PRXR_CONNECT_IND:I = 0xbbe

.field public static final MSG_ID_BT_PRXR_DEREGISTER_CNF:I = 0xbbb

.field public static final MSG_ID_BT_PRXR_DEREGISTER_REQ:I = 0xbba

.field public static final MSG_ID_BT_PRXR_DISCONNECT_IND:I = 0xbc0

.field public static final MSG_ID_BT_PRXR_DISCONNECT_REQ:I = 0xbbf

.field public static final MSG_ID_BT_PRXR_GROUP_END:I = 0xbc5

.field public static final MSG_ID_BT_PRXR_GROUP_START:I = 0xbb8

.field public static final MSG_ID_BT_PRXR_LINKLOSS_IND:I = 0xbc2

.field public static final MSG_ID_BT_PRXR_PATHLOSS_IND:I = 0xbc1

.field public static final MSG_ID_BT_PRXR_REGISTER_CNF:I = 0xbb9

.field public static final MSG_ID_BT_PRXR_REGISTER_REQ:I = 0xbb8

.field public static final MSG_ID_BT_PRXR_UPDATE_TXPOWER_CNF:I = 0xbc4

.field public static final MSG_ID_BT_PRXR_UPDATE_TXPOWER_REQ:I = 0xbc3

.field public static final PRXR_AUTHORIZE_IND:[I = null

.field public static final PRXR_AUTHORIZE_IND_BA_ADDR:I = 0x5

.field public static final PRXR_AUTHORIZE_IND_BL_ADDR:I = 0x6

.field public static final PRXR_AUTHORIZE_RSP:[I = null

.field public static final PRXR_AUTHORIZE_RSP_B_RSPCODE:I = 0x5

.field public static final PRXR_CONNECT_IND:[I = null

.field public static final PRXR_CONNECT_IND_BA_ADDR:I = 0x5

.field public static final PRXR_CONNECT_IND_BL_ADDR:I = 0x6

.field public static final PRXR_DEREGISTER_CNF:[I = null

.field public static final PRXR_DEREGISTER_CNF_B_RSPCODE:I = 0x5

.field public static final PRXR_DEREGISTER_REQ:[I = null

.field public static final PRXR_DISCONNECT_IND:[I = null

.field public static final PRXR_DISCONNECT_IND_B_RSPCODE:I = 0x5

.field public static final PRXR_DISCONNECT_REQ:[I = null

.field public static final PRXR_LINKLOSS_IND:[I = null

.field public static final PRXR_LINKLOSS_IND_B_LEVEL:I = 0x5

.field public static final PRXR_PATHLOSS_IND:[I = null

.field public static final PRXR_PATHLOSS_IND_B_LEVEL:I = 0x5

.field public static final PRXR_REGISTER_CNF:[I = null

.field public static final PRXR_REGISTER_CNF_B_RSPCODE:I = 0x5

.field public static final PRXR_REGISTER_REQ:[I = null

.field public static final PRXR_UPDATE_TXPOWER_CNF:[I = null

.field public static final PRXR_UPDATE_TXPOWER_CNF_B_TXPOWER:I = 0x5

.field public static final PRXR_UPDATE_TXPOWER_REQ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_REGISTER_REQ:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_REGISTER_CNF:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DEREGISTER_REQ:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DEREGISTER_CNF:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_AUTHORIZE_IND:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_AUTHORIZE_RSP:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_CONNECT_IND:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DISCONNECT_REQ:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_DISCONNECT_IND:[I

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_PATHLOSS_IND:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_LINKLOSS_IND:[I

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_UPDATE_TXPOWER_REQ:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/mediatek/bluetooth/prx/reporter/PrxrMsg;->PRXR_UPDATE_TXPOWER_CNF:[I

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0xb8t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_1
    .array-data 0x4
        0xb9t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 72
    :array_2
    .array-data 0x4
        0xbat 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 74
    :array_3
    .array-data 0x4
        0xbbt 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 77
    :array_4
    .array-data 0x4
        0xbct 0xbt 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 81
    :array_5
    .array-data 0x4
        0xbdt 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_6
    .array-data 0x4
        0xbet 0xbt 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 88
    :array_7
    .array-data 0x4
        0xbft 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 90
    :array_8
    .array-data 0x4
        0xc0t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 93
    :array_9
    .array-data 0x4
        0xc1t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 96
    :array_a
    .array-data 0x4
        0xc2t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 99
    :array_b
    .array-data 0x4
        0xc3t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_c
    .array-data 0x4
        0xc4t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method
