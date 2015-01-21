.class public Lagy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    invoke-virtual {v0}, Lage;->b()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_1
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    invoke-virtual {v0}, Lage;->b()V

    .line 108
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    iget-object v1, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage;->a(Lhk;)V

    goto :goto_0

    .line 112
    :pswitch_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    .line 113
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    invoke-virtual {v0}, Lage;->b()V

    .line 114
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v0

    iget-boolean v0, v0, Lhk;->d:Z

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    iget-object v1, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage;->b(Lhk;)V

    .line 119
    :goto_1
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v0

    iget-boolean v0, v0, Lhk;->e:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fd:I

    .line 121
    :cond_1
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    invoke-virtual {v0}, Lage;->a()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lage;

    move-result-object v0

    iget-object v1, p0, Lagy;->a:Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;->a(Lcom/sohu/inputmethod/settings/ThemeTabPreviewContainer;)Lhk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage;->c(Lhk;)V

    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x7f070208
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
