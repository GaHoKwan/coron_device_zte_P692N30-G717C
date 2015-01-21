.class Lcom/zte/engineer/BatteryLog$4;
.super Landroid/os/Handler;
.source "BatteryLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/BatteryLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BatteryLog;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BatteryLog;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private WriteCurrentBatteryInfo()V
    .locals 5

    .prologue
    .line 336
    const-string v0, ""

    .line 337
    .local v0, LogContent:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mStatus:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$700(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mLevel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$100(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mScale:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$200(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mHealth:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$800(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mVoltage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$300(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mTemperature:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$500(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mTechnology:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$600(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mUptime:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/engineer/BatteryLog;->access$000(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mLogFile:Ljava/io/File;
    invoke-static {v3}, Lcom/zte/engineer/BatteryLog;->access$1200(Lcom/zte/engineer/BatteryLog;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 343
    .local v2, fileWriter:Ljava/io/FileWriter;
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 345
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/engineer/BatteryLog;->access$1000(Lcom/zte/engineer/BatteryLog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Record one time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0}, Lcom/zte/engineer/BatteryLog$4;->WriteCurrentBatteryInfo()V

    .line 328
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/zte/engineer/BatteryLog$4;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mLogRecordInterval:I
    invoke-static {v1}, Lcom/zte/engineer/BatteryLog;->access$1100(Lcom/zte/engineer/BatteryLog;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
