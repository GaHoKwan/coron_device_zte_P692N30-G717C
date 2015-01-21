.class public Lcom/autonavi/xmgd/navigator/MainMenu;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# static fields
.field public static a:I


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/view/GDMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListAdapter;

.field private d:Landroid/widget/ListView;

.field private e:Z

.field private f:Lcom/autonavi/xmgd/navigator/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/xmgd/navigator/MainMenu;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/MainMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/autonavi/xmgd/navigator/bj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/bj;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Lcom/autonavi/xmgd/navigator/ax;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->f:Lcom/autonavi/xmgd/navigator/bj;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.autonavi.xmgd.plugin.action.callcenter.finish_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->f:Lcom/autonavi/xmgd/navigator/bj;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/MainMenu;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 7

    const v6, 0x7f0700b3

    const v5, 0x7f0700b2

    const v4, 0x7f0700b0

    const v3, 0x7f0700af

    const v2, 0x7f0700ad

    new-instance v0, Lcom/autonavi/xmgd/navigator/ax;

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ax;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/bb;

    invoke-static {p0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/bb;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/bc;

    invoke-static {p0, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/bc;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/bd;

    invoke-static {p0, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/bd;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/be;

    invoke-static {p0, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/be;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/bf;

    const v1, 0x7f0700b5

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/bf;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/bg;

    const v1, 0x7f0700b7

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/bg;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setTitleId(I)V

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDMenuItem;->setIconId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .locals 2

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->setContentView(I)V

    const v0, 0x7f0c017f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    new-instance v0, Lcom/autonavi/xmgd/navigator/bk;

    invoke-direct {v0, p0, p0}, Lcom/autonavi/xmgd/navigator/bk;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->c:Landroid/widget/ListAdapter;

    const v0, 0x7f0c0180

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->d:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->d:Landroid/widget/ListView;

    sget v1, Lcom/autonavi/xmgd/navigator/MainMenu;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/bh;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/bh;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/bi;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/bi;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/MainMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.exit_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->b()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->c()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->a()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ay;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ay;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001d

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001e

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070019

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v2, Lcom/autonavi/xmgd/navigator/az;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/az;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V

    invoke-direct {v0, p0, v4, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    const v2, 0x7f0701c4

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const v0, 0x7f0700b8

    invoke-static {p0, v0}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const v0, 0x7f0700b2

    invoke-static {p0, v0}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v2, Lcom/autonavi/xmgd/navigator/ba;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/ba;-><init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V

    invoke-direct {v0, p0, v4, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    const v2, 0x7f0700b1

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->f:Lcom/autonavi/xmgd/navigator/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->f:Lcom/autonavi/xmgd/navigator/bj;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->e:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/MainMenu;->e:Z

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
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V
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

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/MainMenu;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/MainMenu;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f07001e

    invoke-static {p0, v0}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onRestart()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MainMenu;->c()V

    goto :goto_0
.end method
