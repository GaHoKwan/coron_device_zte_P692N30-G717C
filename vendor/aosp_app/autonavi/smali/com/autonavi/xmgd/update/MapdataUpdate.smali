.class public Lcom/autonavi/xmgd/update/MapdataUpdate;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/autonavi/xmgd/update/g;


# instance fields
.field private a:Lcom/autonavi/xmgd/update/j;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/update/MapdataUpdate;)Lcom/autonavi/xmgd/update/j;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-object v0, v0, Lcom/autonavi/xmgd/update/j;->a:Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget v0, v0, Lcom/autonavi/xmgd/update/j;->b:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/update/MapdataUpdate;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/update/j;II)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->dismissDialog(I)V

    iput-object p1, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    invoke-direct {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->dismissDialog(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->showDialog(I)V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->dismissDialog(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->showDialog(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/e;->e()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isFirst"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->b:Z

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/g;)V

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/e;->d()Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-boolean v0, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/e;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->a()V

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->b:Z

    return-void

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->isConnectInternet()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->showDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/update/e;->a(I)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v1, 0x0

    const v2, 0x7f07020a

    const v4, 0x7f070016

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/update/a;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/update/a;-><init>(Lcom/autonavi/xmgd/update/MapdataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700b2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-object v1, v1, Lcom/autonavi/xmgd/update/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700d7

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070017

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/update/b;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/update/b;-><init>(Lcom/autonavi/xmgd/update/MapdataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-object v1, v1, Lcom/autonavi/xmgd/update/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700dd

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/update/c;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/update/c;-><init>(Lcom/autonavi/xmgd/update/MapdataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070015

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700ed

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/update/d;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/update/d;-><init>(Lcom/autonavi/xmgd/update/MapdataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-object v1, v1, Lcom/autonavi/xmgd/update/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/update/e;->b(Lcom/autonavi/xmgd/update/g;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isFirst"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/update/e;->a(Landroid/os/Bundle;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void

    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-object v1, v1, Lcom/autonavi/xmgd/update/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p2

    check-cast v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-object v1, v1, Lcom/autonavi/xmgd/update/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/update/MapdataUpdate;->a:Lcom/autonavi/xmgd/update/j;

    iget-object v1, v1, Lcom/autonavi/xmgd/update/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
