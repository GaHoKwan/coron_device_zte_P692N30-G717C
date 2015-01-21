.class Lcom/umeng/common/net/d;
.super Ljava/lang/Object;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/common/net/d$c;,
        Lcom/umeng/common/net/d$a;,
        Lcom/umeng/common/net/d$b;
    }
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x1

.field static final d:I = 0x2

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/umeng/common/net/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Landroid/util/SparseArray;Lcom/umeng/common/net/a$a;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/common/net/d$b;",
            ">;",
            "Lcom/umeng/common/net/a$a;",
            ")I"
        }
    .end annotation

    .prologue
    .line 410
    const/4 v2, -0x1

    .line 411
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 412
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 413
    iget-object v0, p2, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p2, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    iget-object v0, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    iget v0, v0, Lcom/umeng/common/net/d$b;->c:I

    .line 422
    :goto_1
    return v0

    .line 418
    :cond_0
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    iget-object v0, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    iget v0, v0, Lcom/umeng/common/net/d$b;->c:I

    goto :goto_1

    .line 411
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 422
    goto :goto_1
.end method

.method a(Lcom/umeng/common/net/a$a;)I
    .locals 4
    .parameter

    .prologue
    .line 204
    iget-object v0, p1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 206
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;Lcom/umeng/common/net/a$a;II)Lcom/umeng/common/net/d$a;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 213
    new-instance v2, Lcom/umeng/common/net/d$a;

    invoke-direct {v2, v1}, Lcom/umeng/common/net/d$a;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x800

    invoke-static {v1, v8, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 216
    invoke-static {v1}, Lcom/umeng/common/a/c;->i(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/common/net/d$a;->c(Ljava/lang/CharSequence;)Lcom/umeng/common/util/j;

    move-result-object v3

    const v4, 0x1080081

    invoke-virtual {v3, v4}, Lcom/umeng/common/util/j;->a(I)Lcom/umeng/common/util/j;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/umeng/common/util/j;->a(Landroid/app/PendingIntent;)Lcom/umeng/common/util/j;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/umeng/common/util/j;->a(J)Lcom/umeng/common/util/j;

    .line 223
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/umeng/common/a/b;->a(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_0

    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1050005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 229
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 231
    invoke-static {v1}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v5

    const-string v6, "setWidth"

    invoke-virtual {v3, v5, v6, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 233
    invoke-static {v1}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v0

    const-string v5, "setHeight"

    invoke-virtual {v3, v0, v5, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 236
    :try_start_0
    const-string v0, "com.android.internal.R$drawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 238
    const-string v4, "notify_panel_notification_icon_bg_tile"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 240
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 242
    invoke-static {v1}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v4

    const-string v5, "setBackgroundResource"

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    invoke-virtual {v2, v3}, Lcom/umeng/common/net/d$a;->a(Landroid/widget/RemoteViews;)Lcom/umeng/common/net/d$a;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1}, Lcom/umeng/common/a/c;->g(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p2, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/umeng/common/net/d$a;->b(Ljava/lang/CharSequence;)Lcom/umeng/common/net/d$a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/umeng/common/net/d$a;->a(Ljava/lang/CharSequence;)Lcom/umeng/common/net/d$a;

    move-result-object v0

    const/16 v4, 0x64

    invoke-virtual {v0, v4, p4, v8}, Lcom/umeng/common/net/d$a;->a(IIZ)Lcom/umeng/common/net/d$a;

    .line 294
    iget-boolean v0, p2, Lcom/umeng/common/net/a$a;->g:Z

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v2, v3}, Lcom/umeng/common/net/d$a;->b(Landroid/widget/RemoteViews;)Lcom/umeng/common/util/j;

    .line 296
    invoke-virtual {v2}, Lcom/umeng/common/net/d$a;->e()V

    .line 297
    const-string v0, "continue"

    invoke-static {p3, v0}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 300
    const-string v3, "cancel"

    invoke-static {p3, v3}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 303
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v2, p3, v4}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Lcom/umeng/common/net/d$a;II)V

    .line 304
    invoke-virtual {v2, v0, v3}, Lcom/umeng/common/net/d$a;->a(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/umeng/common/net/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/common/net/d$a;->c()Lcom/umeng/common/net/d$a;

    .line 309
    :goto_1
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    sget-object v4, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    const-string v5, "No notification icon background found:"

    invoke-static {v4, v5, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 249
    :cond_0
    :try_start_1
    const-string v0, "com.android.internal.R$drawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 251
    const-string v4, "status_bar_notification_icon_bg"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 253
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 255
    invoke-static {v1}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v4

    const-string v5, "setBackgroundResource"

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 257
    :catch_1
    move-exception v0

    .line 259
    :try_start_2
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 261
    const-string v4, "status_bar_edge_ignore"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 263
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 266
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v8

    .line 268
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 270
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 272
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 274
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 276
    invoke-static {v1}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v4

    const-string v5, "setWidth"

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 279
    :catch_2
    move-exception v0

    .line 280
    sget-object v4, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    const-string v5, "No notification size found:"

    invoke-static {v4, v5, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 306
    :cond_1
    invoke-virtual {v2}, Lcom/umeng/common/net/d$a;->a()Lcom/umeng/common/net/d$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/umeng/common/net/d$a;->a(Z)Lcom/umeng/common/util/j;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/umeng/common/util/j;->b(Z)Lcom/umeng/common/util/j;

    goto/16 :goto_1
.end method

.method a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/common/net/d$b;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/common/net/a$a;",
            "Landroid/os/Messenger;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 438
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 440
    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/common/net/d$b;

    .line 441
    if-eqz v1, :cond_2

    .line 442
    sget-object v2, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download service clear cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    iget-object v4, v4, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v2, v1, Lcom/umeng/common/net/d$b;->a:Lcom/umeng/common/net/DownloadingService$b;

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, v1, Lcom/umeng/common/net/d$b;->a:Lcom/umeng/common/net/DownloadingService$b;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    .line 445
    :cond_0
    iget v2, v1, Lcom/umeng/common/net/d$b;->c:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 446
    iget-object v0, v1, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, v1, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_1
    invoke-virtual {v1, p2}, Lcom/umeng/common/net/d$b;->b(Landroid/util/SparseArray;)V

    .line 451
    :cond_2
    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/common/net/d$a;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 427
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 429
    invoke-virtual {p2}, Lcom/umeng/common/net/d$a;->e()V

    .line 430
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Lcom/umeng/common/net/d$a;II)V

    .line 431
    invoke-virtual {p2}, Lcom/umeng/common/net/d$a;->b()Lcom/umeng/common/net/d$a;

    .line 432
    invoke-virtual {p2}, Lcom/umeng/common/net/d$a;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 433
    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/common/net/d$a;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 314
    const-string v0, "continue"

    invoke-static {p3, v0}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 317
    const-string v1, "cancel"

    invoke-static {p3, v1}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 320
    packed-switch p4, :pswitch_data_0

    .line 339
    :goto_0
    const v0, 0x1080038

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Lcom/umeng/common/a/c;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2, v1}, Lcom/umeng/common/net/d$a;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 345
    :cond_0
    return-void

    .line 322
    :pswitch_0
    const v2, 0x1080024

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lcom/umeng/common/a/c;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3, v0}, Lcom/umeng/common/net/d$a;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 331
    :pswitch_1
    const v2, 0x1080023

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lcom/umeng/common/a/c;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3, v0}, Lcom/umeng/common/net/d$a;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/umeng/common/net/a$a;JJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    iget-object v0, p1, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 456
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 457
    const-string v0, "dsize"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-static {}, Lcom/umeng/common/util/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 462
    const-string v2, "dtime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/4 v0, 0x0

    .line 465
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    .line 466
    long-to-float v0, p2

    long-to-float v2, p4

    div-float/2addr v0, v2

    .line 468
    :cond_0
    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 469
    const-string v2, "dpcent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v0, "ptimes"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/common/net/d;->a(Ljava/util/Map;Z[Ljava/lang/String;)V

    .line 475
    :cond_1
    return-void
.end method

.method final a(Ljava/util/Map;Z[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/common/net/e;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/umeng/common/net/e;-><init>(Lcom/umeng/common/net/d;[Ljava/lang/String;ZLjava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 551
    return-void
.end method

.method a(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 354
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 356
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    move v0, v1

    .line 368
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 363
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 368
    goto :goto_0
.end method

.method a(Lcom/umeng/common/net/DownloadingService;Landroid/util/SparseArray;Ljava/util/Map;Landroid/content/Intent;)Z
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/common/net/DownloadingService;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/common/net/d$b;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/common/net/a$a;",
            "Landroid/os/Messenger;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 557
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 558
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.umeng.broadcast.download.msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 562
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 563
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 564
    if-eqz v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 566
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/umeng/common/net/d$b;

    move-object/from16 v16, v0

    .line 567
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 569
    const-string v6, "continue"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 570
    if-nez v3, :cond_3

    .line 571
    sget-object v3, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    const-string v4, "Receive action do play click."

    invoke-static {v3, v4}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v5, v3}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 587
    const/4 v3, 0x0

    .line 664
    :goto_0
    return v3

    .line 590
    :cond_0
    new-instance v3, Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, v16

    iget v8, v0, Lcom/umeng/common/net/d$b;->d:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/umeng/common/net/DownloadingService;->q:Lcom/umeng/common/net/DownloadingService$a;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/umeng/common/net/DownloadingService$b;-><init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V

    .line 593
    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/umeng/common/net/d$b;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 594
    invoke-virtual {v3}, Lcom/umeng/common/net/DownloadingService$b;->start()V

    .line 596
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 597
    const/4 v3, 0x2

    iput v3, v4, Landroid/os/Message;->what:I

    .line 598
    const/4 v3, 0x7

    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 599
    iput v7, v4, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    :try_start_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 603
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 608
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 605
    :catch_0
    move-exception v3

    .line 606
    :try_start_2
    sget-object v4, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 661
    :catch_1
    move-exception v3

    .line 662
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 610
    :cond_3
    :try_start_3
    sget-object v4, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    const-string v6, "Receive action do play click."

    invoke-static {v4, v6}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    .line 612
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/umeng/common/net/d$b;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 613
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->b:Lcom/umeng/common/net/d$a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v7}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Lcom/umeng/common/net/d$a;I)V

    .line 615
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 616
    const/4 v3, 0x2

    iput v3, v4, Landroid/os/Message;->what:I

    .line 617
    const/4 v3, 0x6

    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 618
    iput v7, v4, Landroid/os/Message;->arg2:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 621
    :try_start_4
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 622
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 627
    :cond_4
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 624
    :catch_2
    move-exception v3

    .line 625
    :try_start_5
    sget-object v4, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 629
    :cond_5
    const-string v6, "cancel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    sget-object v4, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    const-string v6, "Receive action do stop click."

    invoke-static {v4, v6}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 632
    if-eqz v3, :cond_7

    .line 633
    const/4 v4, 0x2

    :try_start_6
    invoke-virtual {v3, v4}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 643
    :goto_3
    :try_start_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 644
    const/4 v3, 0x5

    iput v3, v4, Landroid/os/Message;->what:I

    .line 645
    const/4 v3, 0x5

    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 646
    iput v7, v4, Landroid/os/Message;->arg2:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 649
    :try_start_8
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 650
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 652
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 657
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 635
    :cond_7
    :try_start_9
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->f:[J

    const/4 v4, 0x0

    aget-wide v10, v3, v4

    .line 636
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->f:[J

    const/4 v4, 0x1

    aget-wide v12, v3, v4

    .line 637
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->f:[J

    const/4 v4, 0x2

    aget-wide v14, v3, v4

    .line 638
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/a$a;JJJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 640
    :catch_3
    move-exception v3

    .line 643
    :try_start_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 644
    const/4 v3, 0x5

    iput v3, v4, Landroid/os/Message;->what:I

    .line 645
    const/4 v3, 0x5

    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 646
    iput v7, v4, Landroid/os/Message;->arg2:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 649
    :try_start_b
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 650
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 652
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 653
    :catch_4
    move-exception v3

    .line 654
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V

    goto :goto_4

    .line 653
    :catch_5
    move-exception v3

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V

    goto :goto_4

    .line 643
    :catchall_0
    move-exception v3

    move-object v4, v3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 644
    const/4 v3, 0x5

    iput v3, v6, Landroid/os/Message;->what:I

    .line 645
    const/4 v3, 0x5

    iput v3, v6, Landroid/os/Message;->arg1:I

    .line 646
    iput v7, v6, Landroid/os/Message;->arg2:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 649
    :try_start_d
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 650
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/umeng/common/net/d$b;->e:Lcom/umeng/common/net/a$a;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 652
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 656
    :goto_5
    :try_start_e
    throw v4

    .line 653
    :catch_6
    move-exception v3

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/umeng/common/net/d;->a(Landroid/content/Context;Landroid/util/SparseArray;Ljava/util/Map;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5
.end method

.method a(Lcom/umeng/common/net/a$a;ZLjava/util/Map;Landroid/os/Messenger;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/common/net/a$a;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/common/net/a$a;",
            "Landroid/os/Messenger;",
            ">;",
            "Landroid/os/Messenger;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 381
    if-eqz p2, :cond_1

    .line 382
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 383
    if-eqz p3, :cond_0

    .line 384
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    .line 385
    sget-object v5, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " downling  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_0
    sget-object v0, Lcom/umeng/common/net/d;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "downling  null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    if-nez p3, :cond_2

    move v0, v1

    .line 406
    :goto_1
    return v0

    .line 394
    :cond_2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    .line 396
    iget-object v4, p1, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 397
    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 398
    goto :goto_1

    .line 401
    :cond_4
    iget-object v4, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 402
    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 403
    goto :goto_1

    :cond_5
    move v0, v1

    .line 406
    goto :goto_1
.end method
