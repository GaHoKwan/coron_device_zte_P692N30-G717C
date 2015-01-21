.class public Lamr;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lalv;


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field private a:D

.field private a:Lamv;

.field private a:Landroid/app/Notification;

.field a:Landroid/content/Intent;

.field private a:Landroid/widget/RemoteViews;

.field public a:Ljava/lang/String;

.field private a:Lrl;

.field private a:Z

.field private b:I

.field public b:Ljava/lang/String;

.field private b:Lrl;

.field private b:Lsg;

.field private c:I

.field private d:I

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "total"

    sput-object v0, Lamr;->c:Ljava/lang/String;

    .line 52
    const-string v0, "downloadsize"

    sput-object v0, Lamr;->d:Ljava/lang/String;

    .line 53
    const-string v0, "action"

    sput-object v0, Lamr;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamr;->a:Z

    .line 48
    const-string v0, "20120501018263030.ssf"

    iput-object v0, p0, Lamr;->b:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lamr;->a:Landroid/app/Notification;

    .line 61
    iput-object v1, p0, Lamr;->a:Landroid/widget/RemoteViews;

    .line 71
    iput-object p2, p0, Lamr;->a:Ljava/lang/String;

    .line 74
    new-instance v0, Lrr;

    iget-object v1, p0, Lamr;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamr;->a:Lrr;

    .line 76
    return-void
.end method

.method static synthetic a(Lamr;)D
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lamr;->a:D

    return-wide v0
.end method

