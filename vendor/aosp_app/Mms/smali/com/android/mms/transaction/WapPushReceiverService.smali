.class public Lcom/android/mms/transaction/WapPushReceiverService;
.super Landroid/app/Service;
.source "WapPushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/WapPush"

.field public static sSmsSent:Z


# instance fields
.field private mResultCode:I

.field private mSending:Z

.field private mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/transaction/WapPushReceiverService;->sSmsSent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/WapPushReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/WapPushReceiverService;->handleWapPushReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/WapPushReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushReceiverService;->handleBootCompleted()V

    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    .prologue
    .line 295
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/transaction/WapPushMessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 297
    return-void
.end method

.method private handleWapPushReceived(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 207
    const-string v8, "Mms/WapPush"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleWapPushReceived: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, mimeType:Ljava/lang/String;
    const-string v8, "data"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 215
    .local v0, intentData:[B
    const-string v8, "address"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, sender:Ljava/lang/String;
    const-string v8, "service_center"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, serviceCenter:Ljava/lang/String;
    const-string v8, "simId"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 222
    .local v7, simId:I
    const-string v8, "Mms/WapPush"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleWapPushReceived: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 224
    :cond_0
    const-string v8, "Mms/WapPush"

    const-string v9, "handleWapPushReceived: sender or service center is null!"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->dealCTDeviceLowNotification(Landroid/content/Context;)V

    .line 235
    :cond_2
    invoke-static {v2}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;->createParser(Ljava/lang/String;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;

    move-result-object v3

    .line 236
    .local v3, parser:Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
    const/4 v4, 0x0

    .line 237
    .local v4, pushMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    const/4 v1, 0x0

    .line 239
    .local v1, manager:Lcom/mediatek/wappush/WapPushManager;
    if-eqz v3, :cond_4

    .line 240
    invoke-virtual {v3, v0}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;->parseData([B)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;

    move-result-object v4

    .line 245
    :goto_1
    if-eqz v4, :cond_5

    .line 246
    const-string v8, "Mms/WapPush"

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v4}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->type()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mediatek/wappush/WapPushManager;->createManager(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/wappush/WapPushManager;

    move-result-object v1

    .line 252
    :goto_2
    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {v4, v5}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->setSenderAddr(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4, v6}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->setServiceCenterAddr(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v4, v7}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->setSimId(I)V

    .line 258
    invoke-virtual {v1, v4}, Lcom/mediatek/wappush/WapPushManager;->handleIncoming(Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;)V

    .line 261
    :cond_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getWapPushRecycler()Lcom/android/mms/util/Recycler$WapPushRecycler;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    goto :goto_0

    .line 242
    :cond_4
    const-string v8, "Mms/WapPush"

    const-string v9, "Wap Push message parse create error!"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_5
    const-string v8, "Mms/WapPush"

    const-string v9, "Wap Push Message parseData error!"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private registerForServiceStateChanges()V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushReceiverService;->unRegisterForServiceStateChanges()V

    .line 303
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v2, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const-string v2, "Mms/WapPush"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/WapPushReceiver;->getInstance()Lcom/android/mms/transaction/WapPushReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    return-void
.end method

.method private static translateResultCode(I)Ljava/lang/String;
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 139
    packed-switch p0, :pswitch_data_0

    .line 143
    const-string v0, "Unknown error code"

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    const-string v0, "Activity.RESULT_OK"

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 4

    .prologue
    .line 313
    const-string v2, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "Mms/WapPush"

    const-string v3, "unRegisterForServiceStateChanges"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 318
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/WapPushReceiver;->getInstance()Lcom/android/mms/transaction/WapPushReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/WapPush"

    const-string v3, "IllegalArgumentException!"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/WapPush"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 114
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 117
    new-instance v1, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/WapPushReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 154
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_0

    const-string v2, "result"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mResultCode:I

    .line 126
    iget v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mResultCode:I

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "Mms/WapPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mResultCode:I

    invoke-static {v3}, Lcom/android/mms/transaction/WapPushReceiverService;->translateResultCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 133
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    const/4 v1, 0x2

    return v1
.end method
