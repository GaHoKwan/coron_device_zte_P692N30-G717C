.class Lcom/android/mipop/paintpad/activities/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aD:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f070002

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/android/mipop/paintpad/view/PaintPad;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->b()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->n(Lcom/android/mipop/paintpad/activities/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/view/PaintPad;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->o(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->h(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->o(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/k;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/k;->dL:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->b(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->o(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->h(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->o(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/k;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/k;->dK:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->p(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->j(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->q(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bo()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->q(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bn()V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/android/mipop/paintpad/view/PaintPad;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->q(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/android/mipop/paintpad/b/b;->bp()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->q(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->b()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mipop/paintpad/view/PaintPad;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->a(Lcom/android/mipop/paintpad/activities/MainActivity;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->l(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mipop/paintpad/view/PaintPad;->a(I)V

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/d;->aD:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->r(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c005c
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