.method static synthetic a(Lamr;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lamr;->a:D

    return-wide p1
.end method

.method private a()I
    .locals 5

    .prologue
    const/16 v1, 0x18

    .line 288
    iget-object v0, p0, Lamr;->a:Lrr;

    invoke-virtual {v0}, Lrr;->g()I

    .line 289
    const-string v0, "[[downloadSSF]]"

    invoke-direct {p0, v0}, Lamr;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lamr;->c()V

    .line 291
    iget-object v0, p0, Lamr;->a:Lrr;

    new-instance v2, Lamt;

    invoke-direct {v2, p0}, Lamt;-><init>(Lamr;)V

    invoke-virtual {v0, v2}, Lrr;->a(Lrl;)V

    .line 348
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/sogou/sga/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[downloadSsf]] download from url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamr;->a(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lamr;->a:Ljava/lang/String;

    const-string v2, ".ssf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lamr;->a:Ljava/lang/String;

    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    sget-object v3, Laox;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamr;->f:Ljava/lang/String;

    .line 367
    :goto_0
    iget-object v0, p0, Lamr;->a:Lrr;

    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/sogou/sga/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lamr;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 368
    if-ne v0, v1, :cond_3

    move v0, v1

    .line 373
    :goto_1
    return v0

    .line 359
    :cond_1
    const-string v0, ""

    .line 360
    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    const-string v3, "skin_id="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v0, p0, Lamr;->a:Ljava/lang/String;

    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    const-string v3, "skin_id="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ssf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamr;->f:Ljava/lang/String;

    goto :goto_0

    .line 370
    :cond_3
    if-nez v0, :cond_4

    .line 371
    const/4 v0, 0x0

    goto :goto_1

    .line 373
    :cond_4
    const/16 v0, 0x19

    goto :goto_1
.end method

.method static synthetic a(Lamr;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lamr;->c:I

    return v0
.end method

.method static synthetic a(Lamr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lamr;->b:I

    return p1
.end method

.method static synthetic a(Lamr;)Lamv;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lamr;->a:Lamv;

    return-object v0
.end method

.method static synthetic a(Lamr;)Lrl;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lamr;->a:Lrl;

    return-object v0
.end method

.method private a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lamr;->a:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02005c

    iget-object v2, p0, Lamr;->a:Landroid/content/Context;

    const v3, 0x7f0b03e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lamr;->a:Landroid/app/Notification;

    .line 388
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v1, "com.sohu.inputmethod.sogou"

    const v2, 0x7f03005a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lamr;->a:Landroid/widget/RemoteViews;

    .line 389
    iget-object v0, p0, Lamr;->a:Landroid/app/Notification;

    iget-object v1, p0, Lamr;->a:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 390
    iget-object v0, p0, Lamr;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 392
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lamr;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lamr;->a:Landroid/content/Intent;

    .line 393
    iget-object v0, p0, Lamr;->a:Landroid/content/Intent;

    const-string v1, "action"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    sget-object v1, Lamr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    sget-object v1, Lamr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v1, "THEMEDIMCODENOTIFICATION"

    iget-object v2, p0, Lamr;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 398
    iget-object v1, p0, Lamr;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lamr;->a:Landroid/content/Context;

    iget-object v1, p0, Lamr;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 400
    return-void
.end method

.method static synthetic a(Lamr;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lamr;->j()V

    return-void
.end method

.method static synthetic a(Lamr;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lamr;->a(II)V

    return-void
.end method

.method static synthetic a(Lamr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lamr;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    return-void
.end method

.method static synthetic a(Lamr;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lamr;->a:Z

    return p1
.end method

.method static synthetic b(Lamr;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lamr;->b:I

    return v0
.end method

.method static synthetic b(Lamr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lamr;->c:I

    return p1
.end method

.method static synthetic c(Lamr;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lamr;->d:I

    return v0
.end method

.method static synthetic c(Lamr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lamr;->d:I

    return p1
.end method

.method private i()V
    .locals 9

    .prologue
    const/16 v0, 0xe

    const/4 v1, 0x0

    const/16 v8, 0x6e

    const/4 v6, 0x0

    .line 102
    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 103
    invoke-virtual {p0, p0}, Lamr;->b(Lalv;)V

    .line 104
    iget-object v2, p0, Lamr;->b:Lrl;

    invoke-virtual {p0, v2}, Lamr;->a(Lrl;)V

    .line 105
    iget-object v2, p0, Lamr;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    iget-object v3, p0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lqy;->a(Ljava/lang/String;)Z

    move-result v2

    .line 106
    if-nez v2, :cond_0

    .line 107
    iget-object v3, p0, Lamr;->a:Landroid/content/Context;

    invoke-static {v3}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v3

    iget-object v4, p0, Lamr;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lqy;->a(Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v3, p0, Lamr;->a:Landroid/content/Context;

    invoke-static {v3}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lqy;->b(I)I

    move-result v3

    .line 110
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-nez v2, :cond_a

    .line 112
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v2, "/sdcard/sogou/sga/"

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v2, ""

    .line 114
    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    const-string v4, ".ssf"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    iget-object v4, p0, Lamr;->a:Ljava/lang/String;

    sget-object v5, Laox;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    new-instance v2, Lamu;

    const-string v5, ".ssf"

    invoke-direct {v2, v5}, Lamu;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 119
    if-eqz v3, :cond_4

    move v2, v6

    .line 120
    :goto_0
    :try_start_0
    array-length v5, v3

    if-ge v2, v5, :cond_5

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "files="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lamr;->a(Ljava/lang/String;)V

    .line 122
    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    aget-object v2, v3, v2

    iput-object v2, p0, Lamr;->f:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lamr;->a:Lamv;

    const/16 v3, 0x6f

    iget-object v4, p0, Lamr;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lamr;->c:Z

    invoke-interface {v2, v3, v4, v5}, Lamv;->a(ILjava/lang/String;Z)V

    .line 125
    iget-object v2, p0, Lamr;->a:Lamv;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lamv;->a(III)V

    .line 188
    :cond_2
    :goto_1
    return-void

    .line 120
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_4
    iget-object v2, p0, Lamr;->a:Lamv;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lamv;->a(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    move-object v2, v1

    move-object v3, v1

    move-object v4, p0

    move-object v5, v1

    .line 167
    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lamr;->b:Lsg;

    .line 168
    iget-object v0, p0, Lamr;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()V

    .line 169
    iget-object v0, p0, Lamr;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lamr;->b:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    goto :goto_1

    .line 133
    :catch_0
    move-exception v2

    .line 136
    iget-object v2, p0, Lamr;->a:Lamv;

    invoke-interface {v2, v8, v6, v6}, Lamv;->a(III)V

    goto :goto_2

    .line 139
    :cond_6
    const-string v2, ""

    .line 140
    iget-object v4, p0, Lamr;->a:Ljava/lang/String;

    const-string v5, "skin_id="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 141
    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    iget-object v4, p0, Lamr;->a:Ljava/lang/String;

    const-string v5, "skin_id="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_7
    new-instance v4, Lamu;

    const-string v5, ".ssf"

    invoke-direct {v4, v5}, Lamu;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 146
    if-eqz v4, :cond_9

    move v3, v6

    .line 147
    :goto_3
    :try_start_1
    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 148
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    aget-object v5, v4, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 149
    aget-object v2, v4, v3

    const-string v5, ".ssf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    aget-object v2, v4, v3

    iput-object v2, p0, Lamr;->f:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lamr;->a:Lamv;

    const/16 v3, 0x6f

    iget-object v4, p0, Lamr;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lamr;->c:Z

    invoke-interface {v2, v3, v4, v5}, Lamv;->a(ILjava/lang/String;Z)V

    .line 152
    iget-object v2, p0, Lamr;->a:Lamv;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lamv;->a(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 161
    :catch_1
    move-exception v2

    .line 163
    iget-object v2, p0, Lamr;->a:Lamv;

    invoke-interface {v2, v8, v6, v6}, Lamv;->a(III)V

    goto/16 :goto_2

    .line 147
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 158
    :cond_9
    :try_start_2
    iget-object v2, p0, Lamr;->a:Lamv;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lamv;->a(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 171
    :cond_a
    if-eqz v2, :cond_2

    .line 172
    const-string v1, "[[checkRequest]] find the request in the queue, will switch the process to foreground"

    invoke-direct {p0, v1}, Lamr;->a(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lamr;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lamr;->b:Lsg;

    .line 174
    iget-object v0, p0, Lamr;->b:Lsg;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lamr;->b:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamr;

    .line 176
    if-eqz v0, :cond_b

    .line 177
    iget-object v1, p0, Lamr;->b:Lrl;

    invoke-virtual {v0, v1}, Lamr;->a(Lrl;)V

    .line 179
    :cond_b
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x6a

    invoke-interface {v0, v1, v6, v6}, Lamv;->a(III)V

    .line 180
    iget-object v0, p0, Lamr;->b:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 181
    iget-object v0, p0, Lamr;->b:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto/16 :goto_1

    .line 186
    :cond_c
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x6d

    invoke-interface {v0, v1, v6, v6}, Lamv;->a(III)V

    goto/16 :goto_1
.end method

.method private j()V
    .locals 7

    .prologue
    const/16 v6, 0x69

    const/4 v5, 0x0

    .line 404
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02009c

    iget-object v2, p0, Lamr;->a:Landroid/content/Context;

    const v3, 0x7f0b0254

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lamr;->a:Landroid/app/Notification;

    .line 405
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v1, "com.sohu.inputmethod.sogou"

    const v2, 0x7f03005a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lamr;->a:Landroid/widget/RemoteViews;

    .line 406
    iget-object v0, p0, Lamr;->a:Landroid/app/Notification;

    iget-object v1, p0, Lamr;->a:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 407
    iget-object v0, p0, Lamr;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 408
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lamr;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    const-string v1, "action"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 411
    const-string v2, "THEMEDIMCODENOTIFICATION"

    iget-object v3, p0, Lamr;->a:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lamr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 416
    iget-object v0, p0, Lamr;->a:Lamv;

    iget-object v1, p0, Lamr;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lamr;->c:Z

    invoke-interface {v0, v6, v1, v2}, Lamv;->a(ILjava/lang/String;Z)V

    .line 417
    iget-object v0, p0, Lamr;->a:Lamv;

    invoke-interface {v0, v6, v5, v5}, Lamv;->a(III)V

    .line 419
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lams;

    invoke-direct {v0, p0}, Lams;-><init>(Lamr;)V

    iput-object v0, p0, Lamr;->b:Lrl;

    .line 96
    invoke-direct {p0}, Lamr;->i()V

    .line 97
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v3, 0x69

    const/4 v4, 0x0

    .line 508
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 509
    iget-wide v0, p0, Lamr;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x6d

    invoke-interface {v0, v1, v4, v4}, Lamv;->a(III)V

    .line 522
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x73

    iget-object v2, p0, Lamr;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lamr;->c:Z

    invoke-interface {v0, v1, v2, v3}, Lamv;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 516
    :cond_1
    if-nez p1, :cond_2

    .line 517
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, v4, v4}, Lamv;->a(III)V

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lamr;->a:Lamv;

    iget-object v1, p0, Lamr;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lamr;->c:Z

    invoke-interface {v0, v3, v1, v2}, Lamv;->a(ILjava/lang/String;Z)V

    .line 520
    iget-object v0, p0, Lamr;->a:Lamv;

    invoke-interface {v0, v3, v4, v4}, Lamv;->a(III)V

    goto :goto_0
.end method

.method public a(Lamv;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lamr;->a:Lamv;

    .line 477
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 194
    iput-object p2, p0, Lamr;->b:Lsg;

    .line 195
    invoke-virtual {p2}, Lsg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lamr;->c:Z

    .line 196
    iget-object v0, p0, Lamr;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamr;->c:Z

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lamr;->a:Lalv;

    invoke-interface {v0}, Lalv;->d()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-boolean v0, p0, Lamr;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lamr;->a:Lalv;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lamr;->a(II)V

    goto :goto_0
.end method

.method public a(Lrl;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lamr;->a:Lrl;

    .line 191
    return-void
.end method

.method public a(Lsg;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lamr;->a:Lalv;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lamr;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 250
    iput-object v1, p0, Lamr;->a:Lalv;

    .line 251
    iput-object v1, p0, Lamr;->a:Lrl;

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamr;->c:Z

    .line 254
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lamr;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lamr;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iput-object v2, p0, Lamr;->a:Lalv;

    .line 277
    iget-object v0, p0, Lamr;->b:Lsg;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lamr;->b:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 280
    :cond_0
    iget-object v0, p0, Lamr;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamr;->c:Z

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lamr;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 282
    iput-object v2, p0, Lamr;->a:Lalv;

    .line 284
    :cond_1
    iget-object v0, p0, Lamr;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 285
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lamr;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamr;->c:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lamr;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 208
    :cond_0
    invoke-direct {p0}, Lamr;->a()I

    move-result v0

    iput v0, p0, Lamr;->a:I

    .line 209
    iget-object v0, p0, Lamr;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamr;->c:Z

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lamr;->a:Lalv;

    iget v1, p0, Lamr;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 217
    :cond_1
    return-void
.end method

.method public b(Lsg;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lamr;->a:Lalv;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lamr;->a:Lalv;

    invoke-interface {v0}, Lalv;->f()V

    .line 260
    :cond_0
    iput-boolean v2, p0, Lamr;->c:Z

    .line 261
    iget-boolean v0, p0, Lamr;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 262
    iput-boolean v2, p0, Lamr;->a:Z

    .line 263
    invoke-virtual {p0}, Lamr;->c()V

    .line 265
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lamr;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 423
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 424
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 486
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x6a

    iget v2, p0, Lamr;->b:I

    iget v3, p0, Lamr;->c:I

    invoke-interface {v0, v1, v2, v3}, Lamv;->a(III)V

    .line 487
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v4, v4}, Lamv;->a(III)V

    .line 488
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lamr;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 235
    iget-object v0, p0, Lamr;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamr;->b:Z

    .line 237
    iget-object v0, p0, Lamr;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamr;->c:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lamr;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lamr;->a:Lalv;

    .line 241
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v2, v2}, Lamv;->a(III)V

    .line 505
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 498
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x6a

    invoke-interface {v0, v1, v2, v2}, Lamv;->a(III)V

    .line 499
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v2, v2}, Lamv;->a(III)V

    .line 500
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 494
    iget-object v0, p0, Lamr;->a:Lamv;

    const/16 v1, 0x65

    invoke-interface {v0, v1, v2, v2}, Lamv;->a(III)V

    .line 495
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method
