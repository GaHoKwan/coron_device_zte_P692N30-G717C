.class public Lcom/autonavi/xmgd/navigator/SelectPath_Available;
.super Lcom/autonavi/xmgd/controls/GDBaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/autonavi/xmgd/view/GDTitle;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private o:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private p:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private q:Lcom/autonavi/xmgd/navigator/jd;

.field private r:Lcom/autonavi/xmgd/navigator/jc;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->l:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->m:Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/jc;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/jc;-><init>(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->r:Lcom/autonavi/xmgd/navigator/jc;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)Lcom/autonavi/xmgd/utility/CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SelectPath_Available;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "paths"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v3, :cond_0

    iput-boolean v3, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->m:Z

    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->m:Z

    if-eqz v1, :cond_4

    aget-object v1, v0, v2

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->isInnerStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->j:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_available"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->l:Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "mSearchTask"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/navigator/jd;

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->r:Lcom/autonavi/xmgd/navigator/jc;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/navigator/jd;->a(Lcom/autonavi/xmgd/navigator/jc;)V

    :cond_1
    const-string v1, "selectedPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->j:Ljava/lang/String;

    goto :goto_0

    :cond_4
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 8

    const v7, 0x7f0c0177

    const v6, 0x7f0701bc

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v0, 0x7f0c0164

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->a:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->a:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f0701b8

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->a:Lcom/autonavi/xmgd/view/GDTitle;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDTitle;->getLeftView()Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0c0169

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->b:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->b:Landroid/widget/TextView;

    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0c016a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/xmgd/utility/Tool;->getAvailaleSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c016c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->e:Landroid/widget/ImageView;

    const v0, 0x7f0c0170

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->f:Landroid/view/View;

    const v0, 0x7f0c0175

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->g:Landroid/widget/TextView;

    const v0, 0x7f0c0172

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->h:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c:Landroid/view/View;

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v7}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c0176

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0c0167

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0166

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->b:Landroid/widget/TextView;

    const v1, 0x7f0701be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->b:Landroid/widget/TextView;

    const v1, 0x7f0701c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/xmgd/utility/Tool;->getAvailaleSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v7}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)Lcom/autonavi/xmgd/navigator/jd;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c()V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c()V

    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xmgd/navigator/jd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/navigator/jd;-><init>(Lcom/autonavi/xmgd/navigator/jc;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->r:Lcom/autonavi/xmgd/navigator/jc;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/jd;->a(Lcom/autonavi/xmgd/navigator/jc;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    new-array v1, v2, [Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/jd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->showDialog(I)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0701c1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c()V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autonavidata60tob/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    :cond_0
    const-string v2, "path"

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x2766

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->h()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->d()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->e()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->f()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->g()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->h()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0c0166 -> :sswitch_4
        0x7f0c0167 -> :sswitch_3
        0x7f0c016a -> :sswitch_0
        0x7f0c0170 -> :sswitch_1
        0x7f0c0177 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->b()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->c()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x0

    const v2, 0x7f07020a

    const v6, 0x7f070016

    const/4 v3, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070070

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/iz;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/iz;-><init>(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->n:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ja;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ja;-><init>(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V

    invoke-direct {v0, p0, v5, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->o:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/jb;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/jb;-><init>(Lcom/autonavi/xmgd/navigator/SelectPath_Available;)V

    invoke-direct {v0, p0, v5, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701c3

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->p:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mSearchTask"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->q:Lcom/autonavi/xmgd/navigator/jd;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "selectedPath"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SelectPath_Available;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
