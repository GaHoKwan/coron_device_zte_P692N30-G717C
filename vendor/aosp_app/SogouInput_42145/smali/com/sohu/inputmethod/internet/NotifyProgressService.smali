.class public Lcom/sohu/inputmethod/internet/NotifyProgressService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/app/Notification$Builder;

.field private a:Landroid/app/NotificationManager;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/Notification$Builder;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Z

    return-void
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 261
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 262
    const-string v0, ""

    .line 269
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 286
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 287
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 288
    return-void
.end method

.method private a(IIILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0b03d5

    const/4 v6, 0x0

    .line 230
    new-instance v1, Landroid/app/Notification;

    const v0, 0x7f02009a

    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 231
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v2, "sogou.action.qrcode.apkdownload.suspend"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0b03d6

    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 242
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 243
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 244
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 245
    return-void
.end method

.method private a(Landroid/app/Notification;IIILjava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    if-nez p6, :cond_1

    .line 205
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0701dd

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p3, p4, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 206
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701db

    int-to-long v2, p3

    int-to-long v4, p4

    invoke-static {v2, v3, v4, v5}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 208
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701da

    const v2, 0x7f02005c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 209
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 221
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v1, "sogou.action.nothing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 224
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/NotificationManager;

    .line 225
    iget-object v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 227
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dd

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 213
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701db

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 214
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0700e7

    const v2, 0x7f0b0252

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 216
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const v2, 0x7f0b0254

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701da

    const v2, 0x7f02009c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 218
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_1
.end method

.method public static b(JJ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 274
    const-string v0, "0%"

    .line 282
    :goto_0
    return-object v0

    .line 277
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(IIILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 257
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 258
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 56
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/NotificationManager;

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 63
    :cond_0
    const-string v0, "action"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    const-string v0, "transferredSize"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 69
    const-string v0, "allSize"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 70
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 71
    const-string v2, "upload_serial_no"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    const-string v2, "sogouMediaType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 73
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    .line 74
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_3

    const-wide/16 v1, 0x0

    :goto_2
    long-to-int v1, v1

    .line 75
    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 76
    add-int/lit8 v1, v1, -0x1

    .line 77
    :cond_2
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f070010

    const/16 v6, 0x64

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v6, v1, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 79
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f070163

    const v6, 0x7f0b0342

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0, v8}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v6, v9}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f070011

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-static {v1, v7, v2, v0}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0346

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, v8}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 74
    :cond_3
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v3

    div-long/2addr v1, v5

    goto :goto_2

    .line 94
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    const-string v1, "upload_serial_no"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 101
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    const-string v1, "sogouMediaType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0340

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    const-string v0, "transferredSize"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 109
    const-string v0, "allSize"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 110
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 111
    const-string v6, "media_url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    const-string v7, "sogouMediaType"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 113
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_4

    const-wide/16 v1, 0x0

    :goto_3
    long-to-int v1, v1

    .line 115
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f070010

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 117
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f070163

    const v4, 0x7f0b0343

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0, v7}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f070011

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/NotificationManager;

    const/4 v2, 0x5

    invoke-static {v1, v6, v2, v0}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 113
    :cond_4
    const-wide/16 v8, 0x64

    mul-long v1, v2, v8

    div-long/2addr v1, v4

    goto :goto_3

    .line 125
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    const-string v1, "media_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Landroid/app/NotificationManager;

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 131
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    sget-object v1, Lamr;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    .line 133
    sget-object v1, Lamr;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    .line 134
    const-string v1, "THEMEDIMCODENOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 135
    if-eqz v1, :cond_1

    .line 136
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 137
    const/16 v2, 0x8

    iget v3, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    iget v4, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    const v0, 0x7f0b03e2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(Landroid/app/Notification;IIILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 141
    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    sget-object v1, Lamr;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    .line 143
    sget-object v1, Lamr;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    .line 144
    const-string v1, "THEMEDIMCODENOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 145
    if-eqz v1, :cond_1

    .line 146
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 147
    const/16 v2, 0x8

    iget v3, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    iget v4, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    const v0, 0x7f0b03e2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(Landroid/app/Notification;IIILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 151
    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    sget-object v1, Llr;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    .line 153
    sget-object v1, Llr;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    .line 154
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Ljava/lang/String;

    .line 155
    const-string v1, "NOTIFICATIONID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    .line 156
    const-string v1, "APKDIMCODENOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 157
    iget v2, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    iget v3, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    iget v4, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    iget-object v5, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(Landroid/app/Notification;IIILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 161
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    sget-object v1, Llr;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    .line 163
    sget-object v1, Llr;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    .line 164
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Ljava/lang/String;

    .line 165
    const-string v1, "NOTIFICATIONID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    .line 166
    iget v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    iget v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    iget v2, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    iget-object v3, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b(IIILjava/lang/String;)V

    goto/16 :goto_1

    .line 171
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Ljava/lang/String;

    .line 173
    const-string v1, "NOTIFICATIONID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    .line 174
    iget v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    iget v1, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:I

    iget v2, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:I

    iget-object v3, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(IIILjava/lang/String;)V

    goto/16 :goto_1

    .line 179
    :pswitch_b
    const-string v0, "totalsize"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->d:I

    .line 180
    const-string v0, "downloadsize"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->e:I

    .line 181
    const-string v0, "notificationid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    .line 182
    const-string v0, "notificationtitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 187
    :pswitch_c
    const-string v0, "notificationid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    .line 188
    iget v0, p0, Lcom/sohu/inputmethod/internet/NotifyProgressService;->c:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(I)V

    goto/16 :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
