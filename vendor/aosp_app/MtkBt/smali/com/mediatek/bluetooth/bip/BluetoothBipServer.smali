.class public Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
.super Ljava/lang/Object;
.source "BluetoothBipServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;
    }
.end annotation


# static fields
.field private static final BIP_INITIATOR_CANCEL_FAIL:I = 0x14

.field private static final BIP_INITIATOR_CANCEL_SUCCESS:I = 0x13

.field private static final BIP_INITIATOR_CONNECT_FAIL:I = 0x6

.field private static final BIP_INITIATOR_CONNECT_SUCCESS:I = 0x5

.field private static final BIP_INITIATOR_DISABLE_FAIL:I = 0x3

.field private static final BIP_INITIATOR_DISABLE_SUCCESS:I = 0x2

.field private static final BIP_INITIATOR_DISCONNECT_FAIL:I = 0x12

.field private static final BIP_INITIATOR_DISCONNECT_SUCCESS:I = 0x11

.field private static final BIP_INITIATOR_ENABLE_FAIL:I = 0x1

.field private static final BIP_INITIATOR_ENABLE_SUCCESS:I = 0x0

.field private static final BIP_INITIATOR_GET_CAPABILITY_FAIL:I = 0x8

.field private static final BIP_INITIATOR_GET_CAPABILITY_SUCCESS:I = 0x7

.field private static final BIP_INITIATOR_IMAGE_PUSH_FAIL:I = 0xc

.field private static final BIP_INITIATOR_IMAGE_PUSH_START:I = 0x9

.field private static final BIP_INITIATOR_IMAGE_PUSH_SUCCESS:I = 0xb

.field private static final BIP_INITIATOR_OBEX_AUTHREQ:I = 0x4

.field private static final BIP_INITIATOR_PROGRESS:I = 0xa

.field private static final BIP_INITIATOR_THUMBNAIL_PUSH_FAIL:I = 0x10

.field private static final BIP_INITIATOR_THUMBNAIL_PUSH_START:I = 0xe

.field private static final BIP_INITIATOR_THUMBNAIL_PUSH_SUCCESS:I = 0xf

.field private static final BIP_INITIATOR_THUMBNAIL_REQ:I = 0xd

.field private static final BIP_RESPONDER_ACCESS_REQ:I = 0x1d

.field private static final BIP_RESPONDER_AUTH_REQ:I = 0x19

.field private static final BIP_RESPONDER_CAPABILITY_RES_SUCCESS:I = 0x1f

.field private static final BIP_RESPONDER_CONNECT_FAIL:I = 0x1c

.field private static final BIP_RESPONDER_CONNECT_SUCCESS:I = 0x1b

.field private static final BIP_RESPONDER_DISABLE_FAIL:I = 0x18

.field private static final BIP_RESPONDER_DISABLE_SUCCESS:I = 0x17

.field private static final BIP_RESPONDER_DISCONNECT_FAIL:I = 0x28

.field private static final BIP_RESPONDER_DISCONNECT_SUCCESS:I = 0x27

.field private static final BIP_RESPONDER_ENABLE_FAIL:I = 0x16

.field private static final BIP_RESPONDER_ENABLE_SUCCESS:I = 0x15

.field private static final BIP_RESPONDER_GET_CAPABILITY_REQ:I = 0x1e

.field private static final BIP_RESPONDER_IMAGE_RECEIVE_FAIL:I = 0x23

.field private static final BIP_RESPONDER_IMAGE_RECEIVE_START:I = 0x20

.field private static final BIP_RESPONDER_IMAGE_RECEIVE_SUCCESS:I = 0x22

.field private static final BIP_RESPONDER_OBEX_AUTHREQ:I = 0x1a

.field private static final BIP_RESPONDER_PROGRESS:I = 0x21

.field private static final BIP_RESPONDER_THUMBNAIL_RECEIVE_FAIL:I = 0x26

.field private static final BIP_RESPONDER_THUMBNAIL_RECEIVE_START:I = 0x24

.field private static final BIP_RESPONDER_THUMBNAIL_RECEIVE_SUCCESS:I = 0x25

.field private static final TAG:Ljava/lang/String; = "BluetoothBipServer"

.field private static mCurReceiveLength:I

.field private static mCurSentLength:I

.field private static mPreReceiveLength:I

.field private static mPreSentLength:I

.field private static mRObjLength:I

.field private static mSObjLength:I


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mListener:Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;

.field private mNativeData:I

.field private mPath:Ljava/lang/String;

