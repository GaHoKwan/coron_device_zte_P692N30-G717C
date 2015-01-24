.class Lcom/android/mipop/cropimage/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gZ:Lcom/android/mipop/cropimage/CropImageEx;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->c(Lcom/android/mipop/cropimage/CropImageEx;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->d(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->W()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/cropimage/CropImageEx;->az:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    const-class v2, Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v1, v0}, Lcom/android/mipop/cropimage/CropImageEx;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/mipop/cropimage/ac;->gZ:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->e(Lcom/android/mipop/cropimage/CropImageEx;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0015
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
