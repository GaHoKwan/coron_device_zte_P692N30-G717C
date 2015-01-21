.class Luo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic a:Lun;


# direct methods
.method constructor <init>(Lun;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Luo;->a:Lun;

    iput-object p2, p0, Luo;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Luo;->a:Lun;

    iget-object v0, v0, Lun;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 425
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 426
    iget-object v0, p0, Luo;->a:Lun;

    iget-object v0, v0, Lun;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Luo;->a:Landroid/os/Bundle;

    const-string v2, "serialno"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Luo;->a:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    iget-object v0, p0, Luo;->a:Lun;

    iget-object v0, v0, Lun;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 433
    return-void
.end method
