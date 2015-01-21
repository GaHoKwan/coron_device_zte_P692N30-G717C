.class public interface abstract Lcom/mediatek/bluetooth/BluetoothIntent;
.super Ljava/lang/Object;
.source "BluetoothIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BluetoothIntent$OppsAccessRequest;,
        Lcom/mediatek/bluetooth/BluetoothIntent$OppService;
    }
.end annotation


# static fields
.field public static final ACTION_BT_OPP_TRANSFER_DONE:Ljava/lang/String; = "android.btopp.intent.action.BT_OPP_TRANSFER_DONE"

.field public static final ACTION_BT_OPP_TRANSFER_PROGRESS:Ljava/lang/String; = "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

.field public static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.btopp.intent.action.HANDOVER_SEND"

.field public static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

.field public static final ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field public static final ACTION_SEND_BIP_FILES:Ljava/lang/String; = "com.mediatek.bluetooth.sharegateway.action.ACTION_SEND_BIP_FILES"

.field public static final ACTION_STOP_HANDOVER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field public static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field public static final DIRECTION_BLUETOOTH_INCOMING:I = 0x0

.field public static final DIRECTION_BLUETOOTH_OUTGOING:I = 0x1

.field public static final EXTRA_BT_OPP_ADDRESS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_ADDRESS"

.field public static final EXTRA_BT_OPP_TRANSFER_DIRECTION:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

.field public static final EXTRA_BT_OPP_TRANSFER_DONE_SIZE:Ljava/lang/String; = "com.mediatek.bluetooth.opp.extra.BT_OPP_TRANSFER_DONE_SIZE"

.field public static final EXTRA_BT_OPP_TRANSFER_FILE_SIZE:Ljava/lang/String; = "com.mediatek.bluetooth.opp.extra.BT_OPP_TRANSFER_FILE_SIZE"

.field public static final EXTRA_BT_OPP_TRANSFER_ID:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

.field public static final EXTRA_BT_OPP_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_MIMETYPE"

.field public static final EXTRA_BT_OPP_TRANSFER_OBJECT_NAME:Ljava/lang/String; = "com.mediatek.bluetooth.opp.extra.BT_OPP_TRANSFER_OBJECT_NAME"

.field public static final EXTRA_BT_OPP_TRANSFER_PROGRESS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_PROGRESS"

.field public static final EXTRA_BT_OPP_TRANSFER_STATUS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_STATUS"

.field public static final EXTRA_BT_OPP_TRANSFER_URI:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_URI"

.field public static final EXTRA_CONNECTION_HANDOVER:Ljava/lang/String; = "com.android.intent.extra.CONNECTION_HANDOVER"

.field public static final HANDOVER_STATUS_PERMISSION:Ljava/lang/String; = "com.android.permission.HANDOVER_STATUS"

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I
