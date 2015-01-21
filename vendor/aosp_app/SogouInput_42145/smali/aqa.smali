.class public Laqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laoq;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 3162
    iput-object p1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(III)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3165
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->v(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3166
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3167
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3168
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3169
    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 3170
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v3, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3171
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3172
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v1

    const v3, 0x7f020099

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 3173
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3174
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3175
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b04a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 3176
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const v3, 0x7f0b0249

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3177
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v6

    const/4 v7, -0x1

    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const v1, 0x7f0b02ab

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Laqb;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Laqb;-><init>(Laqa;Landroid/widget/CheckBox;III)V

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3186
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laqc;

    invoke-direct {v3, p0}, Laqc;-><init>(Laqa;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3193
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3199
    :cond_0
    :goto_0
    return-void

    .line 3195
    :cond_1
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Laqa;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3162
    invoke-direct {p0, p1, p2, p3}, Laqa;->b(III)V

    return-void
.end method

.method private b(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3201
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3202
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 3222
    :cond_0
    :goto_0
    return-void

    .line 3205
    :cond_1
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3207
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3210
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 3211
    :cond_2
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h()V

    .line 3212
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 3213
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laxw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3214
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laxw;

    move-result-object v0

    invoke-virtual {v0}, Laxw;->b()V

    .line 3215
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->x(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0

    .line 3218
    :cond_3
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 3219
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 3220
    invoke-direct {p0, p1, p2, p3}, Laqa;->c(III)V

    goto :goto_0
.end method

.method private c(III)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3226
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 3258
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 3248
    :goto_1
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()Lawx;

    move-result-object v0

    invoke-virtual {v0}, Lawx;->f()I

    move-result v0

    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 3249
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3250
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3252
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a()Lawx;

    move-result-object v0

    invoke-virtual {v0}, Lawx;->f()I

    move-result v0

    .line 3253
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_2

    .line 3254
    mul-int/lit8 v0, v0, -0x1

    .line 3256
    :cond_2
    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v2, Larz;->f:Larz;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v7, v3, v6

    const/4 v0, 0x3

    aput-object v7, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    .line 3257
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 3230
    :pswitch_0
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Larz;->a:Larz;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multimedia"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3233
    :pswitch_1
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Larz;->a:Larz;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "expression"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3236
    :pswitch_2
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Larz;->a:Larz;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "mode"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3239
    :pswitch_3
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Larz;->a:Larz;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "edit"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3242
    :pswitch_4
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Larz;->a:Larz;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "mic"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3245
    :pswitch_5
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Larz;->a:Larz;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "set"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3266
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3261
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/lang/CharSequence;III)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 3274
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 3432
    :cond_0
    :goto_0
    return v7

    .line 3279
    :cond_1
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3280
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    goto :goto_0

    .line 3283
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3285
    :pswitch_0
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3288
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3290
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3293
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 3294
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    goto :goto_0

    .line 3296
    :cond_3
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->u()Z

    .line 3297
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3298
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dP:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dP:I

    .line 3299
    :cond_4
    invoke-direct {p0, p1, p4, p5}, Laqa;->c(III)V

    goto :goto_0

    .line 3303
    :pswitch_1
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3306
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3308
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3311
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 3312
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    goto :goto_0

    .line 3314
    :cond_5
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->v()Z

    .line 3315
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3316
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ff:I

    .line 3317
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->c:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3318
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fi:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fi:I

    .line 3322
    :cond_6
    invoke-direct {p0, p1, p4, p5}, Laqa;->c(III)V

    goto/16 :goto_0

    .line 3326
    :pswitch_2
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3329
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3331
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3334
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 3335
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 3352
    :goto_1
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cS:I

    goto/16 :goto_0

    .line 3337
    :cond_7
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 3338
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->y(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3340
    :cond_8
    new-array v4, v2, [I

    .line 3341
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getLocationOnScreen([I)V

    .line 3342
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->z(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3343
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;

    move-result-object v0

    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v1

    iget v1, v1, Lasd;->b:I

    iget-object v2, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v2

    iget-object v3, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c()I

    move-result v3

    aget v4, v4, v5

    add-int/2addr v4, p3

    iget-object v5, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)[I

    move-result-object v5

    iget-object v6, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->setData(IIII[II)V

    .line 3349
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->A(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3350
    invoke-direct {p0, p1, p4, p5}, Laqa;->c(III)V

    goto :goto_1

    .line 3356
    :pswitch_3
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3359
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3361
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3364
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 3365
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 3386
    :goto_2
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3387
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cP:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cP:I

    goto/16 :goto_0

    .line 3367
    :cond_9
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/ui/EditViewContainer;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3368
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->B(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3370
    :cond_a
    new-array v4, v2, [I

    .line 3371
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getLocationOnScreen([I)V

    .line 3372
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->z(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3373
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/ui/EditViewContainer;

    move-result-object v0

    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->j()Z

    move-result v1

    iget-object v2, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v2

    iget-object v3, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getHeight()I

    move-result v3

    aget v4, v4, v5

    add-int/2addr v4, p3

    iget-object v5, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)[I

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->setData(ZIII[I)V

    .line 3378
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3379
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3380
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->k()V

    .line 3383
    :cond_b
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3384
    invoke-direct {p0, p1, p4, p5}, Laqa;->c(III)V

    goto/16 :goto_2

    .line 3391
    :pswitch_4
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->x(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3392
    invoke-direct {p0, p1, p4, p5}, Laqa;->b(III)V

    goto/16 :goto_0

    .line 3394
    :cond_c
    invoke-direct {p0, p1, p4, p5}, Laqa;->a(III)V

    goto/16 :goto_0

    .line 3400
    :pswitch_5
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cZ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cZ:I

    .line 3401
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3404
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3406
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3409
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 3410
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    goto/16 :goto_0

    .line 3412
    :cond_d
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 3413
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->D(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3414
    :cond_e
    new-array v3, v2, [I

    .line 3415
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getLocationOnScreen([I)V

    .line 3416
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->z(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3417
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v0

    if-gez v0, :cond_f

    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->E(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3418
    :cond_f
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;

    move-result-object v0

    iget-object v1, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v1

    iget-object v2, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c()I

    move-result v2

    aget v3, v3, v5

    add-int/2addr v3, p3

    iget-object v4, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)[I

    move-result-object v4

    iget-object v5, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/SettingsEntranceContainer;->setData(III[II)V

    .line 3424
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 3425
    iget-object v0, p0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->F(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 3426
    invoke-direct {p0, p1, p4, p5}, Laqa;->c(III)V

    goto/16 :goto_0

    .line 3283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3270
    const/4 v0, 0x0

    return v0
.end method
