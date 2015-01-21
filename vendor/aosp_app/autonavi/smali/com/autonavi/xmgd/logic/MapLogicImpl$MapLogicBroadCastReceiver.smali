.class public Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/Class;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->r()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    new-instance v2, Lcom/autonavi/xmgd/logic/x;

    invoke-direct {v2, p0, v1, p1}, Lcom/autonavi/xmgd/logic/x;-><init>(Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;Lcom/autonavi/xmgd/e/k;I)V

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    new-instance v2, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v2}, Lcom/autonavi/xmgd/f/z;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/autonavi/xmgd/e/k;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/f/z;->a(I)V

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/z;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/high16 v5, 0x1000

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.autonavi.xmgd.plugin.action.callcenter.show_callcenter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "callcenter_btn_switch"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->a(Z)V

    goto :goto_0

    :cond_3
    const-string v4, "com.autonavi.xmgd.plugin.action.ar.status"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    const-string v1, "ar_status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_ZOOM_VIEW_MODE:Lcom/autonavi/xm/navigation/server/GParam;

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomViewMode;->GZOOM_VIEW_MODE_VECTOR:Lcom/autonavi/xm/navigation/server/map/GZoomViewMode;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GZoomViewMode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->c(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_ZOOM_VIEW_MODE:Lcom/autonavi/xm/navigation/server/GParam;

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GZoomViewMode;->GZOOM_VIEW_MODE_VECTOR:Lcom/autonavi/xm/navigation/server/map/GZoomViewMode;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GZoomViewMode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :cond_5
    const-string v4, "com.autonavi.xmgd.plugin.action.highwaymode.status"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    const-string v1, "highway_mode_status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->aj()V

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->g(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    goto/16 :goto_0

    :cond_7
    const-string v4, "com.plugin.action.chonfig_change"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v3, "plugin_config_name"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_0

    const-string v2, "plugin_config_new_value"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_8
    if-ne v2, v1, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_9
    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0

    :cond_a
    const-string v4, "com.plugin.action.play_tts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v0, "plugin_playtts_content"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v3, v0, v1, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "com.plugin.action.exit_app"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.exit_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v4, "com.plugin.action.restart_app.tob"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.restart_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.autonavi.xmgd.plugin.action.navigator_record.status"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "record_status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->e(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->h(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->b(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->f(Lcom/autonavi/xmgd/logic/MapLogicImpl;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->h(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/c;->b(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v4, "com.plugin.installapk.speechcommand.sendaction"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "id"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "autonavi60"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map reveiver id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v4, v3}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Lcom/autonavi/xmgd/logic/MapLogicImpl;I)I

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    :pswitch_5
    const-class v0, Lcom/autonavi/xmgd/f/g;

    invoke-direct {p0, v3, v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a(ILjava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_6
    const-class v0, Lcom/autonavi/xmgd/f/c;

    invoke-direct {p0, v3, v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a(ILjava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_7
    const-class v0, Lcom/autonavi/xmgd/f/t;

    invoke-direct {p0, v3, v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a(ILjava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v4

    sget-object v5, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/autonavi/xmgd/naviservice/q;->v(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v4

    if-nez v4, :cond_f

    :goto_2
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v1, v3, v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v0, :cond_10

    move v0, v1

    goto :goto_2

    :cond_10
    move v0, v2

    goto :goto_2

    :pswitch_9
    const-string v0, "bundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "lon"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "lat"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v6, v4, v5}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    new-instance v4, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v4, v6}, Lcom/autonavi/xmgd/e/k;-><init>(Lcom/autonavi/xm/navigation/server/GCoord;)V

    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    const-string v5, "address"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    const-string v5, "tel"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    const-string v5, "pguid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v0, :cond_11

    :goto_3
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_11
    move v1, v2

    goto :goto_3

    :pswitch_a
    const-class v0, Lcom/autonavi/xmgd/f/q;

    invoke-direct {p0, v3, v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a(ILjava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v4

    sget-object v5, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/autonavi/xmgd/naviservice/q;->w(Ljava/lang/String;)Lcom/autonavi/xmgd/e/c;

    move-result-object v4

    if-nez v4, :cond_12

    :goto_4
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v1, v3, v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v0, :cond_13

    move v0, v1

    goto :goto_4

    :cond_13
    move v0, v2

    goto :goto_4

    :pswitch_c
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->K()I

    move-result v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/autonavi/xmgd/naviservice/w;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v4, v0, :cond_14

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v0, :cond_15

    :cond_14
    move v2, v1

    :cond_15
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :pswitch_d
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/w;->d()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v0, :cond_16

    :goto_5
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_16
    move v1, v2

    goto :goto_5

    :pswitch_e
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->h()V

    :goto_6
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_7
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_7

    :pswitch_12
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v4, Lcom/autonavi/xmgd/naviservice/l;->e:I

    invoke-virtual {v0, v4, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_8
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_18
    move v1, v2

    goto :goto_8

    :pswitch_13
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v4, Lcom/autonavi/xmgd/naviservice/l;->e:I

    invoke-virtual {v0, v4, v1}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_9
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_19
    move v1, v2

    goto :goto_9

    :pswitch_14
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->g()V

    :goto_a
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/z;->c()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->d(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/z;->d()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.plugin.installapk.realtraffic.updatebtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "update_manual_button"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setPluginExist_RTTC(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/MapLogicImpl$MapLogicBroadCastReceiver;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->j()V

    goto/16 :goto_0

    :cond_1b
    move v1, v2

    goto :goto_a

    :cond_1c
    move v1, v2

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
