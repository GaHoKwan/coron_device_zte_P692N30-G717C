.class public Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
.super Ljava/lang/Object;
.source "BluetoothBppServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;
    }
.end annotation


# static fields
.field private static final BPP_CANCEL_FAIL:I = 0x10

.field private static final BPP_CANCEL_SUCCESS:I = 0xf

.field private static final BPP_CONNECT_FAIL:I = 0x6

.field private static final BPP_CONNECT_SUCCESS:I = 0x5

.field private static final BPP_DISABLE_FAIL:I = 0x3

.field private static final BPP_DISABLE_SUCCESS:I = 0x2

.field private static final BPP_DISCONNECT_FAIL:I = 0xe

.field private static final BPP_DISCONNECT_SUCCESS:I = 0xd

.field private static final BPP_ENABLE_FAIL:I = 0x1

.field private static final BPP_ENABLE_SUCCESS:I = 0x0

.field private static final BPP_GET_PRINT_ATTR_FAIL:I = 0x8

.field private static final BPP_GET_PRINT_ATTR_SUCCESS:I = 0x7

.field private static final BPP_OBEX_AUTHREQ:I = 0x4

.field private static final BPP_PRINT_COMPLETE_FAIL:I = 0xc

.field private static final BPP_PRINT_COMPLETE_SUCCESS:I = 0xb

.field private static final BPP_PRINT_STATUS:I = 0xa

.field private static final BPP_PROGRESS:I = 0x9

