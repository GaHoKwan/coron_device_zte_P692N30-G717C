.class public Lcom/zte/engineer/SensorTestEx;
.super Lcom/zte/engineer/ShowSimpleInfo;
.source "SensorTestEx.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_WAIT_UPDATE:I = 0x0

.field private static final SENSOR:Ljava/lang/String; = "/proc/driver/tsl2771_threshold"

.field private static final SENSOR_LGT_CHK_VALUE:F = 30.1f

.field private static final SENSOR_PRXY_CHK_VALUE:F = 3.1f

.field private static final TAG:Ljava/lang/String; = "Emode.SensorTestEx"


# instance fields
.field private mDisablingDialog:Landroid/app/ProgressDialog;

.field mHandler:Landroid/os/Handler;

.field private mLgtMaxValue:F

.field private mLgtMinValue:F

.field private mLgtValue:F

.field private mPrxyMaxValue:F

.field private mPrxyMinValue:F

.field private mPrxyValue:F

.field private mSensorList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mTvwLgtTip:Landroid/widget/TextView;

.field private mTvwPrxyTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, -0x42333333

    .line 26
    invoke-direct {p0}, Lcom/zte/engineer/ShowSimpleInfo;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 32
    iput-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    .line 33
    iput-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    .line 35
    iput v2, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    .line 36
    iput v2, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    .line 38
    iput v0, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMaxValue:F

    .line 39
    iput v0, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMinValue:F

    .line 41
    iput v0, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMaxValue:F

    .line 42
    iput v0, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMinValue:F

    .line 415
    new-instance v0, Lcom/zte/engineer/SensorTestEx$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/SensorTestEx$2;-><init>(Lcom/zte/engineer/SensorTestEx;)V

    iput-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/SensorTestEx;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mDisablingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static sensorAdjust(Ljava/lang/String;)V
    .locals 10
    .parameter "value"

    .prologue
    .line 377
    new-instance v4, Ljava/io/File;

    const-string v7, "/proc/driver/tsl2771_threshold"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v4, fsensor:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    if-eqz p0, :cond_2

    .line 383
    invoke-static {}, Lcom/zte/engineer/EmodeSvrManager;->getInstance()Lcom/zte/engineer/EmodeSvrManager;

    move-result-object v2

    .line 384
    .local v2, emodeSvr:Lcom/zte/engineer/EmodeSvrManager;
    if-eqz v2, :cond_0

    .line 385
    const-string v7, "/proc/driver/tsl2771_threshold"

    invoke-virtual {v2, v7, p0}, Lcom/zte/engineer/EmodeSvrManager;->fileWrite(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    .end local v2           #emodeSvr:Lcom/zte/engineer/EmodeSvrManager;
    :cond_2
    const-string v6, ""

    .line 393
    .local v6, result:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 394
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 395
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 396
    const-string v7, "Emode.SensorTestEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 403
    .end local v0           #br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;

    move-result-object v5

    .line 404
    .local v5, prop:Ljava/util/Properties;
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getConfigOutStream()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 405
    .local v3, fout:Ljava/io/FileOutputStream;
    const-string v7, "sensor"

    invoke-virtual {v5, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    const-string v7, ""

    invoke-virtual {v5, v3, v7}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 408
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v5           #prop:Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Emode.SensorTestEx"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 398
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Emode.SensorTestEx"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 410
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 411
    .local v1, e:Lcom/zte/engineer/EmodeException;
    const-string v7, "Emode.SensorTestEx"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addInfoItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 93
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 97
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 99
    .local v3, sensor:Landroid/hardware/Sensor;
    if-nez v3, :cond_1

    .line 100
    const-string v5, "Emode.SensorTestEx"

    const-string v6, "jump null sensor"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 105
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    invoke-interface {v2, v8, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 111
    .end local v3           #sensor:Landroid/hardware/Sensor;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 114
    .restart local v3       #sensor:Landroid/hardware/Sensor;
    if-nez v3, :cond_4

    .line 115
    const-string v5, "Emode.SensorTestEx"

    const-string v6, "jump null sensor"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 120
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    const/4 v5, 0x1

    invoke-interface {v2, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    .end local v3           #sensor:Landroid/hardware/Sensor;
    :cond_5
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    .line 128
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 129
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 131
    .restart local v3       #sensor:Landroid/hardware/Sensor;
    if-nez v3, :cond_6

    .line 128
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 135
    :cond_6
    const-string v5, "Emode.SensorTestEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sensor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 139
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 146
    :pswitch_0
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    const v5, 0x7f0600b4

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    goto :goto_3

    .line 141
    :pswitch_1
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    const v5, 0x7f0600b5

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    goto :goto_3

    .line 151
    :pswitch_2
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 152
    const v5, 0x7f0600b8

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    goto :goto_3

    .line 156
    :pswitch_3
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    const v5, 0x7f0600b6

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    goto :goto_3

    .line 161
    :pswitch_4
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    const v5, 0x7f0600ba

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    .line 165
    :pswitch_5
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    const v5, 0x7f0600b7

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    goto :goto_3

    .line 170
    :pswitch_6
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    const v5, 0x7f0600b3

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 175
    :pswitch_7
    iget-object v5, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v5, "Pressure"

    const-string v6, "N/A"

    invoke-virtual {p0, v5, v6}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 183
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #type:I
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 185
    const v5, 0x7f0600cd

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/engineer/ShowSimpleInfo;->showMidBtn(Ljava/lang/String;)V

    .line 186
    const v5, 0x7f0600c7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p0}, Lcom/zte/engineer/ShowSimpleInfo;->showLeftBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 188
    const v5, 0x7f080063

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 189
    .local v0, btnMid:Landroid/widget/Button;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method checkLgtAndPrxySensor()V
    .locals 6

    .prologue
    const v5, 0x7f0600c8

    const v4, 0x7f05008b

    const v3, 0x7f050003

    .line 324
    const-string v0, "Emode.SensorTestEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLgtMaxValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMaxValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLgtMinValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMinValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v0, "Emode.SensorTestEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrxyMaxValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMaxValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrxyMinValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMinValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v0, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    const v1, 0x40466666

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget v0, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    const v1, 0x41f0cccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMaxValue:F

    iget v1, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMinValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMaxValue:F

    iget v1, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMinValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080062

    if-eq v1, v2, :cond_0

    .line 374
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 359
    check-cast v0, Landroid/widget/Button;

    .line 360
    .local v0, btn:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 362
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zte/engineer/SensorTestEx$1;

    invoke-direct {v2, p0}, Lcom/zte/engineer/SensorTestEx$1;-><init>(Lcom/zte/engineer/SensorTestEx;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 370
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mDisablingDialog:Landroid/app/ProgressDialog;

    .line 371
    iget-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mDisablingDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0600c7

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 372
    iget-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mDisablingDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0600cb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, p0, Lcom/zte/engineer/SensorTestEx;->mDisablingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/zte/engineer/ShowSimpleInfo;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const v7, 0x7f0600c8

    const v6, 0x7f050003

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 52
    iput-boolean v4, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 53
    const v2, 0x7f0600b8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/zte/engineer/ShowSimpleInfo;->getItemCtl(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwPrxyTip:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 59
    const v2, 0x7f0600b5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/zte/engineer/ShowSimpleInfo;->getItemCtl(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mTvwLgtTip:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mSensorList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 66
    .local v1, sensor:Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 69
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zte/engineer/SensorTestEx;->updateSensorStatus(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/engineer/SensorTestEx;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 75
    return-void
.end method

.method public updateSensorStatus(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 193
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 194
    .local v3, sensor:Landroid/hardware/Sensor;
    const-string v4, "N/A"

    .line 195
    .local v4, status:Ljava/lang/String;
    const v7, 0x7f0600cc

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, version:Ljava/lang/String;
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 199
    .local v5, values:[F
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 201
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600bb

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    const v7, 0x7f0600b4

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(ILjava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600bc

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    const v7, 0x7f0600b5

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(ILjava/lang/String;)V

    .line 216
    const/4 v7, 0x0

    aget v7, v5, v7

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    .line 218
    const v7, -0x42333333

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMaxValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_0

    const v7, -0x42333333

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMinValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_1

    .line 220
    :cond_0
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMaxValue:F

    .line 221
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMinValue:F

    .line 224
    :cond_1
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMaxValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_2

    .line 225
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMaxValue:F

    .line 228
    :cond_2
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMinValue:F

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_3

    .line 229
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mLgtMinValue:F

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/zte/engineer/SensorTestEx;->checkLgtAndPrxySensor()V

    goto/16 :goto_0

    .line 235
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600bd

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    const v7, 0x7f0600b6

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    const/4 v7, 0x0

    aget v0, v5, v7

    .line 248
    .local v0, angle:F
    const-string v2, ""

    .line 249
    .local v2, ori:Ljava/lang/String;
    const/high16 v7, 0x4234

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_4

    const v7, 0x439d8000

    cmpl-float v7, v0, v7

    if-lez v7, :cond_6

    .line 250
    :cond_4
    const v7, 0x7f0600c1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_5
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600be

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    const v7, 0x7f0600b7

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_6
    const/high16 v7, 0x4234

    cmpl-float v7, v0, v7

    if-lez v7, :cond_7

    const/high16 v7, 0x4307

    cmpg-float v7, v0, v7

    if-gez v7, :cond_7

    .line 252
    const v7, 0x7f0600c2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 253
    :cond_7
    const/high16 v7, 0x4307

    cmpl-float v7, v0, v7

    if-lez v7, :cond_8

    const/high16 v7, 0x4361

    cmpg-float v7, v0, v7

    if-gez v7, :cond_8

    .line 254
    const v7, 0x7f0600c3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 255
    :cond_8
    const/high16 v7, 0x4361

    cmpl-float v7, v0, v7

    if-lez v7, :cond_5

    const v7, 0x439d8000

    cmpg-float v7, v0, v7

    if-gez v7, :cond_5

    .line 256
    const v7, 0x7f0600c4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 263
    .end local v0           #angle:F
    .end local v2           #ori:Ljava/lang/String;
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600bf

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :pswitch_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    const-string v7, "Emode.SensorTestEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sensor.getMaximumRange():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "report:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v7, 0x0

    aget v7, v5, v7

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    .line 279
    const v7, -0x42333333

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMaxValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_9

    const v7, -0x42333333

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMinValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_a

    .line 281
    :cond_9
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMaxValue:F

    .line 282
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMinValue:F

    .line 285
    :cond_a
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMaxValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_b

    .line 286
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMaxValue:F

    .line 289
    :cond_b
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMinValue:F

    iget v8, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_c

    .line 290
    iget v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyValue:F

    iput v7, p0, Lcom/zte/engineer/SensorTestEx;->mPrxyMinValue:F

    .line 293
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, isNear:Ljava/lang/String;
    const/4 v7, 0x0

    aget v7, v5, v7

    const v8, 0x40466666

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600c9

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600c6

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600c0

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    const v7, 0x7f0600b8

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(ILjava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/zte/engineer/SensorTestEx;->checkLgtAndPrxySensor()V

    goto/16 :goto_0

    .line 298
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600ca

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 309
    .end local v1           #isNear:Ljava/lang/String;
    :pswitch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0600bb

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    const v7, 0x7f0600ba

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :pswitch_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
