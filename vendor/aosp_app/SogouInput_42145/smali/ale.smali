.class public Lale;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Lrl;

.field private a:Z

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lale;->a:Z

    .line 40
    new-instance v0, Lrr;

    iget-object v1, p0, Lale;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lale;->a:Lrr;

    .line 41
    return-void
.end method

.method private a()I
    .locals 5

    .prologue
    const/16 v0, 0x12

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    const-string v3, "[[downloadAPK]]"

    invoke-direct {p0, v3}, Lale;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lale;->a()V

    .line 130
    iget-object v3, p0, Lale;->a:Lrr;

    invoke-virtual {v3}, Lrr;->j()I

    move-result v3

    .line 131
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 132
    iget-object v0, p0, Lale;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_2

    const-string v0, "updateurl"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iput v1, p0, Lale;->d:I

    .line 135
    iget-object v0, p0, Lale;->a:Lrr;

    new-instance v4, Lalf;

    invoke-direct {v4, p0}, Lalf;-><init>(Lale;)V

    invoke-virtual {v0, v4}, Lrr;->a(Lrl;)V

    .line 192
    new-instance v0, Ljava/io/File;

    sget-object v4, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-ne v4, v2, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[downloadAPK]] download from url = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "updateurl"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lale;->a(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lale;->a:Lrr;

    const-string v0, "updateurl"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Laox;->l:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 199
    const/16 v3, 0x18

    if-ne v0, v3, :cond_1

    .line 201
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 666 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laox;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v2

    .line 215
    :cond_1
    :goto_1
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, "[[downloadAPK]] apk file not found"

    invoke-direct {p0, v0}, Lale;->a(Ljava/lang/String;)V

    .line 212
    const/16 v1, 0x13

    goto :goto_1

    .line 215
    :cond_3
    if-ne v3, v0, :cond_4

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lale;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lale;->c:I

    return v0
.end method

.method static synthetic a(Lale;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lale;->b:I

    return p1
.end method

.method private a(JJ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 324
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 325
    const-string v0, ""

    .line 331
    :goto_0
    return-object v0

    .line 327
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lale;)Lrl;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lale;->a:Lrl;

    return-object v0
.end method

.method private a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f02005c

    const/4 v1, 0x0

    .line 231
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 232
    iput v8, v2, Landroid/app/Notification;->icon:I

    .line 234
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 237
    new-instance v3, Landroid/widget/RemoteViews;

    const-string v0, "com.sohu.inputmethod.sogou"

    const v4, 0x7f03005a

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lale;->a:Landroid/content/Context;

    const v5, 0x7f0b01d9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    const v4, 0x7f0700e7

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 242
    const v4, 0x7f0701dd

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, p1, p2, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 246
    const v0, 0x7f0701db

    int-to-long v4, p1

    int-to-long v6, p2

    invoke-direct {p0, v4, v5, v6, v7}, Lale;->a(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 248
    const v0, 0x7f0701da

    invoke-virtual {v3, v0, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 251
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lale;->a:Landroid/content/Context;

    const-class v5, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string v4, "sogou.action.nothing"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v4, p0, Lale;->a:Landroid/content/Context;

    invoke-static {v4, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 255
    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 256
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 258
    iget-object v0, p0, Lale;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 259
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 261
    return-void

    :cond_0
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method static synthetic a(Lale;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lale;->c()V

    return-void
.end method

.method static synthetic a(Lale;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lale;->a(II)V

    return-void
.end method

.method static synthetic a(Lale;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lale;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    return-void
.end method

.method static synthetic a(Lale;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lale;->a:Z

    return p1
.end method

.method static synthetic b(Lale;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lale;->d:I

    return v0
.end method

.method static synthetic b(Lale;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lale;->c:I

    return p1
.end method

.method private b()V
    .locals 8

    .prologue
    const v7, 0x7f0b024d

    const/4 v6, 0x0

    .line 264
    iget-object v0, p0, Lale;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 266
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f02005c

    iget-object v3, p0, Lale;->a:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 269
    iget-object v2, p0, Lale;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 270
    iget-object v3, p0, Lale;->a:Landroid/content/Context;

    iget-object v4, p0, Lale;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lale;->a:Landroid/content/Context;

    const v6, 0x7f0b024e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 275
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    return-void
.end method

.method static synthetic b(Lale;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lale;->b()V

    return-void
.end method

.method static synthetic c(Lale;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lale;->b:I

    return v0
.end method

.method static synthetic c(Lale;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lale;->d:I

    return p1
.end method

.method private c()V
    .locals 8

    .prologue
    const v7, 0x7f0b024f

    const/4 v4, 0x0

    .line 279
    iget-object v0, p0, Lale;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 281
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lale;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const-string v2, "sogou.action.installsoftware.custom"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    iget-object v2, p0, Lale;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 287
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009c

    iget-object v4, p0, Lale;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 290
    iget-object v3, p0, Lale;->a:Landroid/content/Context;

    iget-object v4, p0, Lale;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lale;->a:Landroid/content/Context;

    const v6, 0x7f0b0250

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 298
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 299
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 300
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 308
    iget-object v0, p0, Lale;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 309
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lale;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const-string v2, "sogou.action.closenotify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "sogou.notify.id"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Lale;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 313
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009a

    iget-object v4, p0, Lale;->a:Landroid/content/Context;

    const v5, 0x7f0b0251

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 314
    iget-object v3, p0, Lale;->a:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lale;->a:Landroid/content/Context;

    const v6, 0x7f0b021c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 315
    invoke-virtual {v0, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 316
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lale;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 320
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 321
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lale;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 304
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 305
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 48
    iput-object p2, p0, Lale;->a:Lsg;

    .line 49
    invoke-virtual {p2}, Lsg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lale;->c:Z

    .line 50
    iget-object v0, p0, Lale;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lale;->c:Z

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lale;->a:Lalv;

    invoke-interface {v0}, Lalv;->d()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-boolean v0, p0, Lale;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lale;->a:Lalv;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lale;->a(II)V

    goto :goto_0
.end method

.method public a(Lsg;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lale;->a:Lalv;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lale;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 90
    iput-object v1, p0, Lale;->a:Lalv;

    .line 91
    iput-object v1, p0, Lale;->a:Lrl;

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lale;->c:Z

    .line 94
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lale;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lale;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lale;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lale;->c:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lale;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 62
    :cond_0
    invoke-direct {p0}, Lale;->a()I

    move-result v0

    iput v0, p0, Lale;->a:I

    .line 63
    iget-object v0, p0, Lale;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lale;->c:Z

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lale;->a:Lalv;

    iget v1, p0, Lale;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 66
    :cond_1
    iget-object v0, p0, Lale;->a:Lalv;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lale;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 67
    iget v0, p0, Lale;->a:I

    if-nez v0, :cond_2

    .line 68
    invoke-direct {p0}, Lale;->d()V

    .line 71
    :cond_2
    return-void
.end method

.method public b(Lsg;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lale;->a:Lalv;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lale;->a:Lalv;

    invoke-interface {v0}, Lalv;->f()V

    .line 100
    :cond_0
    iput-boolean v2, p0, Lale;->c:Z

    .line 101
    iget-boolean v0, p0, Lale;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 102
    iput-boolean v2, p0, Lale;->a:Z

    .line 103
    invoke-direct {p0}, Lale;->e()V

    .line 105
    :cond_1
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lale;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 75
    iget-object v0, p0, Lale;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lale;->b:Z

    .line 77
    iget-object v0, p0, Lale;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lale;->c:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lale;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lale;->a:Lalv;

    .line 81
    :cond_0
    return-void
.end method
