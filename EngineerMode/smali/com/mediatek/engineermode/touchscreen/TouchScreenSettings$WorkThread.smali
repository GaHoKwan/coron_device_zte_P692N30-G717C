.class Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;
.super Ljava/lang/Thread;
.source "TouchScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 260
    :goto_0
    invoke-static {}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mSdcardExist:Z
    invoke-static {v5}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$600(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cat /sys/module/tpd_debug/parameters/tpd_em_log  >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, shell:Ljava/lang/String;
    const-string v5, "EM/TouchScreen/set"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run file shell--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/sh"

    aput-object v6, v0, v5

    const-string v5, "-c"

    aput-object v5, v0, v8

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 269
    .local v0, cmd2:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 271
    .local v3, ret:I
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v3

    .line 272
    if-eqz v3, :cond_0

    .line 273
    const-string v5, "EM/TouchScreen/set"

    const-string v6, "cat >> failed!! "

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v0           #cmd2:[Ljava/lang/String;
    .end local v3           #ret:I
    .end local v4           #shell:Ljava/lang/String;
    :cond_0
    :goto_1
    const-wide/16 v5, 0xa

    :try_start_1
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "EM/TouchScreen/set"

    const-string v6, "sleep(10) >> exception!!!"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #cmd2:[Ljava/lang/String;
    .restart local v3       #ret:I
    .restart local v4       #shell:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 277
    .local v1, e:Ljava/io/IOException;
    const-string v5, "EM/TouchScreen/set"

    const-string v6, "cat >> failed!!  io exception"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    .end local v0           #cmd2:[Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    .end local v4           #shell:Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 292
    .local v2, msg:Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->what:I

    .line 294
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    iget-object v5, v5, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    const-string v5, "EM/TouchScreen/set"

    const-string v6, "Copy /proc/tpd_em_log success"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method
