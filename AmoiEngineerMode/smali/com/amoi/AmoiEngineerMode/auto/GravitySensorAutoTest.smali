.class public Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/SensorBase;
.source "GravitySensorAutoTest.java"


# static fields
.field private static final RADIANS_TO_DEGREES:F = 57.29578f


# instance fields
.field private gsensor_rotation:Landroid/widget/ImageView;

.field private mLastOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SensorBase;-><init>()V

    .line 15
    const v0, 0xfffff

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->mLastOrientation:I

    return-void
.end method


# virtual methods
.method protected initSensor()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sm:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->sensor:Landroid/hardware/Sensor;

    .line 25
    return-void
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    .line 21
    return-void
.end method

.method public onOrientationChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0xe1

    const/16 v8, 0x87

    const/4 v7, 0x0

    .line 37
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v7

    .line 38
    .local v1, x:F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v3, v4

    .line 40
    .local v2, y:F
    neg-float v3, v1

    float-to-double v3, v3

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    neg-double v3, v3

    const-wide v5, 0x404ca5dc20000000L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v0, v3

    .line 41
    .local v0, orientation:I
    if-gez v0, :cond_0

    .line 43
    add-int/lit16 v0, v0, 0x168

    .line 46
    :cond_0
    const/16 v3, 0x2d

    if-le v0, v3, :cond_2

    if-gt v0, v8, :cond_2

    .line 47
    const/16 v0, 0x5a

    .line 55
    :goto_0
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->mLastOrientation:I

    if-eq v3, v0, :cond_1

    .line 56
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->mLastOrientation:I

    .line 58
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->mLastOrientation:I

    sparse-switch v3, :sswitch_data_0

    .line 76
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_1
    :goto_1
    return-void

    .line 48
    :cond_2
    if-le v0, v8, :cond_3

    if-gt v0, v9, :cond_3

    .line 49
    const/16 v0, 0xb4

    goto :goto_0

    .line 50
    :cond_3
    if-le v0, v9, :cond_4

    const/16 v3, 0x13b

    if-gt v0, v3, :cond_4

    .line 51
    const/16 v0, 0x10e

    goto :goto_0

    .line 53
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :sswitch_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 64
    :sswitch_1
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 68
    :sswitch_2
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f02000c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 72
    :sswitch_3
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f02000b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 28
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 30
    .local v1, value:[F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0600a1

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;->onOrientationChanged(Landroid/hardware/SensorEvent;)V

    .line 33
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SensorBase;->resultTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
