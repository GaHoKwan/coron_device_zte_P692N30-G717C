.class public Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/os/Handler;

.field private a:Lmk;

.field private a:Z

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Z

    .line 45
    new-instance v0, Lmh;

    invoke-direct {v0, p0}, Lmh;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Lmk;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Lmk;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->setResult(I)V

    .line 231
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->finish()V

    goto :goto_0
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/graphics/Bitmap;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b:Landroid/graphics/Bitmap;

    .line 265
    :cond_1
    invoke-static {p0}, Laox;->a(Landroid/content/Context;)Laox;

    invoke-static {}, Laox;->a()V

    .line 266
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    iput-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    .line 271
    :cond_2
    return-void
.end method

.method private static final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 239
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "aspectX"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "aspectY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v1, "outputX"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const-string v1, "outputY"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commit scanpic ===requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b(Ljava/lang/String;)V

    .line 153
    sparse-switch p1, :sswitch_data_0

    .line 219
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 220
    return-void

    .line 156
    :sswitch_0
    if-eqz p3, :cond_0

    .line 157
    new-instance v0, Lmj;

    invoke-direct {v0, p0, p3}, Lmj;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lmj;->start()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->finish()V

    goto :goto_0

    .line 189
    :sswitch_1
    if-ne p2, v2, :cond_1

    .line 190
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->setResult(I)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->finish()V

    goto :goto_0

    .line 194
    :sswitch_2
    if-eqz p3, :cond_5

    .line 195
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b:Landroid/graphics/Bitmap;

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 200
    const-string v0, "===============croppedBitmap == null"

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Lmk;

    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lmk;->a(Landroid/graphics/Bitmap;)Ln;

    move-result-object v0

    .line 204
    if-nez v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 206
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 207
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->finish()V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xc -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {p0}, Lmk;->a(Landroid/app/Activity;)Lmk;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Lmk;

    .line 95
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Z

    .line 102
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 103
    new-instance v1, Lmi;

    invoke-direct {v1, p0, v0}, Lmi;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lmi;->start()V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fl:I

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a:Z

    .line 130
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    invoke-direct {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/scanpic/ScanPicActivity;->b(Ljava/lang/String;)V

    .line 146
    return-void
.end method
