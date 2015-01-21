.class public Laul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 164
    if-nez v0, :cond_3

    .line 165
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)Lage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)Lage;

    move-result-object v0

    invoke-virtual {v0}, Lage;->h()V

    goto :goto_1

    .line 155
    :pswitch_2
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)Laaq;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)Laaq;

    move-result-object v0

    invoke-virtual {v0}, Laaq;->b()V

    goto :goto_1

    .line 166
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 167
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Z)V

    goto :goto_0

    .line 168
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 169
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    const v1, 0x7f0701d7

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lafp;->H(Z)V

    .line 173
    iget-object v0, p0, Laul;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
