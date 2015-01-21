.class Lcom/autonavi/xmgd/navigator/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/DspEdit;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->b(Lcom/autonavi/xmgd/navigator/DspEdit;)I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->valueOf(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->c(Lcom/autonavi/xmgd/navigator/DspEdit;)S

    move-result v1

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->d(Lcom/autonavi/xmgd/navigator/DspEdit;)I

    move-result v0

    if-ne v0, v4, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    const-string v1, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->e(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/g;Lcom/autonavi/xmgd/e/g;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/e/g;->b()Lcom/autonavi/xmgd/e/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;Lcom/autonavi/xmgd/e/g;)Lcom/autonavi/xmgd/e/g;

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/o;->a:Lcom/autonavi/xmgd/navigator/DspEdit;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/g;)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_1
.end method
