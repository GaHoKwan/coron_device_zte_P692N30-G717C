.class Lcom/mediatek/FMRadio/FMRadioEngineer$1;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 143
    const-string v5, "FMRadioEngineer"

    const-string v8, ">>> FMRadioEMActivity.onServiceConnected"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    check-cast p2, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;->getService()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$002(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;

    .line 145
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v5

    if-nez v5, :cond_0

    .line 146
    const-string v5, "FMRadioEngineer"

    const-string v6, "Error: null interface"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 267
    :goto_0
    const-string v5, "FMRadioEngineer"

    const-string v6, "<<< FMRadioEMActivity.onServiceConnected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 150
    :cond_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isServiceInit()Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$100(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    const-string v5, "FMRadioEngineer"

    const-string v6, "FM service is not init."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$200(Lcom/mediatek/FMRadio/FMRadioEngineer;)I

    move-result v6

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->initService(I)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;I)V

    .line 163
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V
    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$400(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    .line 164
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/os/Bundle;)V

    .line 165
    .local v4, thread:Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    const/4 v6, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$502(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 166
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 179
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    const-string v5, "FMRadioEngineer"

    const-string v6, "Exception: Thread.sleep."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v4           #thread:Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;
    :cond_1
    const-string v5, "FMRadioEngineer"

    const-string v8, "FM service is already init."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isDeviceOpen()Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 192
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->getFrequency()I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$700(Lcom/mediatek/FMRadio/FMRadioEngineer;)I

    move-result v2

    .line 193
    .local v2, iFreq:I
    const/16 v5, 0x438

    if-gt v2, v5, :cond_2

    const/16 v5, 0x36b

    if-ge v2, v5, :cond_5

    .line 195
    :cond_2
    const-string v5, "FMRadioEngineer"

    const-string v8, "Error: invalid frequency in service."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isPowerUp()Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$900(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$802(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 211
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isRDSSupported()I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1100(Lcom/mediatek/FMRadio/FMRadioEngineer;)I

    move-result v5

    if-ne v6, v5, :cond_7

    move v5, v6

    :goto_2
    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z
    invoke-static {v8, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1002(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 213
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 214
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1202(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 220
    :goto_3
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$800(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 221
    const-string v5, "FMRadioEngineer"

    const-string v7, "FM is already power up."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$400(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    .line 226
    :cond_3
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 227
    const-string v5, "FMRadioEngineer"

    const-string v7, "RDS is supported."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isPSRTEnabled()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1400(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z
    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1302(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 231
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isAFEnabled()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z
    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1502(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 234
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$800(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->getPS()Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1800(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1702(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->getLRText()Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1902(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 239
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2100(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/4 v7, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 251
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbInited:Z
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2202(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 257
    .end local v2           #iFreq:I
    :goto_5
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 258
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2100(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/16 v6, 0xd

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 198
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    .restart local v2       #iFreq:I
    :cond_5
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$200(Lcom/mediatek/FMRadio/FMRadioEngineer;)I

    move-result v5

    if-eq v5, v2, :cond_6

    .line 199
    const-string v5, "FMRadioEngineer"

    const-string v8, "The frequency in FM service is not same as in database."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v5, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$202(Lcom/mediatek/FMRadio/FMRadioEngineer;I)I

    .line 203
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$200(Lcom/mediatek/FMRadio/FMRadioEngineer;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 206
    :cond_6
    const-string v5, "FMRadioEngineer"

    const-string v8, "The frequency in FM service is same as in database."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    move v5, v7

    .line 211
    goto/16 :goto_2

    .line 217
    :cond_8
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z
    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1202(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    goto/16 :goto_3

    .line 247
    :cond_9
    const-string v5, "FMRadioEngineer"

    const-string v7, "RDS is not supported."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 255
    .end local v2           #iFreq:I
    :cond_a
    const-string v5, "FMRadioEngineer"

    const-string v6, "Error: FM device is not open"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 271
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$002(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;

    .line 273
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method
