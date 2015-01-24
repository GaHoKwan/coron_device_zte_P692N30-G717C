.class Lcom/android/mipop/cropimage/x;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic eS:Lcom/android/mipop/cropimage/n;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/n;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/x;->eS:Lcom/android/mipop/cropimage/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/mipop/cropimage/x;->eS:Lcom/android/mipop/cropimage/n;

    iget-object v1, p0, Lcom/android/mipop/cropimage/x;->eS:Lcom/android/mipop/cropimage/n;

    iget-object v2, p0, Lcom/android/mipop/cropimage/x;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v2}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/x;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v3}, Lcom/android/mipop/cropimage/n;->d(Lcom/android/mipop/cropimage/n;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/cropimage/n;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mipop/cropimage/n;->a(Lcom/android/mipop/cropimage/n;Landroid/net/Uri;)Landroid/net/Uri;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/mipop/cropimage/x;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->e(Lcom/android/mipop/cropimage/n;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
