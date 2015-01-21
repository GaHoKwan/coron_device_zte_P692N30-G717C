.class public Lcom/ctc/epush/PushResultDialogActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/ctc/epush/aj;

.field private f:Ljava/util/List;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ctc/epush/PushResultDialogActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/ctc/epush/PushResultDialogActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/ctc/epush/PushResultDialogActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/ctc/epush/PushResultDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushResultDialogActivity;->requestWindowFeature(I)Z

    iput-object p0, p0, Lcom/ctc/epush/PushResultDialogActivity;->g:Landroid/content/Context;

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushResultDialogActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ctc/epush/PushResultDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pushModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ctc/a/c;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ctc/epush/PushResultDialogActivity;->finish()V

    :cond_1
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushResultDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushResultDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushResultDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->h:Landroid/widget/Button;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushResultDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->d:Landroid/widget/ListView;

    new-instance v0, Lcom/ctc/epush/aj;

    iget-object v1, p0, Lcom/ctc/epush/PushResultDialogActivity;->f:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/ctc/epush/aj;-><init>(Lcom/ctc/epush/PushResultDialogActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->e:Lcom/ctc/epush/aj;

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ctc/epush/PushResultDialogActivity;->e:Lcom/ctc/epush/aj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushResultDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ctc/epush/ag;

    invoke-direct {v1, p0}, Lcom/ctc/epush/ag;-><init>(Lcom/ctc/epush/PushResultDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/ctc/epush/ah;

    invoke-direct {v1, p0}, Lcom/ctc/epush/ah;-><init>(Lcom/ctc/epush/PushResultDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/PushResultDialogActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/ctc/epush/ai;

    invoke-direct {v1, p0}, Lcom/ctc/epush/ai;-><init>(Lcom/ctc/epush/PushResultDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushResultDialog.onCreate.Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    new-instance v1, Lcom/ctc/c/n;

    invoke-direct {v1, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    const-string v2, "startindex"

    new-array v3, v0, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p0}, Lcom/ctc/epush/PushResultDialogActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
