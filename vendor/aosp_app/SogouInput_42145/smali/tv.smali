.class Ltv;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ltu;


# direct methods
.method constructor <init>(Ltu;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Ltv;->a:Ltu;

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

    .line 181
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a(Z)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 187
    const-string v2, "isBackground"

    sget-object v0, Ltu;->a:Ltu;

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const-string v0, "transfertype"

    iget-object v2, p0, Ltv;->a:Ltu;

    invoke-static {v2}, Ltu;->a(Ltu;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v2, "packageName"

    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)I

    move-result v0

    .line 191
    if-ltz v0, :cond_3

    if-gt v0, v6, :cond_3

    .line 192
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-virtual {v0}, Ltu;->f()V

    .line 193
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Ltv;->a:Ltu;

    invoke-static {v3}, Ltu;->a(Ltu;)Landroid/app/Activity;

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

    .line 187
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bu:I

    .line 199
    const-string v0, "uploadResult"

    const/16 v2, 0x26

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-virtual {v0, v1}, Ltu;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    const-string v1, "transferredSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 206
    const-string v3, "allSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 207
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-virtual {v0, v1, v2, v3, v4}, Ltu;->a(JJ)V

    goto/16 :goto_0

    .line 210
    :pswitch_3
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-virtual {v0}, Ltu;->h()V

    .line 211
    invoke-static {v2}, Ltu;->a(Lsg;)Lsg;

    .line 212
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-virtual {v1, v0}, Ltu;->a(Landroid/os/Bundle;)V

    .line 214
    const/16 v0, 0x8

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Ltv;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-static {v1}, Ltu;->a(Ltu;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(IZ)V

    goto/16 :goto_0

    .line 220
    :pswitch_4
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-virtual {v0}, Ltu;->h()V

    .line 221
    invoke-static {v2}, Ltu;->a(Lsg;)Lsg;

    .line 222
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-virtual {v1, v0}, Ltu;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 226
    :pswitch_5
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)V

    .line 227
    iget-object v0, p0, Ltv;->a:Ltu;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ltu;->a(Ltu;I)I

    goto/16 :goto_0

    .line 230
    :pswitch_6
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0, v7, v8}, Ltu;->a(Ltu;J)J

    .line 234
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-static {v1}, Ltu;->a(Ltu;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Ltu;->a(Ltu;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 241
    if-eqz v1, :cond_4

    .line 243
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    :cond_4
    :goto_2
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-gtz v0, :cond_6

    .line 251
    iget-object v0, p0, Ltv;->a:Ltu;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ltu;->a(Ltu;I)V

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 238
    :goto_3
    :try_start_3
    iget-object v2, p0, Ltv;->a:Ltu;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Ltu;->a(Ltu;J)J

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 241
    if-eqz v1, :cond_4

    .line 243
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 244
    :catch_1
    move-exception v0

    goto :goto_2

    .line 241
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    .line 243
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 241
    :cond_5
    :goto_5
    throw v0

    .line 254
    :cond_6
    iget-object v0, p0, Ltv;->a:Ltu;

    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-static {v1}, Ltu;->a(Ltu;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltu;->a(Ltu;J)V

    .line 255
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)J

    move-result-wide v0

    const-wide/32 v2, 0xc800

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 256
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)V

    .line 267
    :goto_6
    iget-object v0, p0, Ltv;->a:Ltu;

    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-static {v1}, Ltu;->a(Ltu;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Layr;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Ltu;->a(Ltu;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 268
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    move-result-object v0

    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-static {v1}, Ltu;->a(Ltu;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 259
    :cond_7
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->b(Ltu;)Ljava/lang/String;

    move-result-object v7

    .line 260
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Ljava/lang/String;

    move-result-object v5

    .line 261
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltu;->a:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Ltv;->a:Ltu;

    iget-object v1, p0, Ltv;->a:Ltu;

    invoke-static {v1}, Ltu;->a(Ltu;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ltv;->a:Ltu;

    iget-object v7, v7, Ltu;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Ltu;->a(Ltu;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 271
    :pswitch_7
    iget-object v0, p0, Ltv;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    goto/16 :goto_0

    .line 275
    :pswitch_8
    sget-boolean v0, Ltu;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv;->a:Ltu;

    iget-object v0, v0, Ltu;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv;->a:Ltu;

    iget-object v0, v0, Ltu;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    sput-boolean v6, Ltu;->a:Z

    .line 279
    :try_start_6
    iget-object v0, p0, Ltv;->a:Ltu;

    iget-object v0, v0, Ltu;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 280
    :catch_2
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 244
    :catch_3
    move-exception v1

    goto/16 :goto_5

    .line 241
    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 237
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
