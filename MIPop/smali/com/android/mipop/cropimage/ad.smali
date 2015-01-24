.class Lcom/android/mipop/cropimage/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gZ:Lcom/android/mipop/cropimage/CropImageEx;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/ad;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mipop/cropimage/ad;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->a(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/ad;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->a(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ad;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->a(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
