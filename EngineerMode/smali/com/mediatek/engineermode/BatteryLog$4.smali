.class Lcom/mediatek/engineermode/BatteryLog$4;
.super Landroid/os/Handler;
.source "BatteryLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/BatteryLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/BatteryLog;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/BatteryLog;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private writeCurrentBatteryInfo()V
    .locals 6

    .prologue
    .line 395
    const-string v3, ""

    .line 396
    .local v3, logContent:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mStatus:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$700(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mLevel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$100(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mScale:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$200(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mHealth:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$800(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mVoltage:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$300(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mTemperature:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$500(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mTechnology:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$600(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mUptime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/engineermode/BatteryLog;->access$000(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, fileWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mLogFile:Ljava/io/File;
    invoke-static {v4}, Lcom/mediatek/engineermode/BatteryLog;->access$1200(Lcom/mediatek/engineermode/BatteryLog;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .local v2, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 407
    if-eqz v2, :cond_2

    .line 409
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 415
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #fileWriter:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 410
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 412
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #fileWriter:Ljava/io/FileWriter;
    goto :goto_0

    .line 404
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 405
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    if-eqz v1, :cond_0

    .line 409
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 410
    :catch_2
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_1

    .line 409
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 412
    :cond_1
    :goto_3
    throw v4

    .line 410
    :catch_3
    move-exception v0

    .line 411
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 407
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #fileWriter:Ljava/io/FileWriter;
    goto :goto_2

    .line 404
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #fileWriter:Ljava/io/FileWriter;
    goto :goto_1

    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    :cond_2
    move-object v1, v2

    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #fileWriter:Ljava/io/FileWriter;
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 387
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 388
    const-string v0, "EM-BatteryLog"

    const-string v1, "Record one time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/mediatek/engineermode/BatteryLog$4;->writeCurrentBatteryInfo()V

    .line 390
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog$4;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mLogRecordInterval:I
    invoke-static {v0}, Lcom/mediatek/engineermode/BatteryLog;->access$1100(Lcom/mediatek/engineermode/BatteryLog;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    :cond_0
    return-void
.end method
