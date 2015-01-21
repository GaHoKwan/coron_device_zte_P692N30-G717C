.class Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;
.super Landroid/os/Handler;
.source "BluetoothMapServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/BluetoothMapServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRegSrvCnt:I

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->mRegSrvCnt:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 148
    const/4 v4, 0x0

    .line 150
    .local v4, result:I
    const/4 v9, 0x0

    .line 151
    .local v9, device:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "Unrecognized message"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 156
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/16 v2, 0xb

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setState(I)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;I)V

    .line 157
    const/16 v1, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/16 v2, 0xb

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->onStateChanged(I)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$200(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;I)V

    goto :goto_0

    .line 162
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/InstanceManager;->removeAllInstances()V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/16 v2, 0xd

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setState(I)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/16 v2, 0xd

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->onStateChanged(I)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$200(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->deinitServer()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$400(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    goto :goto_0

    .line 168
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 169
    .local v13, instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-ltz v1, :cond_1

    if-eqz v13, :cond_1

    .line 170
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/Instance;->onInstanceRegistered()V

    goto :goto_0

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->removeInstance(I)V

    goto :goto_0

    .line 176
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 177
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    if-eqz v13, :cond_2

    .line 178
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/Instance;->onInstanceDeregistered()V

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->removeInstance(I)V

    goto/16 :goto_0

    .line 183
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 184
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 185
    if-eqz v13, :cond_3

    .line 186
    invoke-virtual {v13, v9}, Lcom/mediatek/bluetooth/map/Instance;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v9, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->createNotification(ILandroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    .line 188
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "invalid instance ID is received"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 198
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 199
    if-eqz v13, :cond_5

    .line 200
    invoke-virtual {v13, v9}, Lcom/mediatek/bluetooth/map/Instance;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 204
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/mediatek/bluetooth/map/InstanceManager;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->removeNotification(ILandroid/bluetooth/BluetoothDevice;)V

    .line 207
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 208
    const/16 v1, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Z)V

    goto/16 :goto_0

    .line 202
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid instance ID is received:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 214
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    if-nez v13, :cond_7

    .line 215
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "SetFolderRequest or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;

    .line 219
    .local v20, setFolderReq:Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/Instance;->setFolder(Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;)I

    move-result v4

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setFolderResponse(Ljava/lang/String;II)Z
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$900(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 223
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    .end local v20           #setFolderReq:Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 224
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    if-nez v13, :cond_9

    .line 225
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_9
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 229
    .local v7, addr:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/Instance;->updateInbox()I

    move-result v4

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->updateInboxResponse(Ljava/lang/String;II)Z
    invoke-static {v1, v7, v2, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 234
    .end local v7           #addr:Ljava/lang/String;
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 235
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_a

    if-nez v13, :cond_b

    .line 236
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;

    .line 240
    .local v17, msgListReq:Lcom/mediatek/bluetooth/map/cache/MessageListRequest;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/Instance;->getMessagelist(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;)Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    move-result-object v18

    .line 241
    .local v18, msgListRsp:Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 242
    .restart local v7       #addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    move-object/from16 v0, v18

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getMessageListResponse(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/MessageListObject;)Z
    invoke-static {v1, v7, v2, v3, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1100(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/MessageListObject;)Z

    goto/16 :goto_0

    .line 247
    .end local v7           #addr:Ljava/lang/String;
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    .end local v17           #msgListReq:Lcom/mediatek/bluetooth/map/cache/MessageListRequest;
    .end local v18           #msgListRsp:Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 248
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_c

    if-nez v13, :cond_d

    .line 249
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_d
    const/4 v10, 0x0

    .line 253
    .local v10, fodlerlistrsp:[Lcom/mediatek/bluetooth/map/cache/FolderListObject;
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;

    .line 254
    .local v11, folderListReq:Lcom/mediatek/bluetooth/map/cache/FolderListRequest;
    invoke-virtual {v11}, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 255
    .restart local v7       #addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 256
    if-eqz v9, :cond_e

    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 257
    invoke-virtual {v13, v11}, Lcom/mediatek/bluetooth/map/Instance;->getFolderlist(Lcom/mediatek/bluetooth/map/cache/FolderListRequest;)[Lcom/mediatek/bluetooth/map/cache/FolderListObject;

    move-result-object v10

    .line 259
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getFolderListResponse(Ljava/lang/String;II[Lcom/mediatek/bluetooth/map/cache/FolderListObject;)Z
    invoke-static {v1, v7, v2, v3, v10}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1200(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II[Lcom/mediatek/bluetooth/map/cache/FolderListObject;)Z

    goto/16 :goto_0

    .line 262
    .end local v7           #addr:Ljava/lang/String;
    .end local v10           #fodlerlistrsp:[Lcom/mediatek/bluetooth/map/cache/FolderListObject;
    .end local v11           #folderListReq:Lcom/mediatek/bluetooth/map/cache/FolderListRequest;
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 263
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_f

    if-nez v13, :cond_10

    .line 264
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_10
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/mediatek/bluetooth/map/cache/MessageRequest;

    .line 268
    .local v15, messagereq:Lcom/mediatek/bluetooth/map/cache/MessageRequest;
    invoke-virtual {v13, v15}, Lcom/mediatek/bluetooth/map/Instance;->getMessage(Lcom/mediatek/bluetooth/map/cache/MessageRequest;)Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    move-result-object v16

    .line 269
    .local v16, messagersp:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    if-eqz v16, :cond_11

    .line 270
    const/4 v4, 0x1

    .line 272
    :cond_11
    invoke-virtual {v15}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 273
    .restart local v7       #addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v16

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->getMessageResponse(Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    invoke-static {v1, v7, v2, v4, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;IILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z

    goto/16 :goto_0

    .line 279
    .end local v7           #addr:Ljava/lang/String;
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    .end local v15           #messagereq:Lcom/mediatek/bluetooth/map/cache/MessageRequest;
    .end local v16           #messagersp:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 280
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_12

    if-nez v13, :cond_13

    .line 281
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_13
    const/4 v4, 0x1

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setNotificationRegResponse(Ljava/lang/String;II)Z
    invoke-static {v2, v1, v3, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1400(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 288
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 289
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_14

    if-nez v13, :cond_15

    .line 290
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mEventManager:Lcom/mediatek/bluetooth/map/EventReportManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/EventReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/EventReportManager;->onEventSentCompleted()V

    goto/16 :goto_0

    .line 297
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_16

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->getDeviceState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v21

    .line 303
    .local v21, state:I
    const/4 v1, 0x7

    move/from16 v0, v21

    if-ne v0, v1, :cond_17

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mNotification:Lcom/mediatek/bluetooth/map/BluetoothMapNotification;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/BluetoothMapNotification;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v9, v3}, Lcom/mediatek/bluetooth/map/BluetoothMapNotification;->createNotification(ILandroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    .line 306
    :cond_17
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_18

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->authorizeResponse(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v1, v9, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .line 309
    :cond_18
    const/4 v1, 0x6

    move/from16 v0, v21

    if-ne v0, v1, :cond_19

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "the device is authorizing"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->authorizeResponse(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v1, v9, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1600(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .line 318
    .end local v21           #state:I
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 319
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    if-nez v13, :cond_1b

    .line 320
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_1b
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/Instance;->getBMessageObject()Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    move-result-object v8

    .line 324
    .local v8, bMessageobject:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    invoke-virtual {v8}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->reset()V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->parseMessage(Ljava/lang/String;ILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    invoke-static {v2, v1, v3, v8}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;ILcom/mediatek/bluetooth/map/cache/BMessageObject;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 326
    const/4 v4, 0x0

    .line 339
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v8}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getHandle()J

    move-result-wide v5

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->sendMessageResponse(Ljava/lang/String;IIJ)Z
    invoke-static/range {v1 .. v6}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;IIJ)Z

    goto/16 :goto_0

    .line 330
    :cond_1c
    invoke-virtual {v13, v8}, Lcom/mediatek/bluetooth/map/Instance;->pushMessage(Lcom/mediatek/bluetooth/map/cache/BMessageObject;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 332
    const/4 v4, 0x1

    goto :goto_2

    .line 336
    :cond_1d
    const/4 v4, 0x0

    goto :goto_2

    .line 358
    .end local v8           #bMessageobject:Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceById(I)Lcom/mediatek/bluetooth/map/Instance;

    move-result-object v13

    .line 359
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1e

    if-nez v13, :cond_1f

    .line 360
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "address is null or instance is null"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;

    .line 364
    .local v19, req:Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/mediatek/bluetooth/map/Instance;->setMessageStatus(Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 365
    const/4 v4, 0x1

    .line 369
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 370
    .restart local v7       #addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->setMessageStatusResponse(Ljava/lang/String;II)Z
    invoke-static {v1, v7, v2, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1900(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 367
    .end local v7           #addr:Ljava/lang/String;
    :cond_20
    const/4 v4, 0x0

    goto :goto_3

    .line 373
    .end local v13           #instance:Lcom/mediatek/bluetooth/map/Instance;
    .end local v19           #req:Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/ArrayList;

    move-result-object v14

    .line 375
    .local v14, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_21

    .line 376
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/map/Instance;->deregisterCallback()V

    .line 375
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 378
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Z)V

    goto/16 :goto_0

    .line 383
    .end local v12           #i:I
    .end local v14           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    :sswitch_11
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_22

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "fail to set up mns connection"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mManager:Lcom/mediatek/bluetooth/map/InstanceManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$300(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/InstanceManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/mediatek/bluetooth/map/InstanceManager;->getInstanceByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/ArrayList;

    move-result-object v14

    .line 388
    .restart local v14       #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 389
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/map/Instance;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mEventManager:Lcom/mediatek/bluetooth/map/EventReportManager;
    invoke-static {v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$1500(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)Lcom/mediatek/bluetooth/map/EventReportManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/map/Instance;->registerCallback(Lcom/mediatek/bluetooth/map/Instance$Listener;)V

    .line 388
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 394
    .end local v12           #i:I
    .end local v14           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Instance;>;"
    :sswitch_12
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isPhoneRadioReady()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->registerServer()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$2000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)V

    goto/16 :goto_0

    .line 397
    :cond_23
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->mRegSrvCnt:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->mRegSrvCnt:I

    .line 398
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->mRegSrvCnt:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_24

    .line 399
    const/16 v1, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 401
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const-string v2, "Network is still not ready after 10s, so phone radio maybe is in error"

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$000(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/mediatek/bluetooth/map/Instance;

    .line 407
    .restart local v13       #instance:Lcom/mediatek/bluetooth/map/Instance;
    if-eqz v13, :cond_0

    .line 408
    invoke-virtual {v13}, Lcom/mediatek/bluetooth/map/Instance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/mediatek/bluetooth/map/Instance;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    #getter for: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->mState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$700(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/BluetoothMapServerService$1;->this$0:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->disable(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapServerService;->access$800(Lcom/mediatek/bluetooth/map/BluetoothMapServerService;Z)V

    goto/16 :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x64 -> :sswitch_12
        0x65 -> :sswitch_13
    .end sparse-switch
.end method
