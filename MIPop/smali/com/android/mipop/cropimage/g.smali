.class Lcom/android/mipop/cropimage/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aT:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/g;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "HouJiong"

    const-string v1, "setOnDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mipop/cropimage/g;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/MenuActivity;->finish()V

    return-void
.end method
