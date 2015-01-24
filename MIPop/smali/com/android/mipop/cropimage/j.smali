.class Lcom/android/mipop/cropimage/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic aT:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/j;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "HouJiong"

    const-string v1, "AlertDialog onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HouJiong"

    const-string v1, "AlertDialog KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mipop/cropimage/j;->aT:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/MenuActivity;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
