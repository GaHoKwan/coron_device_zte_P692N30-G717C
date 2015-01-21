.class public Lcom/mediatek/bluetooth/map/BluetoothMapServerService;
.super Landroid/app/Service;
.source "BluetoothMapServerService.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/EventChannel;


# static fields
.field private static final SERVICE_ENABLE:Ljava/lang/String; = "map server enable setting"


# instance fields
.field private final DISCONNECT_INSTANCE_DELAY_DURATION:I

.field private final FAIL:I

.field private final MAP_DISCONNECT_INSTANCE_TIMEOUT:I

.field private final MAP_REGISTER_SERVER:I

.field private final MAP_SERVER_AUTHORIZE_IND:I

.field private final MAP_SERVER_CONNECT_IND:I

.field private final MAP_SERVER_DEREGISTER_CNF:I

.field private final MAP_SERVER_DISABLE_CNF:I

.field private final MAP_SERVER_DISCONNECT_CNF:I

.field private final MAP_SERVER_DISCONNECT_IND:I

.field private final MAP_SERVER_ENABLE_CNF:I

.field private final MAP_SERVER_GET_FOLDER_LIST:I

.field private final MAP_SERVER_GET_MESSAGE:I

.field private final MAP_SERVER_GET_MESSAGE_LIST:I

.field private final MAP_SERVER_MNS_CONNECT_CNF:I

.field private final MAP_SERVER_MNS_DISCONNCET_CNF:I

.field private final MAP_SERVER_PUSH_MESSAGE:I

.field private final MAP_SERVER_REGISTER_CNF:I

.field private final MAP_SERVER_SEND_REPORT_CNF:I

.field private final MAP_SERVER_SET_FOLDER:I

.field private final MAP_SERVER_SET_MESSAGE_STATUS:I

.field private final MAP_SERVER_SET_NOTIFICATION:I

.field private final MAP_SERVER_UPDATE_INBOX:I

.field private final PENDING:I

.field private final REGISTER_SERVER_DELAY_DURATION:I

.field private final SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBinder:Landroid/bluetooth/IBluetoothMap$Stub;

.field private mContext:Landroid/content/Context;

.field private mEventManager:Lcom/mediatek/bluetooth/map/EventReportManager;

.field private mForceToDeinit:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInit:Z

.field private mInstance:Lcom/mediatek/bluetooth/map/Instance;

.field private mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

.field private final mMapServerCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeData:I

