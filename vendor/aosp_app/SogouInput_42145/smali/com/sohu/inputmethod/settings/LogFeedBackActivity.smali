.class public Lcom/sohu/inputmethod/settings/LogFeedBackActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Dialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/TextView;

.field private a:Lrr;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f0700eb

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->b:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->b:Landroid/widget/TextView;

    new-instance v1, Laeg;

    invoke-direct {v1, p0}, Laeg;-><init>(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0700f0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/widget/TextView;

    new-instance v1, Laei;

    invoke-direct {v1, p0}, Laei;-><init>(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0700ed

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/widget/Button;

    new-instance v1, Laek;

    invoke-direct {v1, p0}, Laek;-><init>(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0700ee

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->b:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->b:Landroid/widget/Button;

    new-instance v1, Lael;

    invoke-direct {v1, p0}, Lael;-><init>(Lcom/sohu/inputmethod/settings/LogFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Lrr;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Logs"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrr;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iput-object p0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/content/Context;

    .line 43
    new-instance v0, Lrr;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Lrr;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a()V

    .line 48
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    invoke-virtual {v0}, Lamo;->a()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->a:Lrr;

    .line 129
    const v0, 0x7f0700e9

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 123
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/LogFeedBackActivity;->finish()V

    .line 124
    return-void
.end method
