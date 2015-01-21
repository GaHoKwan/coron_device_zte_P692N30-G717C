.class Lcom/mediatek/engineermode/sensor/SensorCalibration$2;
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
.method constructor <init>(Lcom/mediatek/engineermode/sensor/SensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 145
    :pswitch_0
    const-string v0, "SensorCalibration"

    const-string v1, "set success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$200(Lcom/mediatek/engineermode/sensor/SensorCalibration;Z)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    const-string v1, "Operation succeed"

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$300(Lcom/mediatek/engineermode/sensor/SensorCalibration;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_1
    const-string v0, "SensorCalibration"

    const-string v1, "get success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/SensorCalibration;->mCaliData:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$500(Lcom/mediatek/engineermode/sensor/SensorCalibration;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    #getter for: Lcom/mediatek/engineermode/sensor/SensorCalibration;->mData:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$400(Lcom/mediatek/engineermode/sensor/SensorCalibration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :pswitch_2
    const-string v0, "SensorCalibration"

    const-string v1, "set fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$200(Lcom/mediatek/engineermode/sensor/SensorCalibration;Z)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    const-string v1, "Operation failed"

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$300(Lcom/mediatek/engineermode/sensor/SensorCalibration;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_3
    const-string v0, "SensorCalibration"

    const-string v1, "get fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->enableButtons(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$200(Lcom/mediatek/engineermode/sensor/SensorCalibration;Z)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/SensorCalibration$2;->this$0:Lcom/mediatek/engineermode/sensor/SensorCalibration;

    const-string v1, "Get calibration failed"

    #calls: Lcom/mediatek/engineermode/sensor/SensorCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/sensor/SensorCalibration;->access$300(Lcom/mediatek/engineermode/sensor/SensorCalibration;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
