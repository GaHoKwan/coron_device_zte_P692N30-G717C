.class public Lcom/autonavi/xmgd/navigator/Feedback;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/view/GDMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ListAdapter;

.field private c:Landroid/widget/ListView;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/Feedback;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 6

    const v5, 0x7f0700f8

    const v4, 0x7f0700f6

    const v3, 0x7f0700f5

    const v2, 0x7f0700f4

    new-instance v0, Lcom/autonavi/xmgd/navigator/ab;

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ab;-><init>(Lcom/autonavi/xmgd/navigator/Feedback;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Feedback;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/ac;

    invoke-static {p0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ac;-><init>(Lcom/autonavi/xmgd/navigator/Feedback;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Feedback;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/ad;

    invoke-static {p0, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ad;-><init>(Lcom/autonavi/xmgd/navigator/Feedback;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Feedback;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/ae;

    invoke-static {p0, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ae;-><init>(Lcom/autonavi/xmgd/navigator/Feedback;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Feedback;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .locals 2

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Feedback;->setContentView(I)V

    const v0, 0x7f0c017f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    new-instance v0, Lcom/autonavi/xmgd/navigator/ah;

    invoke-direct {v0, p0, p0}, Lcom/autonavi/xmgd/navigator/ah;-><init>(Lcom/autonavi/xmgd/navigator/Feedback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->b:Landroid/widget/ListAdapter;

    const v0, 0x7f0c0180

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/Feedback;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->c:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/af;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/af;-><init>(Lcom/autonavi/xmgd/navigator/Feedback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->b()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ag;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ag;-><init>(Lcom/autonavi/xmgd/navigator/Feedback;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700f9

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070019

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/Feedback;->d:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/Feedback;->d:Z

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
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/Feedback;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/Feedback;->startActivity(Landroid/content/Intent;)V
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/Feedback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/Feedback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
