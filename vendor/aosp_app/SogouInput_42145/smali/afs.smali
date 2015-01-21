.class public Lafs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;


# instance fields
.field private a:D

.field private a:Lamj;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/app/ProgressDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/os/Handler;

.field private a:Lawa;

.field private a:Ljava/lang/Thread;

.field private a:Lrl;

.field private a:Lsg;

.field private a:Z

.field private b:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafs;->a:Z

    .line 45
    new-instance v0, Laft;

    invoke-direct {v0, p0}, Laft;-><init>(Lafs;)V

    iput-object v0, p0, Lafs;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    new-instance v0, Lafu;

    invoke-direct {v0, p0}, Lafu;-><init>(Lafs;)V

    iput-object v0, p0, Lafs;->a:Landroid/os/Handler;

    .line 194
    iput-object p1, p0, Lafs;->a:Landroid/content/Context;

    .line 195
    new-instance v0, Lafx;

    invoke-direct {v0, p0}, Lafx;-><init>(Lafs;)V

    iput-object v0, p0, Lafs;->a:Lrl;

    .line 212
    return-void
.end method

.method static synthetic a(Lafs;)D
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-wide v0, p0, Lafs;->a:D

    return-wide v0
.end method

.method static synthetic a(Lafs;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lafs;->a:D

    return-wide p1
.end method

.method static synthetic a(Lafs;)Lamj;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Lamj;

    return-object v0
.end method

.method static synthetic a(Lafs;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lafs;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lafs;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lafs;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lafs;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lafs;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Lafs;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(III)Landroid/os/Message;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 366
    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 368
    iput p1, v0, Landroid/os/Message;->what:I

    .line 369
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 370
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 372
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lafs;III)Landroid/os/Message;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lafs;->a(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lafs;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Lawa;

    return-object v0
.end method

.method static synthetic a(Lafs;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Lafs;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lafs;->a:Lsg;

    return-object p1
.end method

.method static synthetic a(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lafs;->m()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    return-void
.end method

.method static synthetic a(Lafs;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lafs;->a:Z

    return v0
.end method

.method static synthetic a(Lafs;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lafs;->a:Z

    return p1
.end method

.method static synthetic b(Lafs;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lafs;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 230
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqy;->b(I)I

    move-result v0

    .line 231
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 232
    invoke-direct {p0}, Lafs;->n()V

    .line 233
    invoke-direct {p0}, Lafs;->k()V

    .line 234
    invoke-direct {p0}, Lafs;->l()V

    .line 235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lafy;

    invoke-direct {v1, p0}, Lafy;-><init>(Lafs;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lafs;->a:Ljava/lang/Thread;

    .line 250
    iget-object v0, p0, Lafs;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v0, "[[checkRequest]] find the request in the queue, will switch the process to foreground"

    invoke-static {v0}, Lafs;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lafs;->a:Lsg;

    .line 255
    iget-object v0, p0, Lafs;->a:Lsg;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lafs;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamj;

    iput-object v0, p0, Lafs;->a:Lamj;

    .line 257
    iget-object v0, p0, Lafs;->a:Lamj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafs;->a:Lamj;

    iget-object v1, p0, Lafs;->a:Lrl;

    invoke-virtual {v0, v1}, Lamj;->a(Lrl;)V

    .line 258
    :cond_2
    invoke-direct {p0}, Lafs;->m()V

    .line 259
    iget-object v0, p0, Lafs;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 260
    iget-object v0, p0, Lafs;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    .line 289
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    const v2, 0x7f0b015c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 291
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    const v2, 0x7f0b0213

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lafz;

    invoke-direct {v3, p0}, Lafz;-><init>(Lafs;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 298
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    .line 302
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    const v2, 0x7f0b015c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 304
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 305
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laga;

    invoke-direct {v3, p0}, Laga;-><init>(Lafs;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagb;

    invoke-direct {v3, p0}, Lagb;-><init>(Lafs;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 328
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lafs;->a:Lawa;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Lafs;->a:Lawa;

    .line 333
    iget-object v0, p0, Lafs;->a:Lawa;

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    const v2, 0x7f0b015c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setTitle(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lafs;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 335
    iget-object v0, p0, Lafs;->a:Lawa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b021e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b021f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lafs;->a:Lawa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawa;->setCancelable(Z)V

    .line 337
    iget-object v0, p0, Lafs;->a:Lawa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawa;->g(I)V

    .line 338
    iget-object v0, p0, Lafs;->a:Lawa;

    const/4 v1, -0x2

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagc;

    invoke-direct {v3, p0}, Lagc;-><init>(Lafs;)V

    invoke-virtual {v0, v1, v2, v3}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lafs;->a:Lawa;

    const/4 v1, -0x1

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b0220

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagd;

    invoke-direct {v3, p0}, Lagd;-><init>(Lafs;)V

    invoke-virtual {v0, v1, v2, v3}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 355
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 358
    new-instance v0, Lamj;

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lamj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lafs;->a:Lamj;

    .line 359
    iget-object v0, p0, Lafs;->a:Lamj;

    invoke-virtual {v0, p0}, Lamj;->b(Lalv;)V

    .line 360
    iget-object v0, p0, Lafs;->a:Lamj;

    iget-object v1, p0, Lafs;->a:Lrl;

    invoke-virtual {v0, v1}, Lamj;->a(Lrl;)V

    .line 361
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    invoke-direct {p0}, Lafs;->j()V

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 220
    const/4 v1, -0x1

    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lafs;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 223
    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    const v2, 0x7f0b023c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lafs;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 266
    const-string v2, "=================downloadApkFileComplete============"

    invoke-static {v2}, Lafs;->a(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    .line 268
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 269
    iget-object v2, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->a(I)Lsg;

    move-result-object v2

    iput-object v2, p0, Lafs;->a:Lsg;

    .line 270
    iget-object v2, p0, Lafs;->a:Lsg;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lafs;->a:Lsg;

    invoke-virtual {v2}, Lsg;->a()Lsl;

    move-result-object v2

    check-cast v2, Lamj;

    iput-object v2, p0, Lafs;->a:Lamj;

    .line 272
    iget-object v2, p0, Lafs;->a:Lamj;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lafs;->a:Lamj;

    invoke-virtual {v2}, Lamj;->a()V

    .line 274
    iget-object v2, p0, Lafs;->a:Lamj;

    invoke-virtual {v2}, Lamj;->b()V

    .line 278
    :cond_0
    invoke-direct {p0}, Lafs;->n()V

    .line 280
    iget-object v4, p0, Lafs;->a:Lamj;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lafs;->a:Lsg;

    .line 281
    iget-object v0, p0, Lafs;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lafs;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 282
    if-lez v0, :cond_1

    .line 283
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lafs;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lafs;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0}, Lafs;->c()V

    .line 413
    iget-object v0, p0, Lafs;->a:Lawa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafs;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lafs;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 415
    :cond_0
    iput-object v1, p0, Lafs;->a:Lawa;

    .line 417
    iget-object v0, p0, Lafs;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafs;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lafs;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 419
    :cond_1
    iput-object v1, p0, Lafs;->a:Landroid/app/AlertDialog;

    .line 421
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lafs;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 423
    :cond_2
    iput-object v1, p0, Lafs;->b:Landroid/app/AlertDialog;

    .line 425
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lafs;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 427
    :cond_3
    iput-object v1, p0, Lafs;->a:Landroid/app/ProgressDialog;

    .line 428
    return-void
.end method
