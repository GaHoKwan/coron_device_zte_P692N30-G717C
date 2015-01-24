.class Lcom/android/mipop/cropimage/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aT:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/e;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "HouJiong"

    const-string v1, "reboot onClick nnnnn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/cropimage/e;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v1, v0}, Lcom/android/mipop/cropimage/MenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
