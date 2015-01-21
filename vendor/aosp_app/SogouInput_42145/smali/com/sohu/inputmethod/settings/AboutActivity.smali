.class public Lcom/sohu/inputmethod/settings/AboutActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AboutActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcom/sohu/inputmethod/settings/AboutActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/settings/AboutActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AboutActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput p1, p0, Lcom/sohu/inputmethod/settings/AboutActivity;->a:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/AboutActivity;->setContentView(I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/settings/AboutActivity;->a:I

    .line 26
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AboutActivity;->a:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AboutActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lzc;

    invoke-direct {v1, p0}, Lzc;-><init>(Lcom/sohu/inputmethod/settings/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
