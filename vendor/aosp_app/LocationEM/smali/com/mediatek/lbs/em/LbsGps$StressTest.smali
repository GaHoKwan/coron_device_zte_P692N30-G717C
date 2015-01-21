.class Lcom/mediatek/lbs/em/LbsGps$StressTest;
.super Ljava/lang/Thread;
.source "LbsGps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StressTest"
.end annotation


# instance fields
.field private delay1:I

.field private delay2:I

.field private delay3:I

.field private delay4:I

.field private enable:Z

.field private numOfLoop:I

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsGps;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 7
    .parameter

    .prologue
    .line 469
    const/16 v2, 0x64

    const/16 v3, 0x14

    const/4 v4, 0x1

    const/16 v5, 0x258

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/lbs/em/LbsGps$StressTest;-><init>(Lcom/mediatek/lbs/em/LbsGps;IIIII)V

    .line 470
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/lbs/em/LbsGps;IIIII)V
    .locals 1
    .parameter
    .parameter "numOfLoop"
    .parameter "delay1"
    .parameter "delay2"
    .parameter "delay3"
    .parameter "delay4"

    .prologue
    const/4 v0, 0x1

    .line 472
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 467
    iput-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->enable:Z

    .line 473
    iput p2, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->numOfLoop:I

    .line 474
    iput p3, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay1:I

    .line 475
    iput p4, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay2:I

    .line 476
    iput p5, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay3:I

    .line 477
    iput p6, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay4:I

    .line 478
    iput-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->enable:Z

    .line 479
    return-void
.end method

.method private oneSession()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 515
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxSwitchDelet2First:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsGps;->access$3700(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    :try_start_0
    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay1:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v1, v4, v3}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    .line 526
    :try_start_1
    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay2:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v1, v5, v3}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    .line 554
    :goto_0
    :try_start_2
    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay3:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 567
    :cond_0
    :goto_1
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 527
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 528
    .restart local v0       #e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 536
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay2:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 541
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v1, v5, v3}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    .line 544
    :try_start_4
    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay1:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 549
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v1, v4, v3}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    goto :goto_0

    .line 537
    :catch_2
    move-exception v0

    .line 538
    .restart local v0       #e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 545
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 546
    .restart local v0       #e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 556
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v0

    .line 557
    .restart local v0       #e:Ljava/lang/InterruptedException;
    iget-boolean v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->enable:Z

    if-eqz v1, :cond_0

    .line 563
    :try_start_5
    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay4:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 564
    :catch_5
    move-exception v0

    .line 565
    goto :goto_1
.end method


# virtual methods
.method public gotFixNotify()V
    .locals 0

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsGps$StressTest;->interrupt()V

    .line 491
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfLoop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->numOfLoop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay3:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay4:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsGps;->access$2300(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->numOfLoop:I

    if-ge v0, v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== stress test loop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsGps;->access$2300(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const/4 v2, 0x2

    add-int/lit8 v3, v0, 0x1

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    .line 504
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps$StressTest;->oneSession()V

    .line 505
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const/4 v2, 0x4

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v1, v2, v4}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    .line 506
    iget-boolean v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->enable:Z

    if-nez v1, :cond_1

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const-string v2, "end of stress test"

    #calls: Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsGps;->access$2300(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v1, v2, v4}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    .line 511
    return-void

    .line 501
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startStress()V
    .locals 0

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsGps$StressTest;->start()V

    .line 482
    return-void
.end method

.method public stopStress()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->enable:Z

    .line 486
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsGps$StressTest;->interrupt()V

    .line 487
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StressTest  numOfLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->numOfLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps$StressTest;->delay4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
