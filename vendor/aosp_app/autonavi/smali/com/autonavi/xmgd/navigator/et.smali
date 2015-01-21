.class Lcom/autonavi/xmgd/navigator/et;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;Z)Z

    return-void
.end method

.method public onListViewItemSelected(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/utility/ADialogListener;->onListViewItemSelected(ILjava/util/List;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_LOW:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_NORMAL:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_HIGH:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_JUMP:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->e(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->j(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->c:I

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->e(Lcom/autonavi/xmgd/navigator/NaviSetting;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->k(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v0, v3}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/et;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;Z)Z

    return-void
.end method
