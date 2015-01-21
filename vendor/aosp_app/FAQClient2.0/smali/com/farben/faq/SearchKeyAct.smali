.class public Lcom/farben/faq/SearchKeyAct;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static a:Landroid/os/Handler;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/GestureDetector;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Lcom/farben/faq/widget/KeyWordFlowLayout;

.field private i:I

.field private j:Lcom/farben/faq/c/e;

.field private k:Lcom/farben/faq/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/farben/faq/SearchKeyAct;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->e:Ljava/util/List;

    iput-object v1, p0, Lcom/farben/faq/SearchKeyAct;->f:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    iput-object v1, p0, Lcom/farben/faq/SearchKeyAct;->j:Lcom/farben/faq/c/e;

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/SearchKeyAct;)I
    .locals 1

    iget v0, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    return v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/farben/faq/SearchKeyAct;->k:Lcom/farben/faq/c/d;

    new-instance v0, Lcom/farben/faq/c/e;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/farben/faq/c/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_0

    move v1, v2

    :goto_0
    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v4

    if-eqz v7, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/g;

    invoke-virtual {v0}, Lcom/farben/faq/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    :goto_1
    invoke-virtual {v6, v0}, Lcom/farben/faq/c/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_2
    if-eqz v2, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/farben/faq/SearchResultAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_WORLD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchKeyAct;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_4
    add-int/lit8 v0, v1, -0x1

    if-lt v5, v0, :cond_3

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/g;

    invoke-virtual {v0}, Lcom/farben/faq/b/g;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    const-string v0, "common_nodata"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method private b(I)V
    .locals 5

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    iget-object v3, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->a:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/farben/faq/widget/KeyWordFlowLayout;->a:I

    if-lt v1, v0, :cond_2

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/g;

    invoke-virtual {v0}, Lcom/farben/faq/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(I)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/farben/faq/SearchKeyAct;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchKeyAct;->b(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    const/16 v4, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->j:Lcom/farben/faq/c/e;

    invoke-virtual {v1, p1}, Lcom/farben/faq/c/e;->a(I)Ljava/util/List;

    move-result-object v2

    move v1, v0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    :cond_0
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_2
    if-lt v3, v4, :cond_4

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x5dc

    if-gt v1, v3, :cond_0

    goto :goto_1

    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/g;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008d

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "search_errormsg"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "keyArray"

    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iput v2, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchKeyAct;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "keyArray"

    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchKeyAct;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f08008b

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchKeyAct;->setContentView(I)V

    new-instance v0, Lcom/farben/faq/ar;

    invoke-direct {v0, p0}, Lcom/farben/faq/ar;-><init>(Lcom/farben/faq/SearchKeyAct;)V

    sput-object v0, Lcom/farben/faq/SearchKeyAct;->a:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/farben/faq/SearchKeyAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/widget/KeyWordFlowLayout;

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchKeyAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchKeyAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->f:Landroid/widget/EditText;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->c:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    invoke-virtual {v0, p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farben/faq/widget/KeyWordFlowLayout;->setLongClickable(Z)V

    new-instance v0, Lcom/farben/faq/c/e;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->j:Lcom/farben/faq/c/e;

    new-instance v0, Lcom/farben/faq/c/d;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->k:Lcom/farben/faq/c/d;

    invoke-virtual {p0, v2}, Lcom/farben/faq/SearchKeyAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/widget/KeyWordFlowLayout;

    iput-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    invoke-virtual {v0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a()V

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    invoke-virtual {v0, p0}, Lcom/farben/faq/widget/KeyWordFlowLayout;->a(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchKeyAct;->a(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchKeyAct;->b(I)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x3

    const/high16 v5, 0x4248

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    if-le v2, v6, :cond_0

    iput v1, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/farben/faq/SearchKeyAct;->h:Lcom/farben/faq/widget/KeyWordFlowLayout;

    invoke-virtual {v2}, Lcom/farben/faq/widget/KeyWordFlowLayout;->b()V

    iget v2, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    invoke-virtual {p0, v2}, Lcom/farben/faq/SearchKeyAct;->a(I)V

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchKeyAct;->b(I)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget v0, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    if-gtz v0, :cond_2

    iput v6, p0, Lcom/farben/faq/SearchKeyAct;->i:I

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/farben/faq/SearchKeyAct;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "common_search"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/SearchKeyAct;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
