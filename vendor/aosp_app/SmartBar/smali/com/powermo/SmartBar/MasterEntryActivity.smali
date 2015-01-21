.class public Lcom/powermo/SmartBar/MasterEntryActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/widget/Switch;

.field private c:Landroid/content/ContentResolver;

.field private d:Lcom/powermo/SmartBar/bn;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->b:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->c:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->d:Lcom/powermo/SmartBar/bn;

    return-void
.end method

.method private a()Landroid/app/Dialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/powermo/SmartBar/bd;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bd;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/powermo/SmartBar/be;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/be;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->c:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->b:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/MasterEntryActivity;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lcom/powermo/SmartBar/MasterEntryActivity;->a()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->setContentView(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->c:Landroid/content/ContentResolver;

    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->b:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/MasterEntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/powermo/SmartBar/dc;->n:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->b:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->b:Landroid/widget/Switch;

    new-instance v2, Lcom/powermo/SmartBar/bc;

    invoke-direct {v2, p0}, Lcom/powermo/SmartBar/bc;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/powermo/SmartBar/dc;->A:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bf;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bf;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bg;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bg;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bh;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bh;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bi;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bi;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/powermo/SmartBar/dc;->z:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bj;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bj;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bk;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bk;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bl;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bl;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/bm;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bm;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v0, Lcom/powermo/SmartBar/bn;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/bn;-><init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->d:Lcom/powermo/SmartBar/bn;

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->d:Lcom/powermo/SmartBar/bn;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bn;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/MasterEntryActivity;->d:Lcom/powermo/SmartBar/bn;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bn;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
