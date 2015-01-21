.class final Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerEx;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManagerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManagerEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManagerEx;Lcom/android/phone/PhoneInterfaceManagerEx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 212
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 215
    .local v2, request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    const/16 v5, 0xc

    invoke-virtual {p0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 217
    .local v1, onCompleted:Landroid/os/Message;
    iget-object v5, v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 220
    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    .line 221
    .local v3, sca:Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    iget v4, v3, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    .line 224
    .local v4, simId:I
    const-string v5, "PhoneInterfaceManagerEx"

    const-string v6, "[sca get sc gemini"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManagerEx;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5, v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSmscAddressGemini(Landroid/os/Message;I)V

    goto :goto_0

    .line 234
    .end local v1           #onCompleted:Landroid/os/Message;
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v3           #sca:Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    .end local v4           #simId:I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 235
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 237
    .restart local v2       #request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 238
    const-string v5, "PhoneInterfaceManagerEx"

    const-string v6, "[sca get result"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v5, v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 245
    :goto_1
    monitor-enter v2

    .line 246
    :try_start_0
    const-string v5, "PhoneInterfaceManagerEx"

    const-string v6, "[sca notify sleep thread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 241
    :cond_1
    const-string v5, "PhoneInterfaceManagerEx"

    const-string v6, "[sca Fail to get sc address"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 252
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 253
    .restart local v2       #request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    const/16 v5, 0xe

    invoke-virtual {p0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 255
    .restart local v1       #onCompleted:Landroid/os/Message;
    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    .line 256
    .restart local v3       #sca:Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    iget v5, v3, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 260
    const-string v5, "PhoneInterfaceManagerEx"

    const-string v6, "[sca set sc gemini"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManagerEx;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v6, v3, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;

    iget v7, v3, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setSmscAddressGemini(Ljava/lang/String;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 270
    .end local v1           #onCompleted:Landroid/os/Message;
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    .end local v3           #sca:Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    .line 272
    .restart local v2       #request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 273
    const-string v5, "PhoneInterfaceManagerEx"

    const-string v6, "[sca Fail: set sc address"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_2
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v2, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    .line 279
    monitor-enter v2

    .line 280
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 281
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 275
    :cond_2
    const-string v5, "PhoneInterfaceManagerEx"

    const-string v6, "[sca Done: set sc address"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
