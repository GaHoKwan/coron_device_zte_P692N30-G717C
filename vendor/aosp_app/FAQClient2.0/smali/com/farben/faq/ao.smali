.class final Lcom/farben/faq/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/MainActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08006d

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    invoke-static {}, Lcom/farben/faq/MainActivity;->a()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/farben/faq/MainActivity;->a(Lcom/farben/faq/MainActivity;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/farben/faq/MainActivity;->b(Lcom/farben/faq/MainActivity;I)V

    iget-object v1, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    invoke-static {v1}, Lcom/farben/faq/MainActivity;->a(Lcom/farben/faq/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    invoke-static {v2}, Lcom/farben/faq/MainActivity;->b(Lcom/farben/faq/MainActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    iget-object v2, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    invoke-static {v2}, Lcom/farben/faq/MainActivity;->a(Lcom/farben/faq/MainActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/farben/faq/MainActivity;->c(Lcom/farben/faq/MainActivity;I)V

    move v1, v0

    :goto_1
    sget-object v2, Lcom/farben/faq/MainActivity;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    invoke-static {v0, v1}, Lcom/farben/faq/MainActivity;->a(Lcom/farben/faq/MainActivity;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/farben/faq/ao;->a:Lcom/farben/faq/MainActivity;

    sget-object v3, Lcom/farben/faq/MainActivity;->a:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget-object v4, Lcom/farben/faq/MainActivity;->a:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_3

    const v1, 0x7f020020

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    move v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method
