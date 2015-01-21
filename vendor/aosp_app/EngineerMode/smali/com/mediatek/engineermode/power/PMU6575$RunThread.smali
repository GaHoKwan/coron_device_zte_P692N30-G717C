.class Lcom/mediatek/engineermode/power/PMU6575$RunThread;
.super Ljava/lang/Thread;
.source "PMU6575.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/power/PMU6575;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/power/PMU6575;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/power/PMU6575;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 518
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #getter for: Lcom/mediatek/engineermode/power/PMU6575;->mRun:Z
    invoke-static {v9}, Lcom/mediatek/engineermode/power/PMU6575;->access$400(Lcom/mediatek/engineermode/power/PMU6575;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 519
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .local v8, text:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 521
    .local v1, cmd:Ljava/lang/String;
    const/4 v5, 0x0

    check-cast v5, [[Ljava/lang/String;

    .line 522
    .local v5, fileArray:[[Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v10

    if-gt v9, v10, :cond_2

    .line 523
    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #getter for: Lcom/mediatek/engineermode/power/PMU6575;->mFilesFor89:[[Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/engineermode/power/PMU6575;->access$500(Lcom/mediatek/engineermode/power/PMU6575;)[[Ljava/lang/String;

    move-result-object v5

    .line 524
    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/ChipSupport;->isCurrentChipHigher(IZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 525
    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #getter for: Lcom/mediatek/engineermode/power/PMU6575;->mFilesFor7282:[[Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/engineermode/power/PMU6575;->access$600(Lcom/mediatek/engineermode/power/PMU6575;)[[Ljava/lang/String;

    move-result-object v5

    .line 530
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v9, v5

    if-ge v6, v9, :cond_5

    .line 531
    aget-object v9, v5, v6

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "SEP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 532
    const-string v9, "- - - - - - - - - -\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 528
    .end local v6           #i:I
    :cond_2
    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #getter for: Lcom/mediatek/engineermode/power/PMU6575;->mFiles:[[Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/engineermode/power/PMU6575;->access$700(Lcom/mediatek/engineermode/power/PMU6575;)[[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 535
    .restart local v6       #i:I
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cat /sys/devices/platform/mt-pmic/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v6

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    aget-object v9, v5, v6

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const-string v10, "mA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 538
    const-wide/16 v3, 0x0

    .line 540
    .local v3, f:D
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #calls: Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v1}, Lcom/mediatek/engineermode/power/PMU6575;->access$800(Lcom/mediatek/engineermode/power/PMU6575;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    float-to-double v3, v9

    .line 544
    :goto_4
    const-string v9, "%1$-28s:[%2$-6s]%3$s\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v5, v6

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aget-object v12, v5, v6

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 541
    :catch_0
    move-exception v2

    .line 542
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "EM-PMU"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read file error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 546
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #f:D
    :cond_4
    const-string v9, "%1$-28s:[%2$-6s]%3$s\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v5, v6

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #calls: Lcom/mediatek/engineermode/power/PMU6575;->getInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v1}, Lcom/mediatek/engineermode/power/PMU6575;->access$800(Lcom/mediatek/engineermode/power/PMU6575;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aget-object v12, v5, v6

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 550
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    .local v0, b:Landroid/os/Bundle;
    const-string v9, "INFO"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 554
    .local v7, msg:Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v7, Landroid/os/Message;->what:I

    .line 555
    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 556
    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    iget-object v9, v9, Lcom/mediatek/engineermode/power/PMU6575;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 558
    const-wide/16 v9, 0x5dc

    :try_start_1
    invoke-static {v9, v10}, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->sleep(J)V

    .line 559
    :goto_5
    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #getter for: Lcom/mediatek/engineermode/power/PMU6575;->mWhichTab:I
    invoke-static {v9}, Lcom/mediatek/engineermode/power/PMU6575;->access$900(Lcom/mediatek/engineermode/power/PMU6575;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    #getter for: Lcom/mediatek/engineermode/power/PMU6575;->mRun:Z
    invoke-static {v9}, Lcom/mediatek/engineermode/power/PMU6575;->access$400(Lcom/mediatek/engineermode/power/PMU6575;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 560
    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/power/PMU6575$RunThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 562
    :catch_1
    move-exception v2

    .line 563
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 566
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v5           #fileArray:[[Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #text:Ljava/lang/StringBuilder;
    :cond_6
    return-void
.end method
