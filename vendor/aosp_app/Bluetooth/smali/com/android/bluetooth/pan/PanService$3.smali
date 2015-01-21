.class Lcom/android/bluetooth/pan/PanService$3;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldToastMsg:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$3;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 647
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 648
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 672
    :goto_0
    return-void

    .line 650
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 651
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "show toast"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, toastMsg:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->mOldToastMsg:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 653
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->mOldToastMsg:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 654
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->mToast:Landroid/widget/Toast;

    .line 660
    :goto_2
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 667
    :goto_3
    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService$3;->mOldToastMsg:Ljava/lang/String;

    goto :goto_0

    .line 651
    .end local v1           #toastMsg:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 657
    .restart local v1       #toastMsg:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_2

    .line 662
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 665
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$3;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
