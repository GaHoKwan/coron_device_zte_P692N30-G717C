.class public Lcom/zte/engineer/SensorTest;
.super Lcom/zte/engineer/ZteActivity;
.source "SensorTest.java"


# instance fields
.field GsensorX:Landroid/widget/TextView;

.field GsensorY:Landroid/widget/TextView;

.field GsensorZ:Landroid/widget/TextView;

.field GyroscopeX:Landroid/widget/TextView;

.field GyroscopeY:Landroid/widget/TextView;

.field GyroscopeZ:Landroid/widget/TextView;

.field LightView:Landroid/widget/TextView;

.field MagneticX:Landroid/widget/TextView;

.field MagneticY:Landroid/widget/TextView;

.field MagneticZ:Landroid/widget/TextView;

.field ProximityView:Landroid/widget/TextView;

.field private lsn:Landroid/hardware/SensorEventListener;

.field private sensorMgr:Landroid/hardware/SensorManager;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/SensorTest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/zte/engineer/SensorTest;->x:F

    return v0
.end method

.method static synthetic access$002(Lcom/zte/engineer/SensorTest;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/zte/engineer/SensorTest;->x:F

    return p1
.end method

.method static synthetic access$100(Lcom/zte/engineer/SensorTest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/zte/engineer/SensorTest;->y:F

    return v0
.end method

.method static synthetic access$102(Lcom/zte/engineer/SensorTest;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/zte/engineer/SensorTest;->y:F

    return p1
.end method

.method static synthetic access$200(Lcom/zte/engineer/SensorTest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/zte/engineer/SensorTest;->z:F

    return v0
.end method

.method static synthetic access$202(Lcom/zte/engineer/SensorTest;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/zte/engineer/SensorTest;->z:F

    return p1
.end method

.method private initSensorListener()V
    .locals 6

    .prologue
    .line 88
    iget-object v3, p0, Lcom/zte/engineer/SensorTest;->sensorMgr:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Lcom/zte/engineer/SensorTest$1;

    invoke-direct {v3, p0}, Lcom/zte/engineer/SensorTest$1;-><init>(Lcom/zte/engineer/SensorTest;)V

    iput-object v3, p0, Lcom/zte/engineer/SensorTest;->lsn:Landroid/hardware/SensorEventListener;

    .line 179
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 181
    .local v1, s:Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/zte/engineer/SensorTest;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/zte/engineer/SensorTest;->lsn:Landroid/hardware/SensorEventListener;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 183
    .end local v1           #s:Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method private initUi()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->GsensorX:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->GsensorY:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->GsensorZ:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->MagneticX:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->MagneticY:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->MagneticZ:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->GyroscopeX:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->GyroscopeY:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->GyroscopeZ:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->LightView:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->ProximityView:Landroid/widget/TextView;

    .line 84
    return-void
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/zte/engineer/SensorTest;->sensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zte/engineer/SensorTest;->lsn:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 190
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 191
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    invoke-virtual {p0, v1}, Lcom/zte/engineer/SensorTest;->finishSelf(I)V

    .line 213
    :goto_0
    return-void

    .line 203
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/SensorTest;->finishSelf(I)V

    goto :goto_0

    .line 206
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/SensorTest;->finishSelf(I)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x7f08005e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 45
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zte/engineer/SensorTest;->sensorMgr:Landroid/hardware/SensorManager;

    .line 47
    invoke-direct {p0}, Lcom/zte/engineer/SensorTest;->initUi()V

    .line 49
    invoke-direct {p0}, Lcom/zte/engineer/SensorTest;->initSensorListener()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    return-void
.end method
