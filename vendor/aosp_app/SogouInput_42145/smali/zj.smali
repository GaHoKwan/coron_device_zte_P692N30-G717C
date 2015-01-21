.class public Lzj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0b01db

    const/4 v8, 0x4

    const v6, 0x7f020099

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 225
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 226
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    iget-object v1, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lanb;

    move-result-object v1

    invoke-virtual {v1}, Lanb;->a_()Ljava/lang/String;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>> UPDATE_FINISH the upgrade dict info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<<<<<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lanb;

    move-result-object v2

    invoke-virtual {v2}, Lanb;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    const-string v3, "sogou.upgrade.hotdict.list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v3, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 240
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02009c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 241
    iget-object v4, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b01d8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 242
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 243
    invoke-virtual {v0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 248
    :pswitch_2
    const-string v1, "sim card changed"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 249
    const-string v1, "set login status false"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->d()V

    .line 251
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sohu/inputmethod/settings/AccountList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 254
    new-instance v2, Landroid/app/Notification;

    iget-object v3, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0279

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 256
    new-array v3, v8, [J

    fill-array-data v3, :array_0

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 257
    iget-object v3, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b027a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0279

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 258
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->q()V

    goto/16 :goto_0

    .line 263
    :pswitch_3
    const-string v1, "[[handleMessage::BACKUP_FINISH]]"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Lalq;

    move-result-object v1

    invoke-virtual {v1}, Lalq;->a_()Ljava/lang/String;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>> BACKUP_FINISH the upgrade dict info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<<<<<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Ljava/lang/String;)V

    .line 267
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    const-string v3, "sogou.action.closenotify"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v3, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 270
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v6, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 271
    iget-object v4, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b016b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 272
    invoke-virtual {v0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 277
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const-string v2, "sogou.upgrade.hotdict.dialog"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0248

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02009b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 282
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 283
    iget-object v4, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 284
    invoke-virtual {v0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 300
    :pswitch_5
    iget-object v1, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lafp;->e(J)V

    .line 301
    iget-object v1, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b024b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02009a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 304
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 305
    iget-object v4, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 306
    invoke-virtual {v0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 310
    :pswitch_6
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0, v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)V

    goto/16 :goto_0

    .line 313
    :pswitch_7
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0, v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Z)V

    goto/16 :goto_0

    .line 316
    :pswitch_8
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lsc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :pswitch_9
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    goto/16 :goto_0

    .line 322
    :pswitch_a
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->b(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    goto/16 :goto_0

    .line 325
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    const-string v2, "sogou.action.installed.sdcard.dialog"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b02f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v6, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 330
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 331
    iget-object v4, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v5}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b02f8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 332
    invoke-virtual {v0, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 335
    :pswitch_c
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->c(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;)V

    goto/16 :goto_0

    .line 338
    :pswitch_d
    iget-object v0, p0, Lzj;->a:Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "apkpath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "notifyid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;->a(Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch

    .line 256
    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
