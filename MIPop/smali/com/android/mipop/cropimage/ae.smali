.class Lcom/android/mipop/cropimage/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gZ:Lcom/android/mipop/cropimage/CropImageEx;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->f(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->f(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/android/mipop/cropimage/CropImageEx;->a(Lcom/android/mipop/cropimage/CropImageEx;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->f(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->f(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->postInvalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v1}, Lcom/android/mipop/cropimage/CropImageEx;->g(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->a(Lcom/android/mipop/cropimage/w;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->Y()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v1}, Lcom/android/mipop/cropimage/CropImageEx;->h(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->a(Lcom/android/mipop/cropimage/w;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->Y()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/ae;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v1}, Lcom/android/mipop/cropimage/CropImageEx;->i(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->a(Lcom/android/mipop/cropimage/w;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c001b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
