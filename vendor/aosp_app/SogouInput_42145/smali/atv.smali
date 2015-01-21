.class public Latv;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Latv;->a:Ljava/lang/ref/WeakReference;

    .line 184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0b029c

    const v6, 0x7f0b029b

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 188
    iget-object v0, p0, Latv;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouIMESettings;

    .line 189
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->h()Z

    move-result v1

    if-ne v1, v7, :cond_2

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->A()Z

    move-result v1

    if-ne v1, v7, :cond_2

    .line 195
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->d()V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 198
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020099

    const v4, 0x7f0b0279

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 200
    const v3, 0x7f0b027a

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0279

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 204
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 205
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 206
    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->q()V

    .line 208
    :cond_2
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->f()Ljava/lang/String;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_4

    .line 210
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->D()Z

    move-result v1

    if-ne v1, v7, :cond_3

    .line 212
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a()V

    goto/16 :goto_0

    .line 214
    :cond_3
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b()V

    goto/16 :goto_0

    .line 217
    :cond_4
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->D()Z

    move-result v1

    if-ne v1, v7, :cond_5

    .line 218
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 219
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->b()V

    .line 221
    :cond_5
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v1

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->a(I)V

    .line 223
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lcom/sohu/inputmethod/settings/ui/ImagePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/ImagePreference;->c()V

    goto/16 :goto_0

    .line 228
    :pswitch_1
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    :cond_6
    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 231
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v1, Latw;

    invoke-direct {v1, p0, v0}, Latw;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 247
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 250
    new-instance v1, Laub;

    invoke-direct {v1, p0, v0}, Laub;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 262
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 267
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lauc;

    invoke-direct {v2, p0}, Lauc;-><init>(Latv;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 274
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 278
    :pswitch_2
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :cond_7
    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 280
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v1, Laud;

    invoke-direct {v1, p0, v0}, Laud;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 291
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 294
    new-instance v1, Laue;

    invoke-direct {v1, p0, v0}, Laue;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 301
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 304
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 305
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lauf;

    invoke-direct {v2, p0, v0}, Lauf;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 317
    :pswitch_3
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 318
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 319
    :cond_8
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 321
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b028e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v1, Laug;

    invoke-direct {v1, p0, v0}, Laug;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 346
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 350
    new-instance v1, Lauh;

    invoke-direct {v1, p0, v0}, Lauh;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 386
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, -0x3

    const v4, 0x7f0b0282

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 390
    new-instance v1, Laui;

    invoke-direct {v1, p0}, Laui;-><init>(Latv;)V

    .line 405
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 409
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 410
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Latx;

    invoke-direct {v1, p0}, Latx;-><init>(Latv;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 430
    :pswitch_4
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    :cond_9
    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 434
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0320

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 439
    new-instance v1, Laty;

    invoke-direct {v1, p0, v0}, Laty;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 447
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 451
    new-instance v1, Latz;

    invoke-direct {v1, p0, v0}, Latz;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    .line 458
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 462
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 463
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->a(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Laua;

    invoke-direct {v2, p0, v0}, Laua;-><init>(Latv;Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 474
    :pswitch_5
    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIMESettings;->c(Lcom/sohu/inputmethod/sogou/SogouIMESettings;)V

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
