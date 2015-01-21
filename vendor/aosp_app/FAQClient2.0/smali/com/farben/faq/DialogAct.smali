.class public Lcom/farben/faq/DialogAct;
.super Landroid/app/Activity;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2b03

    sput v0, Lcom/farben/faq/DialogAct;->a:I

    const/16 v0, 0x2b04

    sput v0, Lcom/farben/faq/DialogAct;->b:I

    const/16 v0, 0x2b05

    sput v0, Lcom/farben/faq/DialogAct;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/farben/faq/c;

    invoke-direct {v0, p0}, Lcom/farben/faq/c;-><init>(Lcom/farben/faq/DialogAct;)V

    iput-object v0, p0, Lcom/farben/faq/DialogAct;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/farben/faq/DialogAct;->a:I

    return v0
.end method

.method static synthetic a(Lcom/farben/faq/DialogAct;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/DialogAct;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/farben/faq/DialogAct;Lcom/farben/faq/b/h;)V
    .locals 8

    const/4 v7, 0x2

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/farben/faq/DialogAct;->setContentView(I)V

    if-eqz p1, :cond_0

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "update_action"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/farben/faq/b/h;->g()I

    move-result v4

    if-ne v4, v7, :cond_1

    const-string v2, "common_close"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v2, 0x7f0800ae

    invoke-virtual {p0, v2}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "common_check_version"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update_find"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/farben/faq/b/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "update_size"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/farben/faq/b/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/farben/faq/b/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v4, v7, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "update_warnmsg"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_1
    const v2, 0x7f0800af

    invoke-virtual {p0, v2}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/farben/faq/e;

    invoke-direct {v2, p0, p1}, Lcom/farben/faq/e;-><init>(Lcom/farben/faq/DialogAct;Lcom/farben/faq/b/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/farben/faq/f;

    invoke-direct {v0, p0, v4}, Lcom/farben/faq/f;-><init>(Lcom/farben/faq/DialogAct;I)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "common_cancel"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    move-object v3, v2

    goto :goto_1
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/farben/faq/DialogAct;->b:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/farben/faq/DialogAct;->c:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/farben/faq/DialogAct;->setContentView(I)V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "common_kindlyreminder"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "update_ing"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "common_cancel"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/farben/faq/d;

    invoke-direct {v1, p0}, Lcom/farben/faq/d;-><init>(Lcom/farben/faq/DialogAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/farben/faq/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farben/faq/g;-><init>(Lcom/farben/faq/DialogAct;B)V

    invoke-virtual {v0}, Lcom/farben/faq/g;->start()V

    return-void
.end method
