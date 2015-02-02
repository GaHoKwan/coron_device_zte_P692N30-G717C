.class public Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/SensorBase;
.source "LightSensorAutoTest.java"


# instance fields
.field protected originalLight:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected changeLight(F)V
    .locals 4
    .parameter "backlight"

    .prologue
    const/high16 v3, 0x4120

    .line 35
    mul-float v1, p1, v3

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float p1, v1, v3

    .line 36
    const v1, 0x3dcccccd

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 37
    const p1, 0x3dcccccd

    .line 39
    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 40
    const/high16 p1, 0x3f80

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 43
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 44
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    return-void
.end method

.method protected initSensor()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sm:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sensor:Landroid/hardware/Sensor;

    .line 21
    return-void
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->originalLight:Landroid/view/WindowManager$LayoutParams;

    .line 17
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->onDestroy()V

    .line 51
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->originalLight:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 24
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 26
    .local v1, value:[F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0600a2

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, str:Ljava/lang/String;
    aget v2, v1, v4

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;->changeLight(F)V

    .line 28
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->resultTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