.field private mReceivedFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 170
    sput v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreReceiveLength:I

    .line 171
    sput v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    .line 172
    sput v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    .line 173
    sput v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreSentLength:I

    .line 174
    sput v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    .line 175
    sput v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mSObjLength:I

    .line 189
    const-string v0, "extbip_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->classInitNative()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mNativeData:I

    .line 134
    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPath:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mReceivedFileName:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/bip/BluetoothBipServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->startListenNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/bip/BluetoothBipServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->stopListenNative()Z

    move-result v0

    return v0
.end method

.method private native bipAuthRspNative(Lcom/mediatek/bluetooth/bip/AuthInfo;Z)Z
.end method

.method private native bipiDisableNative()Z
.end method

.method private native bipiDisconnectNative(Ljava/lang/String;)Z
.end method

.method private native bipiEnableNative()Z
.end method

.method private native bipiGetCapabilityReqNative(Ljava/lang/String;)Z
.end method

.method private native bipiPushImageNative(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z
.end method

.method private native bipiPushThumbnailNative(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z
.end method

.method private native biprAccessRspNative(IILjava/lang/String;)Z
.end method

.method private native biprAuthorizeRspNative(I)Z
.end method

.method private native biprDisableNative()Z
.end method

.method private native biprDisconnectNative()Z
.end method

.method private native biprEnableNative(Ljava/lang/String;)Z
.end method

.method private native biprGetCapabilityRspNative(ILcom/mediatek/bluetooth/bip/Capability;)Z
.end method

.method private native biprObjRename(Ljava/lang/String;)V
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
    .locals 10
    .parameter "event"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "parameters"

    .prologue
    .line 374
    packed-switch p1, :pswitch_data_0

    .line 767
    const-string v5, "BluetoothBipServer"

    const-string v6, "UN-KNOWN EVENT"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 378
    :pswitch_0
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_ENABLE_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 385
    .end local v1           #cnfCode:I
    :pswitch_1
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_ENABLE_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, -0x1

    .line 387
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 392
    .end local v1           #cnfCode:I
    :pswitch_2
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_DISABLE_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v1, 0x0

    .line 394
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 399
    .end local v1           #cnfCode:I
    :pswitch_3
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_DISABLE_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, -0x1

    .line 401
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 406
    .end local v1           #cnfCode:I
    :pswitch_4
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_OBEX_AUTHREQ"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    const-string v5, "BluetoothBipServer"

    const-string v6, "UserID required"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 416
    :pswitch_5
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_CONNECT_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v1, 0x0

    .line 418
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 423
    .end local v1           #cnfCode:I
    :pswitch_6
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_CONNECT_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, -0x1

    .line 425
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 430
    .end local v1           #cnfCode:I
    :pswitch_7
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_GET_CAPABILITY_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v0, Lcom/mediatek/bluetooth/bip/Capability;

    const/16 v5, 0x8

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/mediatek/bluetooth/bip/Capability;-><init>(I)V

    .line 434
    .local v0, capaObj:Lcom/mediatek/bluetooth/bip/Capability;
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    iput-object v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Version:Ljava/lang/String;

    .line 435
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    iput-object v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Encoding:Ljava/lang/String;

    .line 436
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x2

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Width:I

    .line 437
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x3

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Height:I

    .line 438
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x4

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Width2:I

    .line 439
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x5

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Height2:I

    .line 440
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x6

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Size:I

    .line 441
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v6, 0x7

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Transform:I

    .line 458
    const/16 v5, 0x8

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->NumImageFormats:I

    .line 470
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->NumImageFormats:I

    if-ge v3, v5, :cond_2

    .line 472
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x6

    add-int/lit8 v6, v6, 0x9

    aget-object v6, p4, v6

    iput-object v6, v5, Lcom/mediatek/bluetooth/bip/ImageFormat;->Encoding:Ljava/lang/String;

    .line 473
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x6

    add-int/lit8 v6, v6, 0x9

    add-int/lit8 v6, v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    .line 474
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x6

    add-int/lit8 v6, v6, 0x9

    add-int/lit8 v6, v6, 0x2

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    .line 475
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x6

    add-int/lit8 v6, v6, 0x9

    add-int/lit8 v6, v6, 0x3

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    .line 476
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x6

    add-int/lit8 v6, v6, 0x9

    add-int/lit8 v6, v6, 0x4

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    .line 477
    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x6

    add-int/lit8 v6, v6, 0x9

    add-int/lit8 v6, v6, 0x5

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/bluetooth/bip/ImageFormat;->Size:I

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 488
    :cond_2
    const/4 v1, 0x0

    .line 489
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 495
    .end local v0           #capaObj:Lcom/mediatek/bluetooth/bip/Capability;
    .end local v1           #cnfCode:I
    .end local v3           #i:I
    :pswitch_8
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_GET_CAPABILITY_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v1, -0x1

    .line 497
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 502
    .end local v1           #cnfCode:I
    :pswitch_9
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_IMAGE_PUSH_START"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 508
    :pswitch_a
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_PROGRESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    .line 511
    sget v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mSObjLength:I

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    sub-int/2addr v5, v6

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mSObjLength:I

    div-int/lit8 v6, v6, 0x64

    if-gt v5, v6, :cond_3

    .line 512
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x7

    const/4 v7, 0x0

    sget v8, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 514
    :cond_3
    sget v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreSentLength:I

    sub-int/2addr v5, v6

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mSObjLength:I

    div-int/lit8 v6, v6, 0x28

    if-le v5, v6, :cond_0

    .line 515
    sget v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    sput v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreSentLength:I

    .line 516
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/4 v6, 0x7

    const/4 v7, 0x0

    sget v8, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 523
    :pswitch_b
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_IMAGE_PUSH_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image Handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v1, 0x0

    .line 528
    .restart local v1       #cnfCode:I
    const/4 v2, -0x1

    .line 529
    .local v2, handle:I
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const-string v6, "[0-9]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 530
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 532
    :cond_4
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 537
    .end local v1           #cnfCode:I
    .end local v2           #handle:I
    :pswitch_c
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_IMAGE_PUSH_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v1, -0x1

    .line 539
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 544
    .end local v1           #cnfCode:I
    :pswitch_d
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_THUMBNAIL_REQ"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image Handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 552
    :pswitch_e
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_THUMBNAIL_PUSH_START"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 558
    :pswitch_f
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_THUMBNAIL_PUSH_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x0

    .line 560
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 565
    .end local v1           #cnfCode:I
    :pswitch_10
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_THUMBNAIL_PUSH_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v1, -0x1

    .line 567
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 572
    .end local v1           #cnfCode:I
    :pswitch_11
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_DISCONNECT_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, 0x0

    .line 574
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 579
    .end local v1           #cnfCode:I
    :pswitch_12
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_DISCONNECT_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v1, -0x1

    .line 581
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 586
    .end local v1           #cnfCode:I
    :pswitch_13
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_CANCEL_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    .line 588
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 593
    .end local v1           #cnfCode:I
    :pswitch_14
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_INITIATOR_CANCEL_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, -0x1

    .line 595
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 608
    .end local v1           #cnfCode:I
    :pswitch_15
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_ENABLE_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v1, 0x0

    .line 610
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 615
    .end local v1           #cnfCode:I
    :pswitch_16
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_ENABLE_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v1, -0x1

    .line 617
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 622
    .end local v1           #cnfCode:I
    :pswitch_17
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_DISABLE_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v1, 0x0

    .line 624
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x16

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 629
    .end local v1           #cnfCode:I
    :pswitch_18
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_DISABLE_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v1, -0x1

    .line 631
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x16

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 636
    .end local v1           #cnfCode:I
    :pswitch_19
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_AUTH_REQ"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteDevName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteBtAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 644
    :pswitch_1a
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_OBEX_AUTHREQ"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 647
    const-string v5, "BluetoothBipServer"

    const-string v6, "UserID required"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_5
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 654
    :pswitch_1b
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_CONNECT_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v1, 0x0

    .line 656
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x19

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 661
    .end local v1           #cnfCode:I
    :pswitch_1c
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_CONNECT_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v1, -0x1

    .line 663
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x19

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 668
    .end local v1           #cnfCode:I
    :pswitch_1d
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_GET_CAPABILITY_REQ"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1a

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 674
    :pswitch_1e
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_CAPABILITY_RES_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v1, 0x0

    .line 676
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 681
    .end local v1           #cnfCode:I
    :pswitch_1f
    const/4 v5, 0x0

    aget-object v5, p4, v5

    iput-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mReceivedFileName:Ljava/lang/String;

    .line 682
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_ACCESS_REQ"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v5, 0x0

    sput v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreReceiveLength:I

    .line 686
    const/4 v5, 0x0

    sput v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    .line 687
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    .line 688
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    sget v8, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    const/4 v9, 0x0

    aget-object v9, p4, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 693
    :pswitch_20
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_IMAGE_RECEIVE_START"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1d

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 699
    :pswitch_21
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_PROGRESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 703
    .local v4, objLength:I
    sget v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    .line 704
    sput v4, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    .line 707
    :cond_6
    const-string v5, "BluetoothBipServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiving Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    .line 709
    sget v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    sub-int/2addr v5, v6

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    div-int/lit8 v6, v6, 0x64

    if-gt v5, v6, :cond_7

    .line 710
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1e

    sget v7, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    sget v8, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 712
    :cond_7
    sget v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreReceiveLength:I

    sub-int/2addr v5, v6

    sget v6, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    div-int/lit8 v6, v6, 0x28

    if-le v5, v6, :cond_0

    .line 713
    sget v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    sput v5, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreReceiveLength:I

    .line 714
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1e

    sget v7, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mRObjLength:I

    sget v8, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurReceiveLength:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 720
    .end local v4           #objLength:I
    :pswitch_22
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_IMAGE_RECEIVE_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v1, 0x0

    .line 722
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 727
    .end local v1           #cnfCode:I
    :pswitch_23
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_IMAGE_RECEIVE_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v1, -0x1

    .line 729
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 734
    .end local v1           #cnfCode:I
    :pswitch_24
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_THUMBNAIL_RECEIVE_START"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 740
    :pswitch_25
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_THUMBNAIL_RECEIVE_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v1, 0x0

    .line 742
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 747
    .end local v1           #cnfCode:I
    :pswitch_26
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_THUMBNAIL_RECEIVE_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v1, -0x1

    .line 749
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 754
    .end local v1           #cnfCode:I
    :pswitch_27
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_DISCONNECT_SUCCESS"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v1, 0x0

    .line 756
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x22

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 761
    .end local v1           #cnfCode:I
    :pswitch_28
    const-string v5, "BluetoothBipServer"

    const-string v6, "BIP_RESPONDER_DISCONNECT_FAIL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v1, -0x1

    .line 763
    .restart local v1       #cnfCode:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCallback:Landroid/os/Handler;

    const/16 v6, 0x22

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 374
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1f
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method private native startListenNative()Z
.end method

.method private native stopListenNative()Z
.end method


# virtual methods
.method public bipAuthRsp(Lcom/mediatek/bluetooth/bip/AuthInfo;Z)Z
    .locals 2
    .parameter "authInfo"
    .parameter "isResponder"

    .prologue
    .line 301
    const-string v0, "BluetoothBipServer"

    const-string v1, "+bipAuthRspNative"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipAuthRspNative(Lcom/mediatek/bluetooth/bip/AuthInfo;Z)Z

    .line 303
    const-string v0, "BluetoothBipServer"

    const-string v1, "-bipAuthRspNative"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public bipiDisable()Z
    .locals 2

    .prologue
    .line 256
    const-string v0, "BluetoothBipServer"

    const-string v1, "+bipiDisable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisableNative()Z

    .line 258
    const-string v0, "BluetoothBipServer"

    const-string v1, "-bipiDisable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public bipiDisconnect(Ljava/lang/String;)Z
    .locals 2
    .parameter "btaddr"

    .prologue
    .line 270
    const-string v0, "BluetoothBipServer"

    const-string v1, "+bipiDisconnect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisconnectNative(Ljava/lang/String;)Z

    .line 275
    :goto_0
    const-string v0, "BluetoothBipServer"

    const-string v1, "-bipiDisconnect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_0
    const-string v0, "BluetoothBipServer"

    const-string v1, "-Empty btaddr"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bipiEnable()Z
    .locals 2

    .prologue
    .line 249
    const-string v0, "BluetoothBipServer"

    const-string v1, "+bipiEnable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiEnableNative()Z

    .line 251
    const-string v0, "BluetoothBipServer"

    const-string v1, "-bipiEnable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public bipiGetCapabilityReq(Ljava/lang/String;)Z
    .locals 2
    .parameter "btaddr"

    .prologue
    .line 263
    const-string v0, "BluetoothBipServer"

    const-string v1, "+bipiGetCapabilityReq"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiGetCapabilityReqNative(Ljava/lang/String;)Z

    .line 265
    const-string v0, "BluetoothBipServer"

    const-string v1, "-bipiGetCapabilityReq"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public bipiPushImage(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z
    .locals 3
    .parameter "btaddr"
    .parameter "object"

    .prologue
    const/4 v2, 0x0

    .line 280
    const-string v0, "BluetoothBipServer"

    const-string v1, "+bipiPushImage"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v0, p2, Lcom/mediatek/bluetooth/bip/BipImage;->ObjectSize:I

    sput v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mSObjLength:I

    .line 283
    sput v2, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPreSentLength:I

    .line 284
    sput v2, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mCurSentLength:I

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiPushImageNative(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z

    .line 287
    const-string v0, "BluetoothBipServer"

    const-string v1, "-bipiPushImage"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public bipiPushThumbnail(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z
    .locals 2
    .parameter "btaddr"
    .parameter "object"

    .prologue
    .line 292
    const-string v0, "BluetoothBipServer"

    const-string v1, "+bipiPushThumbnail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiPushThumbnailNative(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z

    .line 294
    const-string v0, "BluetoothBipServer"

    const-string v1, "-bipiPushThumbnail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public biprAccessRsp(IILjava/lang/String;)Z
    .locals 5
    .parameter "reply"
    .parameter "thumbnail"
    .parameter "objectPath"

    .prologue
    .line 349
    const-string v2, "BluetoothBipServer"

    const-string v3, "+biprAccessRsp"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mReceivedFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, tempPath:Ljava/lang/String;
    const-string v2, "BluetoothBipServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempPath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {v1}, Lcom/mediatek/bluetooth/util/SystemUtils;->createNewFileForSaving(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 354
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mReceivedFileName:Ljava/lang/String;

    .line 357
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mReceivedFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprObjRename(Ljava/lang/String;)V

    .line 359
    :cond_0
    const-string v2, "BluetoothBipServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceivedFileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mReceivedFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprAccessRspNative(IILjava/lang/String;)Z

    .line 362
    const-string v2, "BluetoothBipServer"

    const-string v3, "-biprAccessRsp"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v2, 0x1

    return v2
.end method

.method public biprAuthorizeRsp(I)Z
    .locals 2
    .parameter "authorize"

    .prologue
    .line 333
    const-string v0, "BluetoothBipServer"

    const-string v1, "+biprAuthorizeRsp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprAuthorizeRspNative(I)Z

    .line 335
    const-string v0, "BluetoothBipServer"

    const-string v1, "-biprAuthorizeRsp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public biprDisable()Z
    .locals 2

    .prologue
    .line 317
    const-string v0, "BluetoothBipServer"

    const-string v1, "+biprDisable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisableNative()Z

    .line 319
    const-string v0, "BluetoothBipServer"

    const-string v1, "-biprDisable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public biprDisconnect()Z
    .locals 2

    .prologue
    .line 325
    const-string v0, "BluetoothBipServer"

    const-string v1, "+biprDisconnect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnectNative()Z

    .line 327
    const-string v0, "BluetoothBipServer"

    const-string v1, "-biprDisconnect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public biprEnable(Ljava/lang/String;)Z
    .locals 2
    .parameter "rootPath"

    .prologue
    .line 310
    const-string v0, "BluetoothBipServer"

    const-string v1, "+biprEnable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprEnableNative(Ljava/lang/String;)Z

    .line 312
    const-string v0, "BluetoothBipServer"

    const-string v1, "-biprEnable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public biprGetCapabilityRsp(ILcom/mediatek/bluetooth/bip/Capability;)Z
    .locals 2
    .parameter "reply"
    .parameter "capability"

    .prologue
    .line 341
    const-string v0, "BluetoothBipServer"

    const-string v1, "+biprGetCapabilityRsp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprGetCapabilityRspNative(ILcom/mediatek/bluetooth/bip/Capability;)Z

    .line 343
    const-string v0, "BluetoothBipServer"

    const-string v1, "-biprGetCapabilityRsp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 221
    const-string v1, "BluetoothBipServer"

    const-string v2, "+disable"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mNativeData:I

    if-eqz v1, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mListener:Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;->shutdown()V

    .line 228
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mListener:Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mListener:Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->disableServiceNative()V

    .line 234
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->cleanupDataNative()V

    .line 240
    :goto_1
    const-string v1, "BluetoothBipServer"

    const-string v2, "-disable"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothBipServer"

    const-string v2, "BipServer mListener close error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "BluetoothBipServer"

    const-string v2, "mNativeData has been cleaned"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 202
    const-string v0, "BluetoothBipServer"

    const-string v1, "+enable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mNativeData:I

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->initializeDataNative()V

    .line 207
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->enableServiceNative()Z

    .line 208
    new-instance v0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;-><init>(Lcom/mediatek/bluetooth/bip/BluetoothBipServer;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mListener:Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;

    .line 209
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mListener:Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer$BipListener;->startup()V

    .line 215
    :goto_0
    const-string v0, "BluetoothBipServer"

    const-string v1, "-enable"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_0
    const-string v0, "BluetoothBipServer"

    const-string v1, "mNativeData has been initialized"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRecvPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 773
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->mPath:Ljava/lang/String;

    .line 774
    return-void
.end method
