.class Luw;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Luv;


# direct methods
.method constructor <init>(Luv;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Luw;->a:Luv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 182
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 183
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a(Z)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 188
    const-string v2, "isBackground"

    sget-object v0, Luv;->a:Luv;

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string v0, "transfertype"

    iget-object v2, p0, Luw;->a:Luv;

    invoke-static {v2}, Luv;->a(Luv;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string v2, "packageName"

    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)I

    move-result v0

    .line 192
    if-ltz v0, :cond_3

    if-gt v0, v6, :cond_3

    .line 193
    iget-object v0, p0, Luw;->a:Luv;

    invoke-virtual {v0}, Luv;->f()V

    .line 194
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Luw;->a:Luv;

    invoke-static {v3}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sohu.inputmethod.sms.TOUPLOAD"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 199
    :cond_3
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bu:I

    .line 200
    const-string v0, "uploadResult"

    const/16 v2, 0x26

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-object v0, p0, Luw;->a:Luv;

    invoke-virtual {v0, v1}, Luv;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    const-string v1, "transferredSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 207
    const-string v3, "allSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 208
    iget-object v0, p0, Luw;->a:Luv;

    invoke-virtual {v0, v1, v2, v3, v4}, Luv;->a(JJ)V

    goto/16 :goto_0

    .line 211
    :pswitch_3
    iget-object v0, p0, Luw;->a:Luv;

    invoke-virtual {v0}, Luv;->h()V

    .line 212
    invoke-static {v2}, Luv;->a(Lsg;)Lsg;

    .line 213
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    iget-object v1, p0, Luw;->a:Luv;

    invoke-virtual {v1, v0}, Luv;->a(Landroid/os/Bundle;)V

    .line 215
    const/16 v0, 0x8

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Luw;->sendEmptyMessageDelayed(IJ)Z

    .line 216
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Luw;->a:Luv;

    invoke-static {v1}, Luv;->a(Luv;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(IZ)V

    goto/16 :goto_0

    .line 221
    :pswitch_4
    iget-object v0, p0, Luw;->a:Luv;

    invoke-virtual {v0}, Luv;->h()V

    .line 222
    invoke-static {v2}, Luv;->a(Lsg;)Lsg;

    .line 223
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 224
    iget-object v1, p0, Luw;->a:Luv;

    invoke-virtual {v1, v0}, Luv;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 227
    :pswitch_5
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)V

    .line 228
    iget-object v0, p0, Luw;->a:Luv;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Luv;->a(Luv;I)I

    goto/16 :goto_0

    .line 231
    :pswitch_6
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0, v7, v8}, Luv;->a(Luv;J)J

    .line 235
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Luw;->a:Luv;

    invoke-static {v1}, Luv;->a(Luv;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    iget-object v0, p0, Luw;->a:Luv;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Luv;->a(Luv;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 242
    if-eqz v1, :cond_4

    .line 244
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    :cond_4
    :goto_2
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-gtz v0, :cond_6

    .line 252
    iget-object v0, p0, Luw;->a:Luv;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Luv;->a(Luv;I)V

    goto/16 :goto_0

    .line 238
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 239
    :goto_3
    :try_start_3
    iget-object v2, p0, Luw;->a:Luv;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Luv;->a(Luv;J)J

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    if-eqz v1, :cond_4

    .line 244
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 245
    :catch_1
    move-exception v0

    goto :goto_2

    .line 242
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    .line 244
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 242
    :cond_5
    :goto_5
    throw v0

    .line 255
    :cond_6
    iget-object v0, p0, Luw;->a:Luv;

    iget-object v1, p0, Luw;->a:Luv;

    invoke-static {v1}, Luv;->a(Luv;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Luv;->a(Luv;J)V

    .line 256
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)J

    move-result-wide v0

    const-wide/32 v2, 0xc800

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 257
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)V

    .line 268
    :goto_6
    iget-object v0, p0, Luw;->a:Luv;

    iget-object v1, p0, Luw;->a:Luv;

    invoke-static {v1}, Luv;->a(Luv;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Layr;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Luv;->a(Luv;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 269
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    move-result-object v0

    iget-object v1, p0, Luw;->a:Luv;

    invoke-static {v1}, Luv;->a(Luv;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 260
    :cond_7
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)Ljava/lang/String;

    move-result-object v7

    .line 261
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Ljava/lang/String;

    move-result-object v5

    .line 262
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Luv;->a:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Luw;->a:Luv;

    iget-object v1, p0, Luw;->a:Luv;

    invoke-static {v1}, Luv;->a(Luv;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Luw;->a:Luv;

    iget-object v7, v7, Luv;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Luv;->a(Luv;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 272
    :pswitch_7
    iget-object v0, p0, Luw;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    goto/16 :goto_0

    .line 276
    :pswitch_8
    sget-boolean v0, Luv;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sput-boolean v6, Luv;->a:Z

    .line 280
    :try_start_6
    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 281
    :catch_2
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 245
    :catch_3
    move-exception v1

    goto/16 :goto_5

    .line 242
    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 238
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
