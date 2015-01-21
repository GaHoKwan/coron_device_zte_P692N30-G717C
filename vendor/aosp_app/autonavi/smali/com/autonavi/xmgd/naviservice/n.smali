.class public Lcom/autonavi/xmgd/naviservice/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/xmgd/naviservice/n;


# instance fields
.field private b:Landroid/app/Application;

.field private c:I

.field private d:Z

.field private e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

.field private f:Lcom/autonavi/xm/navigation/engine/GDBL_Register;

.field private g:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

.field private h:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

.field private i:Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

.field private j:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

.field private k:Landroid/os/IBinder;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/autonavi/xmgd/naviservice/n;->b:Landroid/app/Application;

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/naviservice/n;->d:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/naviservice/n;->l:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/naviservice/n;->m:Z

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/n;->b:Landroid/app/Application;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_SetApplication(Landroid/app/Application;)Lcom/autonavi/xm/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/xmgd/naviservice/p;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/xmgd/naviservice/p;-><init>(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xmgd/naviservice/o;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Config;)Lcom/autonavi/xm/navigation/engine/GDBL_Config;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/n;->j:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;)Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/n;->i:Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location;
    .locals 0

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Main;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Map;)Lcom/autonavi/xm/navigation/engine/GDBL_Map;
    .locals 0

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Lcom/autonavi/xm/navigation/engine/GDBL_Poi;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/n;->g:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Safe;)Lcom/autonavi/xm/navigation/engine/GDBL_Safe;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/naviservice/n;->h:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;
    .locals 0

    return-object p1
.end method

.method public static a(Landroid/app/Application;)Lcom/autonavi/xmgd/naviservice/n;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/n;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/naviservice/n;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/autonavi/xmgd/plugin/PluginManager;->getManager(Landroid/content/Context;)Lcom/autonavi/xmgd/plugin/PluginManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "buildin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v3

    iget-object v3, v3, Lcom/autonavi/xmgd/application/Resource;->mPluginDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v4}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectInnerPlugin(Landroid/os/Handler;I)I

    invoke-virtual {v0, v1, v6, v5, v4}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromSDCard(Ljava/lang/String;ZLandroid/os/Handler;I)I

    invoke-virtual {v0, v2, v4, v5, v4}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromSDCard(Ljava/lang/String;ZLandroid/os/Handler;I)I

    invoke-virtual {v0, v5, v4}, Lcom/autonavi/xmgd/plugin/PluginManager;->collectOutterPluginFromInstallApk(Landroid/os/Handler;I)I

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginManager;->sortPlugin()V

    new-instance v0, Lcom/plugin/installapk/newrttc_v2/i;

    invoke-direct {v0}, Lcom/plugin/installapk/newrttc_v2/i;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/plugin/installapk/newrttc_v2/i;->load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/plugin/installapk/newrttc_v2/i;->setSettingNum(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/plugin/installapk/newrttc_v2/i;->setIndex(I)V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi_wuxd"

    const-string v1, "init Plugin RTTC ,set Index = 2"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v6
.end method

.method static synthetic a(Lcom/autonavi/xmgd/naviservice/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/naviservice/n;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Poi;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->g:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/naviservice/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/naviservice/n;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Safe;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->h:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    return-object v0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/naviservice/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/naviservice/n;->d:Z

    return p1
.end method

.method static synthetic d(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->i:Lcom/autonavi/xm/navigation/engine/GDBL_Favorite;

    return-object v0
.end method

.method static synthetic e(Lcom/autonavi/xmgd/naviservice/n;)Lcom/autonavi/xm/navigation/engine/GDBL_Config;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->j:Lcom/autonavi/xm/navigation/engine/GDBL_Config;

    return-object v0
.end method

.method public static e()Z
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NaviLogic] destroyInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    if-nez v0, :cond_1

    :goto_0
    return v4

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NaviLogic]  mLastErrorId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget v2, v2, Lcom/autonavi/xmgd/naviservice/n;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",startup result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-boolean v2, v2, Lcom/autonavi/xmgd/naviservice/n;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/naviservice/n;->m:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->d()V

    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-object v0, v0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    check-cast v0, Lcom/autonavi/xmgd/naviservice/p;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/p;->M()V

    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/naviservice/n;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-object v0, v0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_DestroyView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_3
    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-object v0, v0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_Cleanup()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NaviLogic]  mGDBLMain.GDBL_Cleanup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget v0, v0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->destroy()V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/naviservice/n;->l:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    iget-object v0, v0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_Cleanup()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NaviLogic]  mGDBLMain.GDBL_Cleanup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginManager;->freeManager()V

    invoke-static {}, Lcom/mobilebox/tts/g;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/Resource;->destroy()V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/mobilebox/tts/g;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/Resource;->destroy()V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/application/Resource;->destroy()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f()Lcom/autonavi/xmgd/naviservice/n;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/n;->a:Lcom/autonavi/xmgd/naviservice/n;

    return-object v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/naviservice/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/n;->d:Z

    return v0
