.class public Lmh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 50
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ln;

    .line 51
    new-instance v1, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    invoke-direct {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;-><init>()V

    .line 52
    invoke-virtual {v0}, Ln;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ln;->a()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a([B)V

    .line 54
    invoke-virtual {v0}, Ln;->a()[Lp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a([Lp;)V

    .line 55
    invoke-virtual {v0}, Ln;->a()La;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(La;)V

    .line 56
    invoke-virtual {v0}, Ln;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(J)V

    .line 57
    invoke-static {v0}, Ljx;->a(Ln;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(Ljava/lang/String;)V

    .line 59
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v3, "SCAN_RESULT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    const-class v3, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    const-string v1, "TYPE"

    invoke-static {v0}, Ljx;->a(Ln;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v0, "decode_pic"

    iget-object v1, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 67
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    iget-object v1, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    const v2, 0x7f0b03a2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 75
    iget-object v1, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    iget-object v1, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    const v2, 0x7f0b03a3

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v0, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->finish()V

    goto/16 :goto_0

    .line 80
    :sswitch_2
    iget-object v0, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    iget-object v1, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    const v2, 0x7f0b03a4

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    iget-object v0, p0, Lmh;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->finish()V

    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 67
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
