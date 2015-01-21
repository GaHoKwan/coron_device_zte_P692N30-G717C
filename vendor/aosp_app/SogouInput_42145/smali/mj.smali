.class public Lmj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    iput-object p2, p0, Lmj;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    iget-object v1, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Lmk;

    move-result-object v1

    iget-object v2, p0, Lmj;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmk;->a(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "======================mBitmap != null"

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Lmk;

    move-result-object v0

    iget-object v1, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lmj;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmk;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ln;

    move-result-object v0

    .line 168
    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lmj;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 172
    iget-object v1, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lmj;->a:Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