.field private mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingBinder:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1135
    const-string v0, "extmap_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->classInitNative()V

    .line 1137
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    const-string v0, "BluetoothMapServerService"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->TAG:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_ENABLE_CNF:I

    .line 93
    iput v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_DISABLE_CNF:I

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_REGISTER_CNF:I

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_DEREGISTER_CNF:I

    .line 96
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_CONNECT_IND:I

    .line 97
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_DISCONNECT_IND:I

    .line 98
    const/4 v0, 0x6

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_DISCONNECT_CNF:I

    .line 99
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_SET_FOLDER:I

    .line 100
    const/16 v0, 0x8

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_UPDATE_INBOX:I

    .line 101
    const/16 v0, 0x9

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_GET_MESSAGE_LIST:I

    .line 102
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_GET_FOLDER_LIST:I

    .line 103
    const/16 v0, 0xb

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_GET_MESSAGE:I

    .line 104
    const/16 v0, 0xc

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_SET_NOTIFICATION:I

    .line 105
    const/16 v0, 0xd

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_SEND_REPORT_CNF:I

    .line 106
    const/16 v0, 0xe

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_AUTHORIZE_IND:I

    .line 107
    const/16 v0, 0xf

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_PUSH_MESSAGE:I

    .line 108
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_SET_MESSAGE_STATUS:I

    .line 109
    const/16 v0, 0x11

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_MNS_DISCONNCET_CNF:I

    .line 110
    const/16 v0, 0x12

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_SERVER_MNS_CONNECT_CNF:I

    .line 111
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_REGISTER_SERVER:I

    .line 113
    const/16 v0, 0x65

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->MAP_DISCONNECT_INSTANCE_TIMEOUT:I

    .line 115
    iput v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->REGISTER_SERVER_DELAY_DURATION:I

    .line 116
    iput v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->DISCONNECT_INSTANCE_DELAY_DURATION:I

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mInit:Z

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mForceToDeinit:Z

    .line 138
    iput v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->SUCCESS:I

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->FAIL:I

    .line 140
    iput v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->PENDING:I

    .line 142
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mHandler:Landroid/os/Handler;

    .line 422
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$2;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 936
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;

    .line 939
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$3;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mSettingBinder:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;

    .line 985
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$4;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mBinder:Landroid/bluetooth/IBluetoothMap$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->updateInboxResponse(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/MessageListObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getMessageListResponse(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/MessageListObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II[Lcom/mediatek/bluetooth/map/cache/FolderListObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getFolderListResponse(Ljava/lang/String;II[Lcom/mediatek/bluetooth/map/cache/FolderListObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getMessageResponse(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setNotificationRegResponse(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/EventReportManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mEventManager:Lcom/mediatek/bluetooth/map/EventReportManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->authorizeResponse(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;ILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->parseMessage(Ljava/lang/String;ILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;IIJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->sendMessageResponse(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setMessageStatusResponse(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->registerServer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->clearAuthorizingDevices()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->clearService()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->initService()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->enable()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->deinitServer()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setFolderResponse(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized authorizeResponse(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5
    .parameter "device"
    .parameter "accept"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 631
    monitor-enter p0

    const/4 v1, 0x0

    .line 633
    .local v1, ret:Z
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorizeResponse: accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 636
    :cond_0
    if-ne p2, v0, :cond_1

    .line 638
    .local v0, result:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->removeNotification(ILandroid/bluetooth/BluetoothDevice;)V

    .line 640
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->authorizeResponseNative(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    const/4 v1, 0x1

    .line 646
    .end local v0           #result:I
    :goto_1
    monitor-exit p0

    return v1

    :cond_1
    move v0, v2

    .line 636
    goto :goto_0

    .line 643
    :cond_2
    :try_start_1
    const-string v2, "MAP service has not been initialized"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    const/4 v1, 0x0

    goto :goto_1

    .line 631
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native authorizeResponseNative(Ljava/lang/String;I)I
.end method

.method private static native classInitNative()V
.end method

.method private clearAuthorizingDevices()V
    .locals 4

    .prologue
    .line 650
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getAuthoringDevices()Ljava/util/HashSet;

    move-result-object v0

    .line 651
    .local v0, devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 652
    .local v1, iterator:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->authorizeResponse(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 655
    :cond_0
    return-void
.end method

.method private clearService()V
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mForceToDeinit:Z

    .line 1076
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable()V

    .line 1081
    :goto_0
    return-void

    .line 1079
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->deinitServer()V

    goto :goto_0
.end method

.method private native deinitNative()V
.end method

.method private deinitServer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1064
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mForceToDeinit:Z

    if-nez v0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mForceToDeinit:Z

    .line 1068
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mInit:Z

    if-eqz v0, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->deinitNative()V

    .line 1071
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mInit:Z

    goto :goto_0
.end method

.method private declared-synchronized deregisterInstance(Lcom/mediatek/bluetooth/map/Instance;)Z
    .locals 4
    .parameter "instance"

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v0

    .line 617
    .local v0, id:I
    const/4 v1, 0x0

    .line 618
    .local v1, ret:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deregisterInstance: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 619
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 620
    :cond_0
    const-string v2, "fail to deregister instance"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    const/4 v2, 0x0

    .line 628
    :goto_0
    monitor-exit p0

    return v2

    .line 627
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->deregisterInstanceNative(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    const/4 v2, 0x1

    goto :goto_0

    .line 616
    .end local v0           #id:I
    .end local v1           #ret:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native deregisterInstanceNative(I)I
.end method

.method private disable()V
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable(Z)V

    .line 1095
    return-void
.end method

.method private disable(Z)V
    .locals 6
    .parameter "checkState"

    .prologue
    const/16 v5, 0xc

    .line 1097
    const/4 v0, 0x0

    .line 1100
    .local v0, index:I
    const-string v3, "disableServer()"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 1101
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 1103
    :cond_0
    const-string v3, "the serive is disabling or disabled"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 1104
    iget v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->onStateChanged(I)V

    .line 1123
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setState(I)V

    .line 1109
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnectServer()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1114
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/map/InstanceManager;->getAllInstances()Ljava/util/ArrayList;

    move-result-object v2

    .line 1115
    .local v2, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1116
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    .line 1117
    .local v1, instance:Lcom/mediatek/bluetooth/map/Instance;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->deregisterInstance(Lcom/mediatek/bluetooth/map/Instance;)Z

    .line 1115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1120
    .end local v1           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :cond_3
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->reset()V

    .line 1122
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disableNative()I

    goto :goto_0
.end method

.method private native disableNative()I
.end method

.method private declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v2, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/ArrayList;

    move-result-object v1

    .line 659
    .local v1, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 660
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnectMasNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_0
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 658
    .end local v0           #i:I
    .end local v1           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native disconnectMasNative(I)I
.end method

.method private declared-synchronized disconnectMasSession(Lcom/mediatek/bluetooth/map/Instance;)I
    .locals 2
    .parameter "instance"

    .prologue
    .line 697
    monitor-enter p0

    const/4 v0, -0x1

    .line 698
    .local v0, result:I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    .line 709
    :goto_0
    monitor-exit p0

    return v1

    .line 703
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnectMasNative(I)I

    move-result v0

    .line 704
    if-nez v0, :cond_2

    .line 705
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/map/Instance;->onDeviceDisconnecting(Landroid/bluetooth/BluetoothDevice;)V

    .line 706
    const/4 v1, 0x1

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/map/Instance;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    const/4 v1, 0x0

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized disconnectMnsSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, address:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectMnsSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 716
    if-nez v0, :cond_0

    .line 717
    const-string v1, "the address is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :goto_0
    monitor-exit p0

    return-void

    .line 720
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnectMnsSessionNative(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 714
    .end local v0           #address:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native disconnectMnsSessionNative(Ljava/lang/String;)I
.end method

.method private declared-synchronized disconnectServer()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 667
    monitor-enter p0

    :try_start_0
    const-string v2, "disconnectServer()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getAllInstances()Ljava/util/ArrayList;

    move-result-object v1

    .line 671
    .local v1, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->clearAuthorizingDevices()V

    .line 673
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 693
    :goto_0
    monitor-exit p0

    return v2

    .line 676
    :cond_1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 677
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Instance;

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disconnectMasSession(Lcom/mediatek/bluetooth/map/Instance;)I

    move-result v2

    if-ne v3, v2, :cond_2

    .line 679
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v3

    .line 681
    goto :goto_0

    .line 676
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 687
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 688
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Instance;->isMnsConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 689
    goto :goto_0

    .line 687
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    .line 693
    goto :goto_0

    .line 667
    .end local v0           #index:I
    .end local v1           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native disconnectServerNative()I
.end method

.method private enable()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 1083
    const-string v0, "enableServer()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 1084
    iget v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    if-eq v0, v2, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to enable because the service state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->onStateChanged(I)V

    .line 1092
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->enableNative()I

    .line 1090
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setState(I)V

    goto :goto_0
.end method

.method private native enableNative()I
.end method

.method private getFolderCache(I)Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;
    .locals 2
    .parameter "masId"

    .prologue
    .line 563
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v1, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v0

    .line 564
    .local v0, instance:Lcom/mediatek/bluetooth/map/Instance;
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Instance;->getFolderReqCache()Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;

    move-result-object v1

    .line 567
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFolderListCache(I)Lcom/mediatek/bluetooth/map/cache/FolderListRequest;
    .locals 2
    .parameter "masId"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v1, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v0

    .line 554
    .local v0, instance:Lcom/mediatek/bluetooth/map/Instance;
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Instance;->getFolderListReqCache()Lcom/mediatek/bluetooth/map/cache/FolderListRequest;

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getFolderListResponse(Ljava/lang/String;II[Lcom/mediatek/bluetooth/map/cache/FolderListObject;)Z
    .locals 4
    .parameter "address"
    .parameter "masId"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFolderListResponse: address->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", masid ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 795
    if-nez p4, :cond_0

    .line 796
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v1, object:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/cache/FolderListObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mediatek/bluetooth/map/cache/FolderListObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lcom/mediatek/bluetooth/map/cache/FolderListObject;

    move-object p4, v0

    .line 799
    .end local v1           #object:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/cache/FolderListObject;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getFolderListResponseNative(Ljava/lang/String;II[Lcom/mediatek/bluetooth/map/cache/FolderListObject;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    const/4 v2, 0x1

    .line 805
    :goto_0
    monitor-exit p0

    return v2

    .line 804
    :cond_1
    :try_start_1
    const-string v2, "MAP service has not been initialized"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    const/4 v2, 0x0

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native getFolderListResponseNative(Ljava/lang/String;II[Lcom/mediatek/bluetooth/map/cache/FolderListObject;)I
.end method

.method private getMessageListCache(I)Lcom/mediatek/bluetooth/map/cache/MessageListRequest;
    .locals 2
    .parameter "masId"

    .prologue
    .line 543
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v1, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v0

    .line 544
    .local v0, instance:Lcom/mediatek/bluetooth/map/Instance;
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Instance;->getMessageListCache()Lcom/mediatek/bluetooth/map/cache/MessageListRequest;

    move-result-object v1

    .line 547
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getMessageListResponse(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/MessageListObject;)Z
    .locals 2
    .parameter "address"
    .parameter "masId"
    .parameter "result"
    .parameter "messageList"

    .prologue
    .line 809
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageListResponse: address->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",masId->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",result->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 810
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getMessageListResponseNative(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/MessageListObject;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    const/4 v0, 0x1

    .line 815
    :goto_0
    monitor-exit p0

    return v0

    .line 814
    :cond_0
    :try_start_1
    const-string v0, "MAP service has not been initialized"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 815
    const/4 v0, 0x0

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native getMessageListResponseNative(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/MessageListObject;)I
.end method

.method private getMessageRequestCache(I)Lcom/mediatek/bluetooth/map/cache/MessageRequest;
    .locals 2
    .parameter "masId"

    .prologue
    .line 571
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v1, p1}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v0

    .line 572
    .local v0, instance:Lcom/mediatek/bluetooth/map/Instance;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Instance;->getMessageReqCache()Lcom/mediatek/bluetooth/map/cache/MessageRequest;

    move-result-object v1

    .line 575
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getMessageResponse(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 2
    .parameter "address"
    .parameter "masId"
    .parameter "result"
    .parameter "bMessage"

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageResponse: address->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",masId->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",result->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getMessageResponseNative(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/BMessageObject;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    const/4 v0, 0x1

    .line 826
    :goto_0
    monitor-exit p0

    return v0

    .line 825
    :cond_0
    :try_start_1
    const-string v0, "MAP service has not been initialized"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    const/4 v0, 0x0

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native getMessageResponseNative(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/BMessageObject;)I
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 1131
    iget v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    return v0
.end method

.method private getStatusSwitchCache()Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;
    .locals 1

    .prologue
    .line 580
    const-string v0, "getStatusSwitchCache()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 581
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;-><init>()V

    return-object v0
.end method

.method private native initNative()Z
.end method

.method private initService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1045
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mInit:Z

    if-eqz v2, :cond_0

    .line 1046
    const-string v2, "[MAP]the service has been initialized"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 1061
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->initNative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1050
    const/16 v2, 0xd

    iput v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    .line 1052
    const-string v2, "BluetoothMapServerService"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1053
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "map server enable setting"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1054
    .local v0, orignalSetting:Z
    if-eqz v0, :cond_1

    .line 1055
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->enable()V

    .line 1060
    .end local v0           #orignalSetting:Z
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mInit:Z

    goto :goto_0

    .line 1058
    :cond_2
    const/16 v2, 0xe

    iput v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    goto :goto_1
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 1125
    iget v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1126
    const/4 v0, 0x1

    .line 1128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1038
    if-eqz p1, :cond_0

    .line 1039
    const-string v0, "BluetoothMapServerService"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    return-void
.end method

.method private onRequestOrIndicationReceived(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "object"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 866
    return-void
.end method

.method private onStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 919
    const-string v2, "onStateChanged()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 920
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_0

    .line 921
    const-string v2, "mMapServerCallback is null, no need to call back"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 933
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 925
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetooth/map/IBluetoothMapSettingCallback;->onStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 932
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mMapServerCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 928
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private declared-synchronized parseMessage(Ljava/lang/String;ILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 3
    .parameter "address"
    .parameter "masId"
    .parameter "bMessage"

    .prologue
    const/4 v0, 0x0

    .line 765
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseMessage: address->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",masId->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 767
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->parseMessageNative(Ljava/lang/String;ILcom/mediatek/bluetooth/map/cache/BMessageObject;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 778
    :goto_0
    monitor-exit p0

    return v0

    .line 774
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 777
    :cond_1
    :try_start_1
    const-string v1, "MAP service has not been initialized"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native parseMessageNative(Ljava/lang/String;ILcom/mediatek/bluetooth/map/cache/BMessageObject;)I
.end method

.method private declared-synchronized registerInstance(Lcom/mediatek/bluetooth/map/Instance;)Z
    .locals 7
    .parameter "instance"

    .prologue
    const/4 v4, 0x0

    .line 587
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getInstanceId()I

    move-result v0

    .line 588
    .local v0, id:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getName()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, masName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getType()I

    move-result v2

    .line 590
    .local v2, messageType:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/Instance;->getRootPath()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, rootPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerInstance():id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 596
    if-ltz v0, :cond_0

    const/16 v5, 0xff

    if-le v0, v5, :cond_1

    .line 597
    :cond_0
    const-string v5, "the id is invalid"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :goto_0
    monitor-exit p0

    return v4

    .line 601
    :cond_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    .line 602
    :cond_2
    :try_start_1
    const-string v5, "error, the mas name or root path is null"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 587
    .end local v0           #id:I
    .end local v1           #masName:Ljava/lang/String;
    .end local v2           #messageType:I
    .end local v3           #rootPath:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 605
    .restart local v0       #id:I
    .restart local v1       #masName:Ljava/lang/String;
    .restart local v2       #messageType:I
    .restart local v3       #rootPath:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 606
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->registerInstanceNative(ILjava/lang/String;ILjava/lang/String;)I

    .line 607
    const/4 v4, 0x1

    goto :goto_0

    .line 610
    :cond_4
    const-string v5, "MAP service has not been initialized"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private native registerInstanceNative(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private declared-synchronized registerServer()V
    .locals 3

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    const-string v2, "registerServer()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    const-string v2, "map service has not been initialized"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    monitor-exit p0

    return-void

    .line 532
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    invoke-virtual {v2, p0}, Lcom/mediatek/bluetooth/map/InstanceManager;->generateInstances(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 533
    .local v1, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 535
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Instance;

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->registerInstance(Lcom/mediatek/bluetooth/map/Instance;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    .end local v0           #index:I
    .end local v1           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized sendMessageResponse(Ljava/lang/String;IIJ)Z
    .locals 2
    .parameter "address"
    .parameter "masId"
    .parameter "result"
    .parameter "handle"

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessageResponse: address->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",masId->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 785
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->sendMessageResponseNative(Ljava/lang/String;IIJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    const/4 v0, 0x1

    .line 790
    :goto_0
    monitor-exit p0

    return v0

    .line 789
    :cond_0
    :try_start_1
    const-string v0, "MAP service has not been initialized"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    const/4 v0, 0x0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native sendMessageResponseNative(Ljava/lang/String;IIJ)I
.end method

.method private native sendReportNative(Ljava/lang/String;Lcom/mediatek/bluetooth/map/cache/EventReport;)I
.end method

.method private declared-synchronized setFolderResponse(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "masId"
    .parameter "result"

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFolderResponse: address->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",masId->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",result->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 842
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 843
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setFolderResponseNative(Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    const/4 v0, 0x1

    .line 847
    :goto_0
    monitor-exit p0

    return v0

    .line 846
    :cond_0
    :try_start_1
    const-string v0, "MAP service has not been initialized"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    const/4 v0, 0x0

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native setFolderResponseNative(Ljava/lang/String;II)I
.end method

.method private declared-synchronized setMessageStatusResponse(Ljava/lang/String;II)Z
    .locals 1
    .parameter "address"
    .parameter "masId"
    .parameter "result"

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    const-string v0, "setMessageStatusResponse: "

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 831
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setMessageStatusResponseNative(Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    const/4 v0, 0x1

    .line 836
    :goto_0
    monitor-exit p0

    return v0

    .line 835
    :cond_0
    :try_start_1
    const-string v0, "MAP service has not been initialized"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    const/4 v0, 0x0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native setMessageStatusResponseNative(Ljava/lang/String;II)I
.end method

.method private native setNotifRegResponseNative(Ljava/lang/String;II)I
.end method

.method private declared-synchronized setNotificationReg(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "masId"
    .parameter "result"

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNotificationReg: address->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",masId->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",result->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 853
    iget v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 854
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setNotifRegResponseNative(Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    const/4 v0, 0x1

    .line 858
    :goto_0
    monitor-exit p0

    return v0

    .line 857
    :cond_0
    :try_start_1
    const-string v0, "MAP service has not been initialized or device is null"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    const/4 v0, 0x0

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setNotificationRegResponse(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "masId"
    .parameter "result"

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNotificationRegResponse(): result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 755
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setNotifRegResponseNative(Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    const/4 v0, 0x1

    .line 759
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setState(I)V
    .locals 8
    .parameter "state"

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xb

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setState: old state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",new state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 870
    const/4 v3, 0x0

    .line 871
    .local v3, shouldSendIntent:Z
    iget v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    .line 872
    .local v2, oldState:I
    move v1, p1

    .line 874
    .local v1, newState:I
    packed-switch v2, :pswitch_data_0

    .line 905
    const-string v4, "unexpected state"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 907
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 908
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 909
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const-string v4, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v5, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_MAP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 911
    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 916
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 876
    :pswitch_0
    if-ne v1, v6, :cond_2

    .line 877
    iput v6, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    .line 878
    const/4 v3, 0x1

    goto :goto_0

    .line 880
    :cond_2
    const-string v4, "error"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :pswitch_1
    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    .line 886
    iput v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    .line 887
    const/4 v3, 0x1

    goto :goto_0

    .line 892
    :pswitch_2
    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    .line 893
    iput v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    .line 894
    const/4 v3, 0x1

    goto :goto_0

    .line 898
    :pswitch_3
    if-eq v1, v6, :cond_3

    if-ne v1, v7, :cond_0

    .line 900
    :cond_3
    iput v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I

    .line 901
    const/4 v3, 0x1

    goto :goto_0

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized updateInboxResponse(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "masId"
    .parameter "result"

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInboxResponse(): result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->updateInboxResponseNative(Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    const/4 v0, 0x1

    .line 748
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native updateInboxResponseNative(Ljava/lang/String;II)I
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onbind(): action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 498
    const-class v1, Landroid/bluetooth/IBluetoothMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mBinder:Landroid/bluetooth/IBluetoothMap$Stub;

    .line 503
    :goto_0
    return-object v1

    .line 500
    :cond_0
    const-class v1, Lcom/mediatek/bluetooth/map/IBluetoothMapSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mSettingBinder:Lcom/mediatek/bluetooth/map/IBluetoothMapSetting$Stub;

    goto :goto_0

    .line 503
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 469
    const-string v1, "MAP: onCreate..."

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 475
    invoke-static {p0}, Lcom/mediatek/bluetooth/map/InstanceManager;->getDefaultManager(Landroid/content/Context;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;

    .line 476
    new-instance v1, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    .line 477
    new-instance v1, Lcom/mediatek/bluetooth/map/EventReportManager;

    invoke-direct {v1, p0}, Lcom/mediatek/bluetooth/map/EventReportManager;-><init>(Lcom/mediatek/bluetooth/map/EventChannel;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mEventManager:Lcom/mediatek/bluetooth/map/EventReportManager;

    .line 478
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 480
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapService.action.AUTHORIZE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapService.action.DISCONNECT_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 514
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->clearService()V

    .line 516
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 520
    const-string v0, "onLowMemory: sytem may try to tighten belt"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 489
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 490
    .local v0, ret:I
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->initService()V

    .line 491
    return v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 507
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable()V

    .line 509
    return-void
.end method

.method public declared-synchronized sendReport(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)Z
    .locals 4
    .parameter "device"
    .parameter "report"

    .prologue
    const/4 v1, 0x0

    .line 725
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReport(): name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V

    .line 728
    if-nez v0, :cond_0

    .line 729
    const-string v2, "the address is null"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :goto_0
    monitor-exit p0

    return v1

    .line 732
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    invoke-direct {p0, v0, p2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->sendReportNative(Ljava/lang/String;Lcom/mediatek/bluetooth/map/cache/EventReport;)I

    .line 734
    const/4 v1, 0x1

    goto :goto_0

    .line 736
    :cond_1
    const-string v2, "MAP service has not been initialized"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 725
    .end local v0           #address:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
