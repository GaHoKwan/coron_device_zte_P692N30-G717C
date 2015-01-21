.class public Lcom/iflytek/ui/d;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Lcom/iflytek/ui/A;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/d;->a([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/ui/d;->a([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 5

    const-string v0, "progress"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/d;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "progress"

    iget-object v3, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    invoke-static {v2, v1, v3}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    const-string v1, "progress"

    invoke-virtual {p0, v1}, Lcom/iflytek/ui/d;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "progressbar"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/d;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v3, "progress_horizontal.xml"

    invoke-static {v2, v3}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/ui/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/iflytek/ui/d;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/d;->setGravity(I)V

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "speechbox"

    invoke-static {v1, v0, p0}, Lcom/iflytek/ui/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v0, "box"

    invoke-virtual {p0, v0}, Lcom/iflytek/ui/d;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/iflytek/ui/A;

    invoke-direct {v3, v1}, Lcom/iflytek/ui/A;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    iget-object v1, p0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "drawableeditbox"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/ui/A;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/ui/d;->b:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "heighttitle"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "titlemarginleft"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "titlemargintop"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "titlemarginright"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "titlemarginbottom"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/iflytek/ui/d;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v3, "fontcolortitle"

    invoke-virtual {v1, v3}, Lcom/iflytek/ui/x;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fontsizetitle"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "box"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/iflytek/ui/d;->e:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/iflytek/ui/d;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "speechboxmarginleft"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/ui/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "speechboxmargintop"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "speechboxmarginright"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "speechboxmarginbottom"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/ui/d;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "link"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/iflytek/ui/d;->e:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/iflytek/ui/d;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "linkmarginleft"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/ui/x;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "linkmargintop"

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/ui/x;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "linkmarginright"

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/ui/x;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "linkmarginbottom"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/ui/x;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/ui/d;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v2, "fontcolorlink"

    invoke-virtual {v1, v2}, Lcom/iflytek/ui/x;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fontsizelink"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v2, "fontcolorlinktext"

    invoke-virtual {v1, v2}, Lcom/iflytek/ui/x;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/A;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fontsizehelp"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    const-string v2, "fontcolorhelp"

    invoke-virtual {v1, v2}, Lcom/iflytek/ui/x;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    const/16 v1, 0xf

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/iflytek/ui/x;->a()Lcom/iflytek/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "drawableeditbox"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/ui/x;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/ui/d;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->a:Lcom/iflytek/ui/A;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/ui/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/ui/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b([Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/iflytek/c/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/ui/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/ui/d;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
