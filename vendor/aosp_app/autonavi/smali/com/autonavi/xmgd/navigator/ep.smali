.class Lcom/autonavi/xmgd/navigator/ep;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ep;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->e()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ep;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->c(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ep;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->c(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ep;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->c(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ep;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->c(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "plugin"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/aa;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/aa;->b:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getPlugin()Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->reset()I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore_warn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ep;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->d(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    return-void
.end method
