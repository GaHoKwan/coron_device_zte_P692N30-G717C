.class public Lcom/ctc/epush/IndexActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:J

.field private b:Lcom/ctc/c/n;

.field private c:Z

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/util/List;

.field private l:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/32 v0, 0x337f9800

    iput-wide v0, p0, Lcom/ctc/epush/IndexActivity;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->l:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/ctc/epush/IndexActivity;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    return-object v0
.end method

.method private a()V
    .locals 7

    const/16 v6, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    const-string v1, "APP_UPDATA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/ctc/epush/IndexActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    const-string v1, "getPushAppTime"

    invoke-virtual {v0, v1}, Lcom/ctc/c/n;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ctc/epush/IndexActivity;->a:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ctc/epush/IndexActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ctc/epush/IndexActivity;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/ctc/epush/IndexActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ctc/epush/IndexActivity;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/ctc/epush/IndexActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/ctc/epush/IndexActivity;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ctc/epush/IndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ctc/epush/IndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ctc/epush/g;

    invoke-direct {v1, p0}, Lcom/ctc/epush/g;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ctc/epush/IndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/ctc/epush/h;

    invoke-direct {v2, p0}, Lcom/ctc/epush/h;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text"

    sget-boolean v1, Lcom/ctc/c/g;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    :cond_0
    invoke-virtual {p0, v4}, Lcom/ctc/epush/IndexActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->setContentView(I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->l:Landroid/app/NotificationManager;

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    const-string v1, "startindex"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/ctc/epush/IndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    const-string v1, "pushAppJson"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/IndexActivity;->k:Ljava/util/List;

    :cond_1
    invoke-direct {p0}, Lcom/ctc/epush/IndexActivity;->a()V

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    const-string v1, "RECEIVE_PUSH"

    new-array v2, v4, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ctc/epush/IndexActivity;->c:Z

    iget-boolean v0, p0, Lcom/ctc/epush/IndexActivity;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ctc/epush/IndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ctc/epush/a;

    invoke-direct {v1, p0}, Lcom/ctc/epush/a;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ctc/epush/b;

    invoke-direct {v1, p0}, Lcom/ctc/epush/b;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ctc/epush/c;

    invoke-direct {v1, p0}, Lcom/ctc/epush/c;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ctc/epush/d;

    invoke-direct {v1, p0}, Lcom/ctc/epush/d;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ctc/epush/e;

    invoke-direct {v1, p0}, Lcom/ctc/epush/e;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ctc/epush/IndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keyCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/IndexActivity;->b:Lcom/ctc/c/n;

    const-string v1, "startindex"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-boolean v3, Lcom/ctc/c/g;->n:Z

    invoke-virtual {p0}, Lcom/ctc/epush/IndexActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ctc/epush/f;

    invoke-direct {v1, p0}, Lcom/ctc/epush/f;-><init>(Lcom/ctc/epush/IndexActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/ctc/epush/IndexActivity;->a()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "text"

    sget-boolean v1, Lcom/ctc/c/g;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
