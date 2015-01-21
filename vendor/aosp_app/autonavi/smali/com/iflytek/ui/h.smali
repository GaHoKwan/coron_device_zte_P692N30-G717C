.class public Lcom/iflytek/ui/h;
.super Landroid/widget/LinearLayout;


# instance fields
.field protected a:Lcom/iflytek/ui/d;

.field protected b:Landroid/graphics/drawable/Drawable;

.field protected c:Landroid/graphics/drawable/Drawable;

.field protected d:Landroid/graphics/drawable/Drawable;

.field protected e:Z

.field protected f:Z

.field private g:Lcom/iflytek/ui/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/h;->g:Lcom/iflytek/ui/i$a;

    iput-object v0, p0, Lcom/iflytek/ui/h;->a:Lcom/iflytek/ui/d;

    iput-object v0, p0, Lcom/iflytek/ui/h;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/h;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/h;->d:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/iflytek/ui/h;->e:Z

    iput-boolean v1, p0, Lcom/iflytek/ui/h;->f:Z

    invoke-static {p1}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;)Lcom/iflytek/ui/x;

    invoke-virtual {p0}, Lcom/iflytek/ui/h;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/iflytek/ui/h;->g:Lcom/iflytek/ui/i$a;

    iput-object v0, p0, Lcom/iflytek/ui/h;->a:Lcom/iflytek/ui/d;

    iput-object v0, p0, Lcom/iflytek/ui/h;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/h;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/ui/h;->d:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/iflytek/ui/h;->e:Z

    iput-boolean v1, p0, Lcom/iflytek/ui/h;->f:Z

    invoke-static {p1}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;)Lcom/iflytek/ui/x;

    invoke-virtual {p0}, Lcom/iflytek/ui/h;->b()V

    return-void
.end method

.method protected static a(Landroid/view/ViewGroup;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/h;->g:Lcom/iflytek/ui/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/h;->g:Lcom/iflytek/ui/i$a;

    invoke-interface {v0}, Lcom/iflytek/ui/i$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/ui/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/h;->g:Lcom/iflytek/ui/i$a;

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/ui/h;->e:Z

    iput-boolean p2, p0, Lcom/iflytek/ui/h;->f:Z

    return-void
.end method

.method protected b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/ui/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statelistbuttonleft"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/ui/x;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/h;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/ui/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statelistbuttonright"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/ui/x;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/ui/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statelistbutton"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/ui/x;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/ui/h;->d:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/h;->a:Lcom/iflytek/ui/d;

    invoke-static {v0}, Lcom/iflytek/ui/h;->a(Landroid/view/ViewGroup;)Z

    invoke-static {p0}, Lcom/iflytek/ui/h;->a(Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
