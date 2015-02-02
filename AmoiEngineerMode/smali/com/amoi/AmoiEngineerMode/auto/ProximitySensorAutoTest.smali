.class public Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/SensorBase;
.source "ProximitySensorAutoTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProximitySensor"


# instance fields
.field private layout:Landroid/widget/RelativeLayout;

.field private mOriginalAccelerometerState:I

.field private msgTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->mOriginalAccelerometerState:I

    return-void
.end method

.method private changeBackground(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 53
    const v0, 0x3dcccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->layout:Landroid/widget/RelativeLayout;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->layout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private closeAccelerometer()V
    .locals 5

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->mOriginalAccelerometerState:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->mOriginalAccelerometerState:I

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 85
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 86
    const-string v2, "ProximitySensor"

    const-string v3, "error to close Accelerometer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v1           #success:Z
    :cond_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ProximitySensor"

    const-string v3, "error to get Accelerometer state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openAccelerometer()V
    .locals 4

    .prologue
    .line 92
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->mOriginalAccelerometerState:I

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 95
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 96
    const-string v1, "ProximitySensor"

    const-string v2, "error to open Accelerometer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0           #success:Z
    :cond_0
    return-void
.end method


# virtual methods
.method protected initSensor()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sm:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sensor:Landroid/hardware/Sensor;

    .line 41
    return-void
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 27
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->msgTextView:Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->msgTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->msgTextView:Landroid/widget/TextView;

    const v2, 0x7f060086

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->layout:Landroid/widget/RelativeLayout;

    .line 33
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->layout:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0600a0

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->resultTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->closeAccelerometer()V

    .line 64
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->openAccelerometer()V

    .line 70
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->onDestroy()V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 105
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 44
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 46
    .local v1, value:[F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0600a0

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, str:Ljava/lang/String;
    aget v2, v1, v4

    invoke-direct {p0, v2}, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;->changeBackground(F)V

    .line 48
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->resultTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
