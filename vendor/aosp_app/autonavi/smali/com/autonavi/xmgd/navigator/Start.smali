.class public final Lcom/autonavi/xmgd/navigator/Start;
.super Lcom/autonavi/xmgd/controls/GDBaseActivity;


# static fields
.field private static j:Landroid/widget/Toast;


# instance fields
.field private a:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private b:Ljava/lang/String;

.field private c:Lcom/autonavi/xmgd/logic/l;

.field private d:Lcom/autonavi/xmgd/logic/f;

.field private e:Lcom/autonavi/xmgd/view/LogoBackgroundView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/autonavi/xmgd/navigator/jz;

.field private i:Z

.field private k:Lcom/autonavi/xmgd/d/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->g:Ljava/lang/String;

    new-instance v0, Lcom/autonavi/xmgd/navigator/jz;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/jz;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->h:Lcom/autonavi/xmgd/navigator/jz;

    new-instance v0, Lcom/autonavi/xmgd/navigator/jy;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/jy;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Start;->i:Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/jx;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/jx;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->k:Lcom/autonavi/xmgd/d/e;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/navigator/jz;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->h:Lcom/autonavi/xmgd/navigator/jz;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/Start;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->setApplicationContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/am;->a(Landroid/app/Application;)Lcom/autonavi/xmgd/logic/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ag;->d()Lcom/autonavi/xmgd/logic/f;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->d:Lcom/autonavi/xmgd/logic/f;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jm;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jm;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/autonavi/xmgd/navigator/Start;->j:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/navigator/Start;->j:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/navigator/Start;->j:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/autonavi/xmgd/navigator/Start;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/Start;Z)Z
    .locals 0

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/logic/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private b()V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_6

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_7

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private c()F
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    iget v0, v3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :try_start_0
    const-string v2, "android.view.Display"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getRawHeight"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    cmpl-float v0, v2, v1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :try_start_1
    const-string v1, "android.view.Display"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getRawHeight"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/logic/f;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->d:Lcom/autonavi/xmgd/logic/f;

    return-object v0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/Start;)F
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Start;->c()F

    move-result v0

    return v0
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v4, 0x0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Start]  goNextActivity Logicinstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Start;->c()F

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setStatusBarHeight(F)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getResVersion(ILjava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Start]  resVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getEngineVersionWithGVersion()Lcom/autonavi/xm/navigation/server/GVersion;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getDataVersionWithGVersion()Lcom/autonavi/xm/navigation/server/GVersion;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->engineMapVerCompare(Lcom/autonavi/xm/navigation/server/GVersion;Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/autonavi/xm/navigation/server/GVerCheckResult;->GVERSION_SAME:Lcom/autonavi/xm/navigation/server/GVerCheckResult;

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070226

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v4

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/xmgd/navigator/Start;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    :goto_0
    return-void

    :cond_2
    if-ge v0, v5, :cond_3

    const v1, 0x7f070227

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/xmgd/navigator/Start;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->g:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Start;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/Start;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Start;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Start;->d()V

    return-void
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/utility/CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Start;->a()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setStartExiting(Z)V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->finish()V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] finish! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/l;->b()V

    :cond_2
    return-void

    :cond_3
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] double finish()!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2766

    if-ne p1, v0, :cond_0

    if-nez p3, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->e()Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->e()Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/logic/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/l;->c()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/navigator/Start;->setVolumeControlStream(I)V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] oncreate intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v3}, Lcom/autonavi/xmgd/utility/Tool;->setLogStatus(Z)V

    invoke-static {v3}, Lcom/plugin/installapk/newrttc_v2/k;->a(Z)V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] onCreate! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->isStartExiting()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] oncreate Start activity destroying!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "\u4eb2\uff0c\u60a8\u70b9\u592a\u5feb\u4e86\uff0c\u5148\u559d\u53e3\u8336\u5427\uff01"

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/Start;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->lockCurrentOrientation()I

    if-eqz p1, :cond_4

    const-string v0, "mDeleteDataTip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    const-string v0, "mUpdateRes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->g:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string v1, "mDeleteDataTip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    const-string v1, "mUpdateRes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->g:Ljava/lang/String;

    :cond_5
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->setApplicationContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Start;->b()V

    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Start;->setContentView(I)V

    const v0, 0x7f0c0188

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/LogoBackgroundView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->e:Lcom/autonavi/xmgd/view/LogoBackgroundView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->e:Lcom/autonavi/xmgd/view/LogoBackgroundView;

    invoke-virtual {v0, v4, v3, v4}, Lcom/autonavi/xmgd/view/LogoBackgroundView;->setDrawConfig(ZZZ)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "isProcessKilled"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v4, :cond_6

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->isMapExiting()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_7

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] oncreate map is destroying!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "\u4eb2\uff0c\u7b49\u7b49\u518d\u542f\u52a8\u5bfc\u822a\uff0c\u5148\u559d\u53e3\u8336\u5427\uff01"

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/Start;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/xmgd/d/c;->a()Lcom/autonavi/xmgd/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->k:Lcom/autonavi/xmgd/d/e;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/d/c;->a(Lcom/autonavi/xmgd/d/e;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Start;->a()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    const v6, 0x7f07001d

    const/4 v5, 0x1

    const v4, 0x7f070016

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jp;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jp;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001f

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jq;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jq;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070020

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jr;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jr;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070021

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/js;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/js;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    const-string v1, "\u5bfc\u822a\u7a0b\u5e8f\u53d1\u751f\u5f02\u5e38\u9700\u8981\u91cd\u65b0\u542f\u52a8\uff0c\u662f\u5426\u786e\u5b9a\u91cd\u65b0\u542f\u52a8\uff1f"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070019

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u6570\u636e\u662f\u5426\u7f3a\u5931\uff01"

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u6570\u636e\u662f\u5426\u7f3a\u5931\uff01\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v2, Lcom/autonavi/xmgd/navigator/jt;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/jt;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v1, p0, v3, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v1, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v1, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070024

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ju;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ju;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070023

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jv;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jv;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070022

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jw;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jw;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070025

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jn;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jn;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jo;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jo;-><init>(Lcom/autonavi/xmgd/navigator/Start;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070017

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07022d

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start] onDestroy! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setStartExiting(Z)V

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/d/c;->a()Lcom/autonavi/xmgd/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->k:Lcom/autonavi/xmgd/d/e;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/d/c;->b(Lcom/autonavi/xmgd/d/e;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->c:Lcom/autonavi/xmgd/logic/l;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/l;->a()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->unlockCurrentOrientation()I

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->d:Lcom/autonavi/xmgd/logic/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Start;->d:Lcom/autonavi/xmgd/logic/f;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/f;->a()V

    :cond_3
    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->isMapExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void

    :pswitch_0
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u6570\u636e\u662f\u5426\u7f3a\u5931\uff01"

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u6570\u636e\u662f\u5426\u7f3a\u5931\uff01\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mDeleteDataTip"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mUpdateRes"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/Start;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mDeleteDataTip"

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mUpdateRes"

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Start;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
