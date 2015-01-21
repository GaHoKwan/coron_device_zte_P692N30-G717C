.class public Lcom/sohu/inputmethod/ui/ContactItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "1 arg constructor"

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/ContactItemView;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "2 arg constructor"

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/ContactItemView;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/ContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->a:Landroid/widget/TextView;

    .line 34
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/ContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->b:Landroid/widget/TextView;

    .line 36
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/ui/ContactItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->a:Landroid/widget/CheckBox;

    .line 37
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const-string v0, "onDrawwwwwwwwwwwwwwwwwwwww"

    invoke-static {v0}, Lcom/sohu/inputmethod/ui/ContactItemView;->a(Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/ContactItemView;->a()V

    .line 62
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/ContactItemView;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 49
    return-void
.end method
