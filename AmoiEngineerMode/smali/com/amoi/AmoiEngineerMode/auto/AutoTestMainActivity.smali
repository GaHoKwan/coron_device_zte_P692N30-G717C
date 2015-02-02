.class public Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;
.super Landroid/app/Activity;
.source "AutoTestMainActivity.java"


# static fields
.field public static final RESULT_EXIT:I = 0x3

.field public static final RESULT_NEXT:I = 0x2

.field public static final RESULT_PREVIOUSE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AutoTestMainActivity"


# instance fields
.field private mAutoTest_class:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    return-void
.end method

.method private getIntentAtCurrent(I)Landroid/content/Intent;
    .locals 5
    .parameter "currentActivity"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.mediatek.FMRadio"

    const-string v4, "com.mediatek.FMRadio.FMRadioActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 202
    const-string v2, "AmoiEngineeMode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v1, v0

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    .local v1, intent:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 206
    .end local v1           #intent:Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 208
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v0

    .line 209
    .restart local v1       #intent:Ljava/lang/Object;
    goto :goto_0
.end method

.method private initAutoClassList()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/PhoneInfoAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/SimCardAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/BatteryAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/FlashLightAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/TouchPanelEdgeAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/ReceiverAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/KeystrokeAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/ReceiverCurcuitAutoTet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/LCDAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/SpeakerAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/VibratorAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/GravitySensorAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/ProximitySensorAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/LightSensorAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/MagneticSensorAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/BluetoothAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/GPSAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/SDCardAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/BacklightAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/SDCard2AutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/CameraAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/ButtonLightAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/WifiAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/SubCameraAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/HeadsetAutoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    const-class v1, Lcom/amoi/AmoiEngineerMode/auto/FMAtuoTest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private toNextActivity(I)V
    .locals 3
    .parameter "currentActivity"

    .prologue
    .line 181
    add-int/lit8 p1, p1, 0x1

    .line 182
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 183
    const-string v0, "AutoTestMainActivity"

    const-string v1, "toNextActivity:indexOfActivityName > arrays\'length"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 186
    :cond_0
    const-string v0, "AutoTestMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainActivity:toNextActivity,nextActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->getIntentAtCurrent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    return-void
.end method

.method private toPreActivity(I)V
    .locals 3
    .parameter "currentActivity"

    .prologue
    .line 164
    add-int/lit8 p1, p1, -0x1

    .line 165
    if-gez p1, :cond_0

    .line 166
    const-string v0, "AutoTestMainActivity"

    const-string v1, "toPreActivity:indexOfActivity < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 p1, 0x0

    .line 169
    :cond_0
    const-string v0, "AutoTestMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainActivity:toPreActivity,PreActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->getIntentAtCurrent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 135
    packed-switch p2, :pswitch_data_0

    .line 147
    const-string v0, "AutoTestMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainActivity:resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result error!!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->finish()V

    .line 153
    :goto_0
    return-void

    .line 137
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->toNextActivity(I)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->toPreActivity(I)V

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "AutoTestMainActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->finish()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v2, "AutoTestMainActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->initAutoClassList()V

    .line 33
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 34
    .local v1, mPowerManager:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "AutoTest"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 38
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mAutoTest_class:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    const-string v0, "AutoTestMainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 216
    return-void
.end method