.field private static final MEDIASIZE:[Ljava/lang/String; = null

.field private static final NO_DEFINITION:Ljava/lang/String; = "nukonwn"

.field private static ORIENTATION:[Ljava/lang/String; = null

.field private static QUALITY:[Ljava/lang/String; = null

.field private static SIDESETTING:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothBppServer"

.field private static mCurSentLength:I

.field private static mPreSentLength:I

.field private static mSObjLength:I

.field private static final mimeTable:[Ljava/lang/String;


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mListener:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;

.field private mNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "application/vnd.pwg-xhtml-print+xml:0.95"

    aput-object v1, v0, v3

    const-string v1, "application/vnd.pwg-xhtml-print+xml:1.0"

    aput-object v1, v0, v4

    const-string v1, "application/vnd.pwg-multiplexed"

    aput-object v1, v0, v5

    const-string v1, "text/plain"

    aput-object v1, v0, v6

    const-string v1, "text/x-vcard:2.1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "text/x-vcard:3.0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/x-vcalendar:1.0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/calendar:2.0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/x-vmessage:1.1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text/x-vnote:1.1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image/bmp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "image/svg+xml"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mimeTable:[Ljava/lang/String;

    .line 104
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A10"

    aput-object v1, v0, v3

    const-string v1, "A9"

    aput-object v1, v0, v4

    const-string v1, "A8"

    aput-object v1, v0, v5

    const-string v1, "A7"

    aput-object v1, v0, v6

    const-string v1, "A6"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "A5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "A5-extra"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "A4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "A4-tab"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "A4-extra"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "A3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "A2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "A1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "A0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "2A0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "B10"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "B9"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "B8"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "B7"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "B6"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "B6C4"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "B5"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "B5-extra"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "B4"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "B3"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "B2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "B1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "B0"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "C10"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "C9"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "C8"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "C7"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "C7C6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "C6"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "C6C5"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "C5"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "C4"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "C3"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "C2"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "C1"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "C0"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Photo 4x6"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Letter 8.5x11"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->MEDIASIZE:[Ljava/lang/String;

    .line 188
    sput v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mPreSentLength:I

    .line 189
    sput v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCurSentLength:I

    .line 190
    sput v3, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mSObjLength:I

    .line 200
    const-string v0, "extbpp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->classInitNative()V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    .line 207
    iput-object p2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->ORIENTATION:[Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->SIDESETTING:[Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->QUALITY:[Ljava/lang/String;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->startListenNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->stopListenNative()Z

    move-result v0

    return v0
.end method

.method private native bppAuthRspNative(Lcom/mediatek/bluetooth/bpp/AuthInfo;)V
.end method

.method private native bppDisableNative()Z
.end method

.method private native bppDisconnectNative()V
.end method

.method private native bppEnableNative()Z
.end method

.method private native bppGetPrinterAttrNative(Ljava/lang/String;I)V
.end method

.method private native bppPrintNative(Ljava/lang/String;Lcom/mediatek/bluetooth/bpp/PrintObject;)V
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupDataNative()V
.end method

.method private native disableServiceNative()V
.end method

.method private native enableServiceNative()Z
.end method

.method private native initializeDataNative()V
.end method

.method private onCallback(III[Ljava/lang/String;)V
    .locals 27
    .parameter "event"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "parameters"

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 587
    const-string v24, "BluetoothBppServer"

    const-string v25, "UN-KNOWN EVENT"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 396
    :pswitch_0
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_ENABLE_SUCCESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v11, 0x0

    .line 398
    .local v11, cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 403
    .end local v11           #cnfCode:I
    :pswitch_1
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_ENABLE_FAIL"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v11, -0x1

    .line 405
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 410
    .end local v11           #cnfCode:I
    :pswitch_2
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_DISABLE_SUCCESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v11, 0x0

    .line 412
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 417
    .end local v11           #cnfCode:I
    :pswitch_3
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_DISABLE_FAIL"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v11, -0x1

    .line 419
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 424
    .end local v11           #cnfCode:I
    :pswitch_4
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_OBEX_AUTHREQ"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/16 v24, 0x0

    aget-object v24, p4, v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 427
    const-string v24, "BluetoothBppServer"

    const-string v25, "UserID required"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 439
    :pswitch_5
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_CONNECT_SUCCESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v11, 0x0

    .line 441
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 446
    .end local v11           #cnfCode:I
    :pswitch_6
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_CONNECT_FAIL"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v11, -0x1

    .line 448
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 453
    .end local v11           #cnfCode:I
    :pswitch_7
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_DISCONNECT_SUCCESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v11, 0x0

    .line 455
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x9

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 460
    .end local v11           #cnfCode:I
    :pswitch_8
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_DISCONNECT_FAIL"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v11, -0x1

    .line 462
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x9

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 467
    .end local v11           #cnfCode:I
    :pswitch_9
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_CANCEL_SUCCESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v11, 0x0

    .line 469
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 474
    .end local v11           #cnfCode:I
    :pswitch_a
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_CANCEL_FAIL"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v11, -0x1

    .line 476
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 481
    .end local v11           #cnfCode:I
    :pswitch_b
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_GET_PRINT_ATTR_SUCCESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/16 v24, 0x0

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v22

    .line 484
    .local v22, sides:B
    const/16 v24, 0x1

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v16

    .line 485
    .local v16, orientations:B
    const/16 v24, 0x2

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v20

    .line 486
    .local v20, qualities:B
    const/16 v24, 0x3

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 487
    .local v14, max_numberup:I
    const/16 v24, 0x4

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 488
    .local v10, max_copies:I
    const/16 v24, 0x5

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 489
    .local v15, media_size_number:I
    const/16 v24, 0x6

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 492
    .local v19, printer_type:I
    const-string v24, "BluetoothBppServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sides: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\torientations: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\tqualities: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\tmax_numberup: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\tmax_copies: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\tmedia_size_number: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\tprinter_type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-array v8, v15, [Ljava/lang/String;

    .line 497
    .local v8, paperSize:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v15, :cond_2

    .line 499
    sget-object v24, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->MEDIASIZE:[Ljava/lang/String;

    add-int/lit8 v25, v12, 0x7

    aget-object v25, p4, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    aget-object v24, v24, v25

    aput-object v24, v8, v12

    .line 497
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 502
    :cond_2
    sget-object v24, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->SIDESETTING:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->translateBitMap(B[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, sidesSetting:[Ljava/lang/String;
    sget-object v24, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->ORIENTATION:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->translateBitMap(B[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, orientation:[Ljava/lang/String;
    sget-object v24, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->QUALITY:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->translateBitMap(B[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, qualitySetting:[Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_3

    .line 509
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v9, v0, [Ljava/lang/String;

    .line 510
    .local v9, paperPerSheet:[Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "1"

    aput-object v25, v9, v24

    .line 527
    :goto_2
    move/from16 v11, v19

    .line 528
    .restart local v11       #cnfCode:I
    new-instance v4, Lcom/mediatek/bluetooth/bpp/PrinterAttr;

    invoke-direct/range {v4 .. v10}, Lcom/mediatek/bluetooth/bpp/PrinterAttr;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 530
    .local v4, pAttr_obj:Lcom/mediatek/bluetooth/bpp/PrinterAttr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 511
    .end local v4           #pAttr_obj:Lcom/mediatek/bluetooth/bpp/PrinterAttr;
    .end local v9           #paperPerSheet:[Ljava/lang/String;
    .end local v11           #cnfCode:I
    :cond_3
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v14, v0, :cond_4

    .line 512
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v9, v0, [Ljava/lang/String;

    .line 513
    .restart local v9       #paperPerSheet:[Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "1"

    aput-object v25, v9, v24

    .line 514
    const/16 v24, 0x1

    const-string v25, "2"

    aput-object v25, v9, v24

    goto :goto_2

    .line 516
    .end local v9           #paperPerSheet:[Ljava/lang/String;
    :cond_4
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v9, v0, [Ljava/lang/String;

    .line 517
    .restart local v9       #paperPerSheet:[Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "1"

    aput-object v25, v9, v24

    .line 518
    const/16 v24, 0x1

    const-string v25, "2"

    aput-object v25, v9, v24

    .line 519
    const/16 v24, 0x2

    const-string v25, "4"

    aput-object v25, v9, v24

    goto :goto_2

    .line 535
    .end local v5           #sidesSetting:[Ljava/lang/String;
    .end local v6           #orientation:[Ljava/lang/String;
    .end local v7           #qualitySetting:[Ljava/lang/String;
    .end local v8           #paperSize:[Ljava/lang/String;
    .end local v9           #paperPerSheet:[Ljava/lang/String;
    .end local v10           #max_copies:I
    .end local v12           #i:I
    .end local v14           #max_numberup:I
    .end local v15           #media_size_number:I
    .end local v16           #orientations:B
    .end local v19           #printer_type:I
    .end local v20           #qualities:B
    .end local v22           #sides:B
    :pswitch_c
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_GET_PRINT_ATTR_FAIL"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v11, -0x1

    .line 539
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 544
    .end local v11           #cnfCode:I
    :pswitch_d
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_PROGRESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v24, 0x0

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 546
    .local v21, sentDataLen:I
    const/16 v24, 0x1

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 548
    .local v23, totalDataLen:I
    const-string v24, "BluetoothBppServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "current: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCurSentLength:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v24, "BluetoothBppServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "present: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mPreSentLength:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sput v21, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCurSentLength:I

    .line 551
    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 554
    :cond_5
    sget v24, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCurSentLength:I

    sget v25, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mPreSentLength:I

    sub-int v24, v24, v25

    sget v25, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mSObjLength:I

    div-int/lit8 v25, v25, 0x28

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 555
    sget v24, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCurSentLength:I

    sput v24, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mPreSentLength:I

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 564
    .end local v21           #sentDataLen:I
    .end local v23           #totalDataLen:I
    :pswitch_e
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_PRINT_STATUS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v24, 0x0

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 566
    .local v13, jobState:I
    const/16 v24, 0x1

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 567
    .local v17, printerState:I
    const/16 v24, 0x2

    aget-object v24, p4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 569
    .local v18, printerStateReason:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x6

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v18

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 574
    .end local v13           #jobState:I
    .end local v17           #printerState:I
    .end local v18           #printerStateReason:I
    :pswitch_f
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_PRINT_COMPLETE_SUCCESS"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v11, 0x0

    .line 576
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 581
    .end local v11           #cnfCode:I
    :pswitch_10
    const-string v24, "BluetoothBppServer"

    const-string v25, "BPP_PRINT_COMPLETE_FAIL"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v11, -0x1

    .line 583
    .restart local v11       #cnfCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private native startListenNative()Z
.end method

.method private native stopListenNative()Z
.end method

.method private translateBitMap(B[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "bitmap"
    .parameter "defaultentries"

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, ele_number:B
    const/4 v1, 0x0

    .local v1, i:B
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 600
    const/16 v4, 0x80

    ushr-int/2addr v4, v1

    int-to-byte v3, v4

    .line 601
    .local v3, mask:B
    and-int v4, p1, v3

    if-eqz v4, :cond_0

    .line 602
    add-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    .line 598
    :cond_0
    add-int/lit8 v4, v1, 0x1

    int-to-byte v1, v4

    goto :goto_0

    .line 605
    .end local v3           #mask:B
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    .line 606
    .local v2, listEntries:[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 607
    aget-object v4, p2, v1

    aput-object v4, v2, v1

    .line 608
    const-string v4, "BluetoothBppServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listEntries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    add-int/lit8 v4, v1, 0x1

    int-to-byte v1, v4

    goto :goto_1

    .line 610
    :cond_2
    return-object v2
.end method


# virtual methods
.method public bppAuthRsp(Lcom/mediatek/bluetooth/bpp/AuthInfo;)V
    .locals 2
    .parameter "authReply"

    .prologue
    .line 374
    const-string v0, "BluetoothBppServer"

    const-string v1, "+bppAuthRsp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppAuthRspNative(Lcom/mediatek/bluetooth/bpp/AuthInfo;)V

    .line 383
    :goto_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "-bppAuthRsp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 381
    :cond_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "mNativeData has been cleaned"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bppDisable()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "BluetoothBppServer"

    const-string v1, "+bppDisable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisableNative()Z

    .line 258
    :goto_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "-bppDisable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 255
    :cond_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "mNativeData has been cleaned"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bppDisconnect()V
    .locals 2

    .prologue
    .line 357
    const-string v0, "BluetoothBppServer"

    const-string v1, "+bppDisconnect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnectNative()V

    .line 366
    :goto_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "-bppDisconnect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 364
    :cond_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "mNativeData has been cleaned"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bppGetPrinterAttr(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "bitmask_attr"

    .prologue
    .line 287
    const-string v0, "BluetoothBppServer"

    const-string v1, "+bppGetPrinterAttr"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppGetPrinterAttrNative(Ljava/lang/String;I)V

    .line 296
    :goto_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "-bppGetPrinterAttr"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 294
    :cond_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "mNativeData has been cleaned"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bppPrint(Ljava/lang/String;Lcom/mediatek/bluetooth/bpp/PrintObject;)V
    .locals 6
    .parameter "address"
    .parameter "print_object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 301
    const-string v0, "BluetoothBppServer"

    const-string v1, "+bppPrint"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput v4, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    .line 304
    const-string v0, "BluetoothBppServer"

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mimeTable:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mimeTable:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->MimeType:Ljava/lang/String;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mimeTable:[Ljava/lang/String;

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "BluetoothBppServer"

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mimeTable:[Ljava/lang/String;

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_0
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    .line 312
    iget-object v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->ObjectSize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nObjectSize:I

    .line 313
    sput v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mPreSentLength:I

    .line 314
    sput v4, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mCurSentLength:I

    .line 315
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nObjectSize:I

    sput v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mSObjLength:I

    .line 316
    iget-object v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->NumberUp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nNumberUp:I

    .line 318
    iput v4, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nSides:I

    .line 319
    :goto_1
    iget-object v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->Sides:Ljava/lang/String;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->SIDESETTING:[Ljava/lang/String;

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nSides:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nSides:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nSides:I

    goto :goto_1

    .line 321
    :cond_1
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nSides:I

    shl-int v0, v5, v0

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nSides:I

    .line 323
    iput v4, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nOrient:I

    .line 324
    :goto_2
    iget-object v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->Orient:Ljava/lang/String;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->ORIENTATION:[Ljava/lang/String;

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nOrient:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nOrient:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nOrient:I

    goto :goto_2

    .line 326
    :cond_2
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nOrient:I

    shl-int v0, v5, v0

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nOrient:I

    .line 328
    iput v4, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nQuality:I

    .line 329
    :goto_3
    iget-object v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->Quality:Ljava/lang/String;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->QUALITY:[Ljava/lang/String;

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nQuality:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nQuality:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nQuality:I

    goto :goto_3

    .line 331
    :cond_3
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nQuality:I

    shl-int v0, v5, v0

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nQuality:I

    .line 333
    iput v4, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMediaSize:I

    .line 334
    :goto_4
    iget-object v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->MediaSize:Ljava/lang/String;

    sget-object v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->MEDIASIZE:[Ljava/lang/String;

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMediaSize:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    iget v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMediaSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMediaSize:I

    goto :goto_4

    .line 338
    :cond_4
    const-string v0, "BluetoothBppServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->DirName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tfileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->FileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tfileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nObjectSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMimeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tsideSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nSides:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tsheetSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nNumberUp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\torientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nOrient:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tquality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmediasize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/bluetooth/bpp/PrintObject;->nMediaSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    if-eqz v0, :cond_5

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppPrintNative(Ljava/lang/String;Lcom/mediatek/bluetooth/bpp/PrintObject;)V

    .line 352
    :goto_5
    const-string v0, "BluetoothBppServer"

    const-string v1, "-bppPrint"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 350
    :cond_5
    const-string v0, "BluetoothBppServer"

    const-string v1, "mNativeData has been cleaned"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public disableService()V
    .locals 3

    .prologue
    .line 263
    const-string v1, "BluetoothBppServer"

    const-string v2, "+disableService"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    if-eqz v1, :cond_0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mListener:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;->shutdown()V

    .line 269
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mListener:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mListener:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->disableServiceNative()V

    .line 275
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->cleanupDataNative()V

    .line 282
    :goto_1
    const-string v1, "BluetoothBppServer"

    const-string v2, "-disableService"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothBppServer"

    const-string v2, "BppServer mListener close error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "BluetoothBppServer"

    const-string v2, "mNativeData has been cleaned"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 218
    const-string v0, "BluetoothBppServer"

    const-string v1, "+enable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mNativeData:I

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->initializeDataNative()V

    .line 228
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->enableServiceNative()Z

    .line 229
    new-instance v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mListener:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;

    .line 230
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->mListener:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer$BppListener;->startup()V

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppEnableNative()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    const-string v0, "BluetoothBppServer"

    const-string v1, "-1 enable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    .line 243
    :goto_1
    return v0

    .line 234
    :cond_0
    const-string v0, "BluetoothBppServer"

    const-string v1, "mNativeData has been initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_1
    const-string v0, "BluetoothBppServer"

    const-string v1, "-enable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onBppDisable(I)V
    .locals 0
    .parameter "cnfCode"

    .prologue
    .line 186
    return-void
.end method
