.class Lcom/android/mipop/cropimage/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic eS:Lcom/android/mipop/cropimage/n;


# direct methods
.method public constructor <init>(Lcom/android/mipop/cropimage/n;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const v2, 0x7f070015

    const/4 v3, 0x0

    const-string v0, "weixiaoli"

    const-string v1, "handler show dialog save"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v0}, Lcom/android/mipop/cropimage/n;->a(Lcom/android/mipop/cropimage/n;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HouJiong"

    const-string v1, "onShareClicked save error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v0}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v0}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->c(Lcom/android/mipop/cropimage/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "weixiaoli"

    const-string v1, "event save finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v0}, Lcom/android/mipop/cropimage/n;->a(Lcom/android/mipop/cropimage/n;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "HouJiong"

    const-string v1, "onShareClicked save error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v0}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "HouJiong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShareClicked uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v2}, Lcom/android/mipop/cropimage/n;->a(Lcom/android/mipop/cropimage/n;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v2}, Lcom/android/mipop/cropimage/n;->a(Lcom/android/mipop/cropimage/n;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v1}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/s;->eS:Lcom/android/mipop/cropimage/n;

    invoke-static {v0}, Lcom/android/mipop/cropimage/n;->b(Lcom/android/mipop/cropimage/n;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
