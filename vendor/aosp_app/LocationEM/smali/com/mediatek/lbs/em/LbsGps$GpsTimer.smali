.class Lcom/mediatek/lbs/em/LbsGps$GpsTimer;
.super Ljava/lang/Thread;
.source "LbsGps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GpsTimer"
.end annotation


# instance fields
.field private enable:Z

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsGps;

.field private timeCount:I


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 1
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->enable:Z

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->timeCount:I

    return-void
.end method


# virtual methods
.method public getTimer()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->timeCount:I

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 635
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->enable:Z

    if-eqz v0, :cond_0

    .line 637
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 638
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->timeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->timeCount:I

    .line 639
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->timeCount:I

    #calls: Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsGps;->access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V

    .line 640
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->timeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsGps;->access$2300(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 0

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->start()V

    .line 650
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->enable:Z

    .line 653
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->interrupt()V

    .line 654
    return-void
.end method
