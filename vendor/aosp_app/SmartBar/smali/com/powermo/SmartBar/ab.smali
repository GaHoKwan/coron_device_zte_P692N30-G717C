.class public Lcom/powermo/SmartBar/ab;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/view/View;

.field k:Landroid/content/res/ColorStateList;

.field l:Lcom/powermo/SmartBar/k;

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->d:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->e:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->g:Landroid/view/View;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->h:Landroid/view/View;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->i:Landroid/view/View;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->j:Landroid/view/View;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->k:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->l:Lcom/powermo/SmartBar/k;

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/SmartBar/ab;->m:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/res/ColorStateList;)V
    .locals 2

    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    const v1, 0x7f070022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ab;->j:Landroid/view/View;

    iput-object p2, p0, Lcom/powermo/SmartBar/ab;->k:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public a(Lcom/powermo/SmartBar/k;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    iput-object p1, p0, Lcom/powermo/SmartBar/ab;->l:Lcom/powermo/SmartBar/k;

    iput p2, p0, Lcom/powermo/SmartBar/ab;->m:I

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powermo/SmartBar/ab;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/powermo/SmartBar/k;->d()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/powermo/SmartBar/ab;->b:Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->f:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Lcom/powermo/SmartBar/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/powermo/SmartBar/ab;->c:Landroid/widget/ImageView;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/ab;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/powermo/SmartBar/ab;->d:Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ab;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/powermo/SmartBar/ab;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3

    const/4 v1, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/powermo/SmartBar/ab;->i:Landroid/view/View;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/powermo/SmartBar/ab;->j:Landroid/view/View;

    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
