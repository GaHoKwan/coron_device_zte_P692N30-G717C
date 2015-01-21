.class public interface abstract Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;
.super Ljava/lang/Object;
.source "PrxmMsg.java"


# static fields
.field public static final MSG_ID_BT_PRXM_CONNECT_CNF:I = 0xb55

.field public static final MSG_ID_BT_PRXM_CONNECT_REQ:I = 0xb54

.field public static final MSG_ID_BT_PRXM_DISCONNECT_IND:I = 0xb57

.field public static final MSG_ID_BT_PRXM_DISCONNECT_REQ:I = 0xb56

.field public static final MSG_ID_BT_PRXM_GET_CAPABILITY_CNF:I = 0xb59

.field public static final MSG_ID_BT_PRXM_GET_CAPABILITY_REQ:I = 0xb58

.field public static final MSG_ID_BT_PRXM_GET_LINKLOSS_CNF:I = 0xb63

.field public static final MSG_ID_BT_PRXM_GET_LINKLOSS_REQ:I = 0xb62

.field public static final MSG_ID_BT_PRXM_GET_REMOTE_TXPOWER_CNF:I = 0xb5b

.field public static final MSG_ID_BT_PRXM_GET_REMOTE_TXPOWER_REQ:I = 0xb5a

.field public static final MSG_ID_BT_PRXM_GET_RSSI_CNF:I = 0xb61

.field public static final MSG_ID_BT_PRXM_GET_RSSI_REQ:I = 0xb60

.field public static final MSG_ID_BT_PRXM_GROUP_END:I = 0xb64

.field public static final MSG_ID_BT_PRXM_GROUP_START:I = 0xb54

.field public static final MSG_ID_BT_PRXM_SET_LINKLOSS_CNF:I = 0xb5f

.field public static final MSG_ID_BT_PRXM_SET_LINKLOSS_REQ:I = 0xb5e

.field public static final MSG_ID_BT_PRXM_SET_PATHLOSS_CNF:I = 0xb5d

.field public static final MSG_ID_BT_PRXM_SET_PATHLOSS_REQ:I = 0xb5c

.field public static final PRXM_CONNECT_CNF:[I = null

.field public static final PRXM_CONNECT_CNF_B_RSPCODE:I = 0x5

.field public static final PRXM_CONNECT_REQ:[I = null

.field public static final PRXM_CONNECT_REQ_BA_ADDR:I = 0x5

.field public static final PRXM_CONNECT_REQ_BL_ADDR:I = 0x6

.field public static final PRXM_DISCONNECT_IND:[I = null

.field public static final PRXM_DISCONNECT_IND_B_RSPCODE:I = 0x5

.field public static final PRXM_DISCONNECT_REQ:[I = null

.field public static final PRXM_GET_CAPABILITY_CNF:[I = null

.field public static final PRXM_GET_CAPABILITY_CNF_B_RSPCODE:I = 0x5

.field public static final PRXM_GET_CAPABILITY_CNF_I_CAPABILITY:I = 0x2

.field public static final PRXM_GET_CAPABILITY_REQ:[I = null

.field public static final PRXM_GET_LINKLOSS_CNF:[I = null

.field public static final PRXM_GET_LINKLOSS_CNF_B_LEVEL:I = 0x6

.field public static final PRXM_GET_LINKLOSS_CNF_B_RSPCODE:I = 0x5

.field public static final PRXM_GET_LINKLOSS_REQ:[I = null

.field public static final PRXM_GET_REMOTE_TXPOWER_CNF:[I = null

.field public static final PRXM_GET_REMOTE_TXPOWER_CNF_B_RSPCODE:I = 0x5

.field public static final PRXM_GET_REMOTE_TXPOWER_CNF_B_TXPOWER:I = 0x6

.field public static final PRXM_GET_REMOTE_TXPOWER_REQ:[I = null

.field public static final PRXM_GET_RSSI_CNF:[I = null

.field public static final PRXM_GET_RSSI_CNF_B_RSPCODE:I = 0x5

.field public static final PRXM_GET_RSSI_CNF_B_RSSI:I = 0x6

.field public static final PRXM_GET_RSSI_REQ:[I = null

.field public static final PRXM_SET_LINKLOSS_CNF:[I = null

.field public static final PRXM_SET_LINKLOSS_CNF_B_RSPCODE:I = 0x5

.field public static final PRXM_SET_LINKLOSS_REQ:[I = null

.field public static final PRXM_SET_LINKLOSS_REQ_B_LEVEL:I = 0x5

.field public static final PRXM_SET_PATHLOSS_CNF:[I = null

.field public static final PRXM_SET_PATHLOSS_CNF_B_RSPCODE:I = 0x5

.field public static final PRXM_SET_PATHLOSS_REQ:[I = null

.field public static final PRXM_SET_PATHLOSS_REQ_B_LEVEL:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_CONNECT_REQ:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_CONNECT_CNF:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_DISCONNECT_REQ:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_DISCONNECT_IND:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_CAPABILITY_REQ:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_CAPABILITY_CNF:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_REMOTE_TXPOWER_REQ:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_REMOTE_TXPOWER_CNF:[I

    .line 94
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_PATHLOSS_REQ:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_PATHLOSS_CNF:[I

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_LINKLOSS_REQ:[I

    .line 103
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_SET_LINKLOSS_CNF:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_RSSI_REQ:[I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_RSSI_CNF:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_LINKLOSS_REQ:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmMsg;->PRXM_GET_LINKLOSS_CNF:[I

    return-void

    .line 70
    :array_0
    .array-data 0x4
        0x54t 0xbt 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 74
    :array_1
    .array-data 0x4
        0x55t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 77
    :array_2
    .array-data 0x4
        0x56t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 79
    :array_3
    .array-data 0x4
        0x57t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 82
    :array_4
    .array-data 0x4
        0x58t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_5
    .array-data 0x4
        0x59t 0xbt 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 88
    :array_6
    .array-data 0x4
        0x5at 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 90
    :array_7
    .array-data 0x4
        0x5bt 0xbt 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 94
    :array_8
    .array-data 0x4
        0x5ct 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 97
    :array_9
    .array-data 0x4
        0x5dt 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 100
    :array_a
    .array-data 0x4
        0x5et 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 103
    :array_b
    .array-data 0x4
        0x5ft 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 106
    :array_c
    .array-data 0x4
        0x60t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 108
    :array_d
    .array-data 0x4
        0x61t 0xbt 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 112
    :array_e
    .array-data 0x4
        0x62t 0xbt 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_f
    .array-data 0x4
        0x63t 0xbt 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method
