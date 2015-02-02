.class public Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;
.super Landroid/app/Activity;
.source "SensorResult.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final COMPASS:I = 0x3

.field public static final GSENSOR:I = 0x1

.field public static final LSENSOR:I = 0x2

.field public static final PSENSOR:I = 0x0

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final TAG:Ljava/lang/String; = "Sensor"


# instance fields
.field private curSensor:I

.field private gsensor_rotation:Landroid/widget/ImageView;

.field private layout:Landroid/widget/LinearLayout;

.field private mLastOrientation:I

.field private mOriginalAccelerometerState:I

.field mSensor:Landroid/hardware/Sensor;

.field protected originalLight:Landroid/view/WindowManager$LayoutParams;

.field result:Landroid/widget/TextView;

.field sensorName:Landroid/widget/TextView;

.field sm:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const v0, 0xffff

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mLastOrientation:I

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mOriginalAccelerometerState:I

    return-void
.end method

.method private changeBackground(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 150
    const v0, 0x3dcccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->layout:Landroid/widget/LinearLayout;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->layout:Landroid/widget/LinearLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private closeAccelerometer()V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mOriginalAccelerometerState:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mOriginalAccelerometerState:I

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 239
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 240
    const-string v2, "Sensor"

    const-string v3, "error to close Accelerometer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v1           #success:Z
    :cond_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Sensor"

    const-string v3, "error to get Accelerometer state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSensor(I)Landroid/hardware/Sensor;
    .locals 3
    .parameter "curSensor"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, sensor:Landroid/hardware/Sensor;
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 101
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->setTitle(I)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 105
    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->setTitle(I)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 109
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->setTitle(I)V

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 113
    const v1, 0x7f060066

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->setTitle(I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private openAccelerometer()V
    .locals 4

    .prologue
    .line 246
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mOriginalAccelerometerState:I

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 249
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 250
    const-string v1, "Sensor"

    const-string v2, "error to open Accelerometer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0           #success:Z
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeLight(F)V
    .locals 4
    .parameter "backlight"

    .prologue
    const/high16 v3, 0x4120

    .line 207
    mul-float v1, p1, v3

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float p1, v1, v3

    .line 208
    const v1, 0x3dcccccd

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 209
    const p1, 0x3dcccccd

    .line 211
    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 212
    const/high16 p1, 0x3f80

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 215
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 216
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->setContentView(I)V

    .line 50
    const v2, 0x7f070068

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sensorName:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f070069

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->result:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->originalLight:Landroid/view/WindowManager$LayoutParams;

    .line 54
    const v2, 0x7f07006a

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    .line 55
    const v2, 0x7f070067

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->layout:Landroid/widget/LinearLayout;

    .line 56
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->layout:Landroid/widget/LinearLayout;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "curSensor"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->curSensor:I

    .line 62
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->curSensor:I

    if-nez v2, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->closeAccelerometer()V

    .line 66
    :cond_0
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    .line 67
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->curSensor:I

    invoke-direct {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mSensor:Landroid/hardware/Sensor;

    .line 69
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, sensorType:[Ljava/lang/String;
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sensorName:Landroid/widget/TextView;

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->curSensor:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 222
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->openAccelerometer()V

    .line 224
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->originalLight:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 225
    return-void
.end method

.method public onOrientationChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0xe1

    const/16 v8, 0x87

    const/4 v7, 0x0

    .line 158
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v7

    .line 159
    .local v1, x:F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v3, v4

    .line 161
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

    .line 162
    .local v0, orientation:I
    if-gez v0, :cond_0

    .line 164
    add-int/lit16 v0, v0, 0x168

    .line 167
    :cond_0
    const/16 v3, 0x2d

    if-le v0, v3, :cond_2

    if-gt v0, v8, :cond_2

    .line 168
    const/16 v0, 0x5a

    .line 176
    :goto_0
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mLastOrientation:I

    if-eq v3, v0, :cond_1

    .line 177
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mLastOrientation:I

    .line 179
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mLastOrientation:I

    sparse-switch v3, :sswitch_data_0

    .line 201
    :cond_1
    :goto_1
    return-void

    .line 169
    :cond_2
    if-le v0, v8, :cond_3

    if-gt v0, v9, :cond_3

    .line 170
    const/16 v0, 0xb4

    goto :goto_0

    .line 171
    :cond_3
    if-le v0, v9, :cond_4

    const/16 v3, 0x13b

    if-gt v0, v3, :cond_4

    .line 172
    const/16 v0, 0x10e

    goto :goto_0

    .line 174
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :sswitch_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 185
    :sswitch_1
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 189
    :sswitch_2
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f02000c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 193
    :sswitch_3
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    const v4, 0x7f02000b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->gsensor_rotation:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    iget v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->curSensor:I

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 82
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 83
    const-string v1, "Sensor"

    const-string v2, "error registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0           #success:Z
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->sm:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 122
    .local v2, value:[F
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, sensorResult:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 124
    .local v1, str:Ljava/lang/String;
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->curSensor:I

    packed-switch v3, :pswitch_data_0

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->result:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void

    .line 126
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    aget v3, v2, v5

    invoke-direct {p0, v3}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->changeBackground(F)V

    goto :goto_0

    .line 130
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p0, p1}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->onOrientationChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 136
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    aget v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;->changeLight(F)V

    goto/16 :goto_0

    .line 140
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
