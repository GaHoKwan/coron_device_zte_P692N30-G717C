.class Lcom/autonavi/xmgd/navigator/ey;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

.field private synthetic b:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iput-object p2, p0, Lcom/autonavi/xmgd/navigator/ey;->a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;Z)Z

    return-void
.end method

.method public onListViewItemSelected(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/utility/ADialogListener;->onListViewItemSelected(ILjava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->c(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->o(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "seting number"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ey;->a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    invoke-interface {v2, v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->setSettingNum(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getDialogType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/16 v0, 0x8

    new-array v2, v0, [C

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    const/16 v3, 0x30

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    array-length v0, v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v3, v0

    const/16 v3, 0x31

    aput-char v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->c(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    :cond_2
    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->c(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->o(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "seting number"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ey;->a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->setSettingNum(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getDialogType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->p(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->p(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->setIndex(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->e(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->f(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ey;->a:Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ey;->b:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->e(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->setIndex(I)V

    goto :goto_0
.end method
