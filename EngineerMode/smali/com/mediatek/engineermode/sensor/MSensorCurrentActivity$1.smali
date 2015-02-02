.class Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;
.super Ljava/lang/Object;
.source "MSensorCurrentActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 321
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 291
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    .line 292
    .local v2, type:I
    if-ne v2, v7, :cond_1

    .line 293
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #getter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mShowLog:Z
    invoke-static {v6}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$200(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    const-string v6, "MSensorCurrentActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    iget-object v7, v6, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 296
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #getter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F
    invoke-static {v6}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$300(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)[F

    move-result-object v6

    const/4 v8, 0x1

    iget v9, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v9, v9

    aput v9, v6, v8

    .line 297
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bAccReady:Z
    invoke-static {v6, v8}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$402(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Z)Z

    .line 299
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v3, v6, v8

    .line 300
    .local v3, x:F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v4, v6, v8

    .line 301
    .local v4, y:F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v5, v6, v8

    .line 302
    .local v5, z:F
    mul-float v6, v3, v3

    mul-float v8, v4, v4

    add-float/2addr v6, v8

    mul-float v8, v5, v5

    add-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 304
    .local v1, result:F
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #getter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F
    invoke-static {v6}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$300(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)[F

    move-result-object v6

    const/4 v8, 0x0

    aput v1, v6, v8

    .line 305
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->bDataReady:Z
    invoke-static {v6, v8}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$502(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Z)Z

    .line 306
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v1           #result:F
    .end local v3           #x:F
    .end local v4           #y:F
    .end local v5           #z:F
    :cond_1
    const-string v0, "MSENSOR DATA IS GOOD!"

    .line 309
    .local v0, notifyStr:Ljava/lang/String;
    iget v6, p1, Landroid/hardware/SensorEvent;->accuracy:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 310
    const-string v0, "MSENSOR DATA IS NOT GOOD!"

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSensor Data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #getter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F
    invoke-static {v8}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$300(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)[F

    move-result-object v8

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MSensor Accuracy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #getter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mLastValue:[F
    invoke-static {v8}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$300(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)[F

    move-result-object v8

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mBuffer:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$602(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object v6, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #getter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mRawOutput:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$700(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity$1;->this$0:Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;

    #getter for: Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->mBuffer:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;->access$600(Lcom/mediatek/engineermode/sensor/MSensorCurrentActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void

    .line 306
    .end local v0           #notifyStr:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
