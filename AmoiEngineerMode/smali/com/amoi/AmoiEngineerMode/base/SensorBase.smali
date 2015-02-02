.class public abstract Lcom/amoi/AmoiEngineerMode/base/SensorBase;
.super Landroid/app/Activity;
.source "SensorBase.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected resultTextView:Landroid/widget/TextView;

.field protected sensor:Landroid/hardware/Sensor;

.field protected sm:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method protected abstract initSensor()V
.end method

.method protected abstract initView()V
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 72
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->setContentView(I)V

    .line 27
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->resultTextView:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->initView()V

    .line 30
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->initButton()V

    .line 31
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sm:Landroid/hardware/SensorManager;

    .line 32
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->initSensor()V

    .line 33
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 56
    return-void
.end method
