.class Lcom/autonavi/xmgd/navigator/jz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/m;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Start;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->g(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->g(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->g(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x4

    const/4 v5, 0x1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start]onCallback ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NaviLogic] Start onCallback onCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/jz;->a()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-string v1, "\u6b64\u7248\u672c\u4e3adebug\u7248\u672c"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v6}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->c(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/logic/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/f;->c()V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->e()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->d(Lcom/autonavi/xmgd/navigator/Start;)F

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xmgd/application/NaviApplication;->setStatusBarHeight(F)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-class v2, Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Start;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/jz;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/jz;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/jz;->a()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    :sswitch_c
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->e(Lcom/autonavi/xmgd/navigator/Start;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->f(Lcom/autonavi/xmgd/navigator/Start;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/navigator/Start;->a(Lcom/autonavi/xmgd/navigator/Start;Z)Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-string v1, "TTS\u521d\u59cb\u5316\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->a(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-string v1, "\u63d2\u4ef6\u521d\u59cb\u5316\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->a(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-string v1, "yaho\u521d\u59cb\u5316\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->a(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-string v1, "app \u521d\u59cb\u5316\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->a(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Start;->b(Lcom/autonavi/xmgd/navigator/Start;)Lcom/autonavi/xmgd/logic/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/l;->d()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const v2, 0x7f0700f2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->b(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const v2, 0x7f0700f1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->b(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const v3, 0x7f070226

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/xmgd/navigator/Start;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Start;->c(Lcom/autonavi/xmgd/navigator/Start;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jz;->a:Lcom/autonavi/xmgd/navigator/Start;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Start;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_1
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_b
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_d
        0x9 -> :sswitch_0
        0xa -> :sswitch_a
        0xb -> :sswitch_e
        0xc -> :sswitch_f
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_0
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0xc9 -> :sswitch_12
        0xca -> :sswitch_13
        0xcb -> :sswitch_12
    .end sparse-switch
.end method
