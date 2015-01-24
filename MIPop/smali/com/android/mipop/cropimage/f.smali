.class Lcom/android/mipop/cropimage/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aT:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/f;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "HouJiong"

    const-string v1, "lock_screen onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/mipop/cropimage/r;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/r;-><init>(Lcom/android/mipop/cropimage/f;)V

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/r;->start()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/f;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/MenuActivity;->finish()V

    return-void
.end method
