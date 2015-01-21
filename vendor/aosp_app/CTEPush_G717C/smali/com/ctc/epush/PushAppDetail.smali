.class public Lcom/ctc/epush/PushAppDetail;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/RatingBar;

.field private j:Landroid/widget/Gallery;

.field private k:Landroid/view/ViewGroup;

.field private l:[Landroid/widget/ImageView;

.field private m:Lcom/ctc/a/a;

.field private n:Lcom/ctc/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ctc/epush/PushAppDetail;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/ctc/epush/PushAppDetail;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f02001b

    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->setContentView(I)V

    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->a:Landroid/widget/TextView;

    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->b:Landroid/widget/TextView;

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->c:Landroid/widget/TextView;

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->d:Landroid/widget/TextView;

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->e:Landroid/widget/TextView;

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->f:Landroid/widget/TextView;

    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->a:Landroid/widget/TextView;

    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->h:Landroid/widget/ImageView;

    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->i:Landroid/widget/RatingBar;

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->k:Landroid/view/ViewGroup;

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->j:Landroid/widget/Gallery;

    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushAppDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->g:Landroid/widget/Button;

    new-instance v2, Lcom/ctc/epush/l;

    invoke-direct {v2, p0}, Lcom/ctc/epush/l;-><init>(Lcom/ctc/epush/PushAppDetail;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/ctc/c/a;->a()Lcom/ctc/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->n:Lcom/ctc/c/a;

    invoke-virtual {p0}, Lcom/ctc/epush/PushAppDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "appModel"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v3}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v3}, Lcom/ctc/a/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v3}, Lcom/ctc/a/a;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ctc/c/h;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v2}, Lcom/ctc/a/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->c:Landroid/widget/TextView;

    const v2, 0x7f060032

    invoke-virtual {p0, v2}, Lcom/ctc/epush/PushAppDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v2}, Lcom/ctc/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v2}, Lcom/ctc/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v2}, Lcom/ctc/a/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->i:Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v2}, Lcom/ctc/a/a;->n()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v0}, Lcom/ctc/a/a;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v2}, Lcom/ctc/a/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->h:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v3}, Lcom/ctc/a/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/ctc/epush/PushAppDetail;->n:Lcom/ctc/c/a;

    new-instance v3, Lcom/ctc/epush/m;

    invoke-direct {v3, p0}, Lcom/ctc/epush/m;-><init>(Lcom/ctc/epush/PushAppDetail;)V

    invoke-virtual {v2, p0, v0, v3}, Lcom/ctc/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ctc/c/e;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->m:Lcom/ctc/a/a;

    invoke-virtual {v0}, Lcom/ctc/a/a;->q()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->j:Landroid/widget/Gallery;

    new-instance v3, Lcom/ctc/epush/o;

    invoke-direct {v3, p0, p0, v2}, Lcom/ctc/epush/o;-><init>(Lcom/ctc/epush/PushAppDetail;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->j:Landroid/widget/Gallery;

    invoke-virtual {v0, v5}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->j:Landroid/widget/Gallery;

    new-instance v1, Lcom/ctc/epush/n;

    invoke-direct {v1, p0}, Lcom/ctc/epush/n;-><init>(Lcom/ctc/epush/PushAppDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const v4, 0x7f02001a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/ctc/epush/PushAppDetail;->k:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ctc/epush/PushAppDetail;->l:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3
.end method
