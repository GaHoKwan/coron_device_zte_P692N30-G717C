.class public Lcom/android/mms/transaction/CBMessageReceiverService;
.super Landroid/app/Service;
.source "CBMessageReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final CLASS_ZERO_BODY_KEY:Ljava/lang/String; = "CLASS_ZERO_BODY"

.field private static final DEFAULT_SIM_ID:I = 0x1

.field private static final MESSAGE_URI:Landroid/net/Uri; = null

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CBMessageReceiverService"


# instance fields
.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/transaction/CBMessageReceiverService;->MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 105
    new-instance v0, Lcom/android/mms/transaction/CBMessageReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/CBMessageReceiverService$1;-><init>(Lcom/android/mms/transaction/CBMessageReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/CBMessageReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CBMessageReceiverService;->handleCBMessageReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private getCBContentValue(Landroid/telephony/SmsCbMessage;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 4
    .parameter "msg"
    .parameter "body"
    .parameter "simId"

    .prologue
    .line 257
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sim_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    const-string v1, "channel_id"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v1, "body"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-object v0
.end method

.method private handleCBMessageReceived(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 187
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 188
    const-string v6, "Mms/Txn"

    const-string v7, "Intents.getMessagesFromIntent return null !!"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SmsCbMessage;

    .line 193
    .local v1, message:Landroid/telephony/SmsCbMessage;
    if-nez v1, :cond_2

    .line 194
    const-string v6, "Mms/Txn"

    const-string v7, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    const/4 v4, -0x1

    .line 199
    .local v4, simId:I
    const-string v6, "simId"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 200
    .local v5, slotId:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v3

    .line 201
    .local v3, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v3, :cond_5

    .line 202
    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v6

    long-to-int v4, v6

    .line 208
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->dealCTDeviceLowNotification(Landroid/content/Context;)V

    .line 213
    :cond_3
    invoke-direct {p0, p0, v1, v4}, Lcom/android/mms/transaction/CBMessageReceiverService;->insertMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;I)Landroid/net/Uri;

    move-result-object v2

    .line 214
    .local v2, messageUri:Landroid/net/Uri;
    const-string v6, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    const-string v6, "CBMessageReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSmsReceived messageUri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_4
    if-eqz v2, :cond_0

    .line 222
    const/4 v6, 0x1

    invoke-static {p0, v6, v4}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicatorGemini(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 204
    .end local v2           #messageUri:Landroid/net/Uri;
    :cond_5
    const-string v6, "Mms/Txn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCBMessageReceived:SIMInfo is null for slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private insertMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;I)Landroid/net/Uri;
    .locals 1
    .parameter "context"
    .parameter "msg"
    .parameter "simId"

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/CBMessageReceiverService;->storeCBMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private storeCBMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;I)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "msg"
    .parameter "simId"

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, body:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 250
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, p2, v0, p3}, Lcom/android/mms/transaction/CBMessageReceiverService;->getCBContentValue(Landroid/telephony/SmsCbMessage;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 251
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CB message body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v3, Lcom/android/mms/transaction/CBMessageReceiverService;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CBMessageReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 122
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 125
    iget-object v1, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/CBMessageReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;

    .line 128
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 144
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, 0x0

    .line 132
    if-eqz p1, :cond_0

    const-string v2, "result"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mResultCode:I

    .line 134
    iget-object v1, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 136
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/android/mms/transaction/CBMessageReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    const/4 v1, 0x2

    return v1
.end method
