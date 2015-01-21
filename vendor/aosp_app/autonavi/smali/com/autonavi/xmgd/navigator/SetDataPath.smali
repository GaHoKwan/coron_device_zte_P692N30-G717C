.class public Lcom/autonavi/xmgd/navigator/SetDataPath;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/autonavi/xmgd/view/GDTitle;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Ljava/lang/String;

.field private g:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private h:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private i:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private j:Lcom/autonavi/xmgd/navigator/jl;

.field private k:Lcom/autonavi/xmgd/navigator/jk;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    new-instance v0, Lcom/autonavi/xmgd/navigator/jk;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/jk;-><init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->k:Lcom/autonavi/xmgd/navigator/jk;

    const-string v0, "[\u4e00-\u9fa5]"

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SetDataPath;)Lcom/autonavi/xmgd/utility/CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SetDataPath;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "mSearchTask"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/navigator/jl;

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->k:Lcom/autonavi/xmgd/navigator/jk;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/navigator/jl;->a(Lcom/autonavi/xmgd/navigator/jk;)V

    :cond_0
    const-string v1, "mPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const v0, 0x7f0c0178

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->a:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->a:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c0179

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c017b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->c:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/je;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/je;-><init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c017a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->d:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jf;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jf;-><init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c017c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->e:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jg;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jg;-><init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata60tob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u8def\u5f84\u4e2d\u4e0d\u80fd\u5305\u542b\u4e2d\u6587!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->f()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->c()V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xmgd/navigator/jl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/navigator/jl;-><init>(Lcom/autonavi/xmgd/navigator/jk;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->k:Lcom/autonavi/xmgd/navigator/jk;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/jl;->a(Lcom/autonavi/xmgd/navigator/jk;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    new-array v1, v2, [Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/jl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/SetDataPath;->showDialog(I)V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->d()V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->f()V

    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->e()V

    return-void
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/SetDataPath;)Lcom/autonavi/xmgd/navigator/jl;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    return-object v0
.end method

.method private f()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autonavidata60tob"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    :cond_0
    const-string v2, "path"

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x2766

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->finish()V

    return-void
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/SetDataPath;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->f()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x0

    const v3, 0x7f07020a

    const v5, 0x7f070016

    const/4 v2, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070070

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jh;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jh;-><init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->g:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ji;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ji;-><init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    invoke-direct {v0, p0, v4, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070171

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->h:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jj;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jj;-><init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    invoke-direct {v0, p0, v4, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070172

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->i:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->e()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
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

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mSearchTask"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->j:Lcom/autonavi/xmgd/navigator/jl;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mPath"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SetDataPath;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
