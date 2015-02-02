.class Lcom/mediatek/engineermode/sensor/SensorCalibration$3;
.super Landroid/os/Handler;
.source "SensorCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/sensor/SensorCalibration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sensor/SensorCalibration;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$3;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 171
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$3;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->getCalibration()Z
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$600(Lcom/mediatek/engineermode/sensor/SensorCalibration;)Z

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$3;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->setCalibration(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$700(Lcom/mediatek/engineermode/sensor/SensorCalibration;I)V

    goto :goto_0
.end method
