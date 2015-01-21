.class public Lcom/autonavi/xmgd/navigator/Version;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# instance fields
.field a:[Z

.field private b:Lcom/autonavi/xmgd/view/GDTitle;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:J

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/Version;->d:Z

    const-string v0, " 978-7-900247-75-9"

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->e:Ljava/lang/String;

    const-string v0, "GS(2010)452\u53f7"

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/Version;->g:Z

    iput-wide v2, p0, Lcom/autonavi/xmgd/navigator/Version;->h:J

    iput-wide v2, p0, Lcom/autonavi/xmgd/navigator/Version;->i:J

    iput v1, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map_v.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    const-string v3, "ISBN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/autonavi/xmgd/navigator/Version;->e:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, v1, v0

    const-string v3, "\u5ba1\u56fe\u53f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/autonavi/xmgd/navigator/Version;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(FF)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    aget v1, v0, v4

    const/4 v2, 0x1

    aget v0, v0, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2, v3}, Lcom/autonavi/xmgd/navigator/Version;->a(FFLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private a(FFLandroid/graphics/Rect;)Z
    .locals 2

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const v5, 0x7f0c01bb

    const/4 v4, 0x2

    const v0, 0x7f0c01a5

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->b:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->b:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c01ab

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Version;->e:Ljava/lang/String;

    const-string v2, "ISBN"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01ad

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Version;->f:Ljava/lang/String;

    const-string v2, "\u5ba1\u56fe\u53f7:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01b1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01b3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01b5

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/xmgd/application/Resource;->mApkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x4c3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Version;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/autonavi/xmgd/application/NaviApplication;->openHMTData:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/navigator/Version;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private b(FF)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Version] isMoveInArea x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    aget v1, v0, v4

    const/4 v2, 0x1

    aget v0, v0, v2

    div-int/lit8 v2, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v0, 0x3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2, v3}, Lcom/autonavi/xmgd/navigator/Version;->a(FFLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private c(FF)Z
    .locals 5

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2, v4}, Lcom/autonavi/xmgd/navigator/Version;->a(FFLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private d(FF)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v0

    aget v1, v0, v4

    const/4 v2, 0x1

    aget v0, v0, v2

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    div-int/lit8 v0, v0, 0x3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2, v3}, Lcom/autonavi/xmgd/navigator/Version;->a(FFLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x2

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/autonavi/xmgd/navigator/Version;->g:Z

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/xmgd/navigator/Version;->h:J

    iput v1, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    iget v2, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/Version;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/Version;->d(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/autonavi/xmgd/navigator/Version;->i:J

    iget-wide v4, p0, Lcom/autonavi/xmgd/navigator/Version;->h:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/autonavi/xmgd/application/FactoryMode;->checkLongPressed(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-wide v6, p0, Lcom/autonavi/xmgd/navigator/Version;->h:J

    iput-wide v6, p0, Lcom/autonavi/xmgd/navigator/Version;->i:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_3

    iput-wide v6, p0, Lcom/autonavi/xmgd/navigator/Version;->i:J

    iget v2, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/Version;->b(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/xmgd/navigator/Version;->i:J

    iget v2, p0, Lcom/autonavi/xmgd/navigator/Version;->j:I

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/Version;->c(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/application/FactoryMode;->checkMoving()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v6, p0, Lcom/autonavi/xmgd/navigator/Version;->h:J

    iput-wide v6, p0, Lcom/autonavi/xmgd/navigator/Version;->i:J

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->showDialog(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Version;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Version;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Version;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Version;->b()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/autonavi/xmgd/application/FactoryMode;->FM_ITEM_NAME:[Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/application/FactoryMode;->getSelectItem()[Z

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/Version;->a:[Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5de5\u7a0b\u6a21\u5f0f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/autonavi/xmgd/navigator/kb;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/kb;-><init>(Lcom/autonavi/xmgd/navigator/Version;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070016

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/autonavi/xmgd/navigator/ka;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/ka;-><init>(Lcom/autonavi/xmgd/navigator/Version;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Version;->d:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/Version;->d:Z

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
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Version;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/Version;->startActivity(Landroid/content/Intent;)V
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

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onStart()V

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->isFactoryModeOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->prepare()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/FactoryMode;->checkFileExist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Version;->g:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Version;->g:Z

    goto :goto_0
.end method
