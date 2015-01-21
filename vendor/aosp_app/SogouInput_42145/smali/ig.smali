.class Lig;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lig;->a:Ljava/lang/ref/WeakReference;

    .line 199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lig;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 204
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 206
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 210
    :pswitch_1
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lhk;

    invoke-virtual {v1, v0, v2}, Lhr;->a(Lhk;Z)V

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 216
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-virtual {v0}, Lhr;->a()V

    .line 217
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 218
    :cond_2
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)V

    goto :goto_0

    .line 221
    :pswitch_3
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v2

    invoke-static {v2}, Lhr;->a(Lhr;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f0b006e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhr;->a(Lhr;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0, v4}, Lhr;->b(Lhr;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 226
    :pswitch_4
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->b(Lhr;)V

    goto :goto_0

    .line 230
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 236
    :pswitch_6
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 240
    :pswitch_7
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->requestHideSelf(I)V

    goto/16 :goto_0

    .line 244
    :pswitch_8
    if-eqz p1, :cond_0

    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 246
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v3}, Lih;->a(Z)V

    .line 247
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_6

    .line 248
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 249
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0, v4}, Lhr;->a(Lhr;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 252
    :cond_4
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lhr;->a(Lhr;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 264
    :cond_5
    :goto_1
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 265
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v2}, Lih;->a(Z)V

    .line 266
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v2}, Lih;->b(Z)V

    .line 267
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0}, Lih;->notifyDataSetChanged()V

    .line 268
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 253
    :cond_6
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_5

    .line 254
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->b(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 256
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v1

    invoke-static {v1}, Lhr;->b(Lhr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->b(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 258
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->b(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_7
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0, v4}, Lhr;->b(Lhr;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 260
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0, v2}, Lhr;->a(Lhr;Z)Z

    .line 261
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0, v2}, Lhr;->b(Lhr;Z)Z

    goto/16 :goto_1

    .line 272
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v1, v0}, Lhr;->a(Lhr;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 277
    :pswitch_a
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 278
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 279
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v2}, Lih;->a(Z)V

    .line 280
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v2}, Lih;->b(Z)V

    .line 281
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0}, Lih;->notifyDataSetChanged()V

    .line 285
    :cond_8
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 288
    :pswitch_b
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->c(Lhr;)V

    goto/16 :goto_0

    .line 291
    :pswitch_c
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->d(Lhr;)V

    goto/16 :goto_0

    .line 294
    :pswitch_d
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v3}, Lih;->b(Z)V

    .line 296
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v2}, Lih;->a(Z)V

    .line 297
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0}, Lih;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 301
    :pswitch_e
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lhr;->a()Lhr;

    move-result-object v0

    invoke-static {v0}, Lhr;->a(Lhr;)Lih;

    move-result-object v0

    invoke-virtual {v0, v2}, Lih;->b(Z)V

    goto/16 :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
