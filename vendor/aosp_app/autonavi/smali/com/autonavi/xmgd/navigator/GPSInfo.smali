.class public Lcom/autonavi/xmgd/navigator/GPSInfo;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Landroid/hardware/SensorListener;
.implements Lcom/autonavi/xmgd/naviservice/f;


# instance fields
.field private a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

.field private b:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

.field private c:Lcom/autonavi/xmgd/view/GPSInfoView;

.field private d:Lcom/autonavi/xmgd/view/CompassView;

.field private e:Landroid/hardware/SensorManager;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:F

.field private m:Z

.field private final n:Lcom/autonavi/xmgd/utility/Timer;

.field private o:Lcom/autonavi/xmgd/naviservice/e;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->b:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->c:Lcom/autonavi/xmgd/view/GPSInfoView;

    iput v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->f:I

    iput v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->g:I

    iput v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    iput v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->j:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->l:F

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->m:Z

    new-instance v0, Lcom/autonavi/xmgd/utility/Timer;

    const-wide/16 v1, 0x3e8

    new-instance v3, Lcom/autonavi/xmgd/navigator/at;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/at;-><init>(Lcom/autonavi/xmgd/navigator/GPSInfo;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/Timer;-><init>(JLcom/autonavi/xmgd/utility/Timer$ITimerListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->n:Lcom/autonavi/xmgd/utility/Timer;

    new-instance v0, Lcom/autonavi/xmgd/navigator/au;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/au;-><init>(Lcom/autonavi/xmgd/navigator/GPSInfo;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/GPSInfo;)Lcom/autonavi/xmgd/view/GPSInfoView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->c:Lcom/autonavi/xmgd/view/GPSInfoView;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->k()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "satelliteCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "satelliteCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->l()Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->f:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->g:I

    const v0, 0x7f020185

    invoke-static {p0, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->e:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->e:Landroid/hardware/SensorManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->n:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->start()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->o:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->o:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xmgd/naviservice/f;)V

    return-void
.end method

.method private k()V
    .locals 2

    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f070134

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c0095

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GPSInfoView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->c:Lcom/autonavi/xmgd/view/GPSInfoView;

    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/CompassView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->d:Lcom/autonavi/xmgd/view/CompassView;

    return-void
.end method

.method private l()Lcom/autonavi/xm/navigation/server/location/GGpsInfo;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;-><init>()V

    iput-byte v2, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nValid:B

    new-instance v1, Lcom/autonavi/xm/navigation/server/GDate;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/GDate;-><init>()V

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-short v2, v1, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-byte v2, v1, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-byte v2, v1, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    new-instance v1, Lcom/autonavi/xm/navigation/server/GTime;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/GTime;-><init>()V

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iput-byte v3, v1, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iput-byte v3, v1, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    iput-byte v3, v1, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    iput-byte v2, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nNumberOfSatellite:B

    iput v2, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nSpeed:I

    iput v2, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nAzimuth:I

    iput v2, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nAltitude:I

    return-object v0
.end method

.method private m()[Lcom/autonavi/xm/navigation/server/location/GSatellite;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/location/GSatellite;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(III)V
    .locals 0

    return-void
.end method

.method public a(ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->c:Lcom/autonavi/xmgd/view/GPSInfoView;

    invoke-virtual {v5}, Lcom/autonavi/xmgd/view/GPSInfoView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->c:Lcom/autonavi/xmgd/view/GPSInfoView;

    invoke-virtual {v5}, Lcom/autonavi/xmgd/view/GPSInfoView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    div-int/lit8 v15, v6, 0x14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    div-int/lit8 v14, v6, 0xe

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v16, v6, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->g:I

    div-int/lit8 v13, v6, 0x20

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v12, v6, 0x14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x14

    add-int v11, v6, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x14

    mul-int/lit8 v7, v5, 0x2

    add-int v9, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0x14

    mul-int/lit8 v7, v5, 0x3

    add-int v8, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    mul-int/lit8 v6, v6, 0x6

    div-int/lit8 v6, v6, 0x14

    mul-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    mul-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x14

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v6, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->g:I

    div-int/lit8 v5, v5, 0x14

    :goto_0
    const v17, -0xffff01

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nValid:B

    move/from16 v17, v0

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->j()V

    :cond_0
    const v17, 0x7f070137

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nValid:B

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f070138

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f070139

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f07013a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_3
    const v18, 0x7f07013b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->b:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->b:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->b:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->d:Lcom/autonavi/xmgd/view/CompassView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/CompassView;->updateView([Lcom/autonavi/xm/navigation/server/location/GSatellite;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v19, v0

    const/16 v22, 0xc

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v19, v0

    aget-object v19, v20, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nSNR:I

    move/from16 v22, v0

    if-gez v22, :cond_a

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f07013c

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/text/DecimalFormat;

    const-string v15, "0.00"

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f07013d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nAzimuth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v14, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v19, "\u00b0"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f07013e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nSpeed:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v19, " km/h"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    int-to-float v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v5, 0x41a0

    int-to-float v11, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41a0

    int-to-float v9, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41a0

    int-to-float v8, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41a0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41a0

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/high16 v5, -0x1

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-byte v5, v5, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->nValid:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    const v5, 0x7f070136

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->j:Ljava/lang/String;

    const/16 v5, 0x36

    const/16 v6, 0x89

    const/16 v7, 0x17

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->j:Ljava/lang/String;

    const/high16 v6, 0x41a0

    int-to-float v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, -0x100

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x4120

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->g:I

    add-int/lit8 v5, v5, -0xa

    int-to-float v8, v5

    move/from16 v0, v16

    int-to-float v9, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    div-int/lit8 v15, v6, 0x10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->i:I

    div-int/lit8 v14, v6, 0x10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x6

    div-int/lit8 v16, v6, 0x7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    div-int/lit8 v13, v6, 0x1e

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v12, v6, 0xe

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0xe

    add-int v11, v6, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0xe

    mul-int/lit8 v7, v5, 0x2

    add-int v9, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0xe

    mul-int/lit8 v7, v5, 0x3

    add-int v8, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x6

    div-int/lit8 v6, v6, 0xe

    mul-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->h:I

    mul-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0xe

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v6, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->f:I

    div-int/lit8 v5, v5, 0x14

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    move/from16 v18, v0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "200"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f070138

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "20"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f070138

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f070139

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f07013a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4

    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nID:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/autonavi/xm/navigation/server/location/GSatellite;->nSNR:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    const-string v19, ""

    const/16 v24, 0xa

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x25

    const/16 v24, 0x25

    const/16 v25, 0x25

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v24, v0

    add-int v25, v13, v15

    mul-int v24, v24, v25

    add-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-int v25, v16, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v26, v0

    add-int v27, v13, v15

    mul-int v26, v26, v27

    add-int/lit8 v26, v26, 0xa

    add-int v26, v26, v15

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v15

    move/from16 v24, v0

    const/high16 v25, 0x4100

    div-float v24, v24, v25

    int-to-float v0, v15

    move/from16 v25, v0

    const/high16 v26, 0x4100

    div-float v25, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v22, 0xc3

    const/16 v24, 0x64

    const/16 v25, 0xa

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x404e

    div-double v22, v22, v24

    int-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v22

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v24, v0

    add-int v25, v13, v15

    mul-int v24, v24, v25

    add-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-int v22, v16, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v25, v0

    add-int v26, v13, v15

    mul-int v25, v25, v26

    add-int/lit8 v25, v25, 0xa

    add-int v25, v25, v15

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v15

    move/from16 v22, v0

    const/high16 v24, 0x4100

    div-float v22, v22, v24

    int-to-float v0, v15

    move/from16 v24, v0

    const/high16 v25, 0x4100

    div-float v24, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v22, -0x100

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v5

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v22, v0

    add-int v23, v13, v15

    mul-int v22, v22, v23

    add-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v16, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    goto/16 :goto_7

    :cond_c
    const v5, 0x7f070135

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/autonavi/xmgd/navigator/GPSInfo;->j:Ljava/lang/String;

    goto/16 :goto_8
.end method

.method public a(Landroid/location/Location;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->o:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a(Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)V

    :cond_0
    new-array v0, v4, [Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->o:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;->sat:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a([Lcom/autonavi/xm/navigation/server/location/GSatellite;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a([Lcom/autonavi/xm/navigation/server/location/GSatellite;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->b:[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->l()Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a(Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->m()[Lcom/autonavi/xm/navigation/server/location/GSatellite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a([Lcom/autonavi/xm/navigation/server/location/GSatellite;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    int-to-byte v2, v2

    int-to-short v2, v2

    iput-short v2, v1, Lcom/autonavi/xm/navigation/server/GDate;->year:S

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->date:Lcom/autonavi/xm/navigation/server/GDate;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/autonavi/xm/navigation/server/GTime;->hour:B

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/autonavi/xm/navigation/server/GTime;->minute:B

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/location/GGpsInfo;->time:Lcom/autonavi/xm/navigation/server/GTime;

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/autonavi/xm/navigation/server/GTime;->second:B

    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/GPSInfo;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->n:Lcom/autonavi/xmgd/utility/Timer;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Timer;->stop()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->o:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/naviservice/e;->b(Lcom/autonavi/xmgd/naviservice/f;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->m:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->m:Z

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/GPSInfo;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/GPSInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "satelliteCount"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "info"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->a:Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public onSensorChanged(I[F)V
    .locals 8

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v0, 0x0

    aget v7, p2, v0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->l:F

    neg-float v2, v7

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->d:Lcom/autonavi/xmgd/view/CompassView;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/view/CompassView;->startAnimation(Landroid/view/animation/Animation;)V

    neg-float v0, v7

    iput v0, p0, Lcom/autonavi/xmgd/navigator/GPSInfo;->l:F

    return-void
.end method
