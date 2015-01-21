.class public Lcom/android/mipop/cropimage/CropImage;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImage;->setTheme(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CropImage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "frommipop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/CropImage;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImage;->finish()V

    return-void
.end method