.end method

.method private h()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v4, v2, [Lcom/autonavi/xm/navigation/server/GVersion;

    const-string v1, ""

    const-string v0, ""

    iget-object v5, p0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    invoke-virtual {v5, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetEngineVersion([Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v5

    sget-object v6, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v5, v6, :cond_0

    new-array v5, v2, [Lcom/autonavi/xm/navigation/server/GVersion;

    iget-object v6, p0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetMapVersion(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/GVersion;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v6

    sget-object v7, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v6, v7, :cond_0

    aget-object v0, v4, v3

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    aget-object v0, v5, v3

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    :goto_0
    const-string v3, "app_version"

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v4

    iget-object v4, v4, Lcom/autonavi/xmgd/application/Resource;->mApkVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mobilebox/acra/AutoNaviCrashReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mek_version"

    invoke-static {v3, v1}, Lcom/mobilebox/acra/AutoNaviCrashReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_version"

    invoke-static {v3, v0}, Lcom/mobilebox/acra/AutoNaviCrashReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mobilebox/acra/k;->a()Lcom/mobilebox/acra/k;

    move-result-object v3

    const-string v4, "app_version"

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v5

    iget-object v5, v5, Lcom/autonavi/xmgd/application/Resource;->mApkVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mobilebox/acra/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobilebox/acra/k;

    move-result-object v3

    const-string v4, "mek_version"

    invoke-virtual {v3, v4, v1}, Lcom/mobilebox/acra/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobilebox/acra/k;

    move-result-object v1

    const-string v3, "data_version"

    invoke-virtual {v1, v3, v0}, Lcom/mobilebox/acra/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobilebox/acra/k;

    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[NaviServiceLogic] onBind"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/xmgd/naviservice/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/naviservice/p;-><init>(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xmgd/naviservice/o;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/application/Resource;->mNavidata:Ljava/lang/String;

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/application/Resource;->mAssetsDir:Ljava/lang/String;

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->ASSETSDATA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->ASSETSDATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v1

    iget-object v1, v1, Lcom/autonavi/xmgd/application/Resource;->mImageOnSDCard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->ImageOnSDCard:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yaho"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/Yaho;->load(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/n;->e:Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->ASSETSDATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_SetDataDir(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Register;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Register;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/naviservice/n;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Register;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/n;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Register;

    const-string v2, "1234567890"

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Register;->GDBL_SetCustomUUID(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/n;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Register;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Register;->GDBL_IsValidateUser()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NaviLogic]doRegister ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v2, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/naviservice/n;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Register;

    const-string v3, "024001600001100130000001"

    const/16 v4, 0x19

    invoke-virtual {v2, v3, v1, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Register;->GDBL_GetInstallCode(Ljava/lang/String;[Ljava/lang/String;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/n;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Register;

    sget-object v2, Lcom/autonavi/xmgd/application/Yaho;->ActiveCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Register;->GDBL_Register(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NaviLogic] doRegister status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 7

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/autonavi/xmgd/naviservice/n;->b:Landroid/app/Application;

    if-nez v5, :cond_0

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v5, p0, Lcom/autonavi/xmgd/naviservice/n;->m:Z

    if-nez v5, :cond_1

    iput v1, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/naviservice/n;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    if-nez v5, :cond_2

    const-string v5, "autonavi"

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    const-string v6, "Resource5.irf"

    invoke-static {v1, v5, v6, v0}, Lcom/mobilebox/tts/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobilebox/tts/g;

    invoke-static {}, Lcom/mobilebox/tts/g;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iput v2, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/naviservice/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iput v3, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    move v0, v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->c()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/naviservice/n;->h()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iput v0, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/autonavi/xmgd/naviservice/n;->c:I

    move v0, v4

    goto :goto_0
.end method

.method public g()Lcom/autonavi/xmgd/naviservice/e;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/naviservice/p;-><init>(Lcom/autonavi/xmgd/naviservice/n;Lcom/autonavi/xmgd/naviservice/o;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/n;->k:Landroid/os/IBinder;

    check-cast v0, Lcom/autonavi/xmgd/naviservice/e;

    return-object v0
.end method
