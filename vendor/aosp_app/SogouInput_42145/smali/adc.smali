.class public Ladc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;


# instance fields
.field private a:D

.field private a:Lajq;

.field private a:Lalt;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/os/Handler;

.field private a:Lawa;

.field private a:Ljava/lang/String;

.field private a:Lrl;

.field private a:Lsg;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ladd;

    invoke-direct {v0, p0}, Ladd;-><init>(Ladc;)V

    iput-object v0, p0, Ladc;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    new-instance v0, Lade;

    invoke-direct {v0, p0}, Lade;-><init>(Ladc;)V

    iput-object v0, p0, Ladc;->a:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Ladc;->a:Landroid/content/Context;

    .line 135
    new-instance v0, Ladf;

    invoke-direct {v0, p0}, Ladf;-><init>(Ladc;)V

    iput-object v0, p0, Ladc;->a:Lrl;

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Ladc;-><init>(Landroid/content/Context;)V

    .line 165
    iput-object p2, p0, Ladc;->a:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Ladc;->b:Ljava/lang/String;

    .line 167
    iput-object p6, p0, Ladc;->d:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Ladc;->c:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladc;->e:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lajq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct/range {p0 .. p6}, Ladc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-object p7, p0, Ladc;->a:Lajq;

    .line 175
    return-void
.end method

.method static synthetic a(Ladc;)D
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Ladc;->a:D

    return-wide v0
.end method

.method static synthetic a(Ladc;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Ladc;->a:D

    return-wide p1
.end method

.method static synthetic a(Ladc;)Lajq;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->a:Lajq;

    return-object v0
.end method

.method static synthetic a(Ladc;Lajq;)Lajq;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Ladc;->a:Lajq;

    return-object p1
.end method

.method static synthetic a(Ladc;)Lalt;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->a:Lalt;

    return-object v0
.end method

.method static synthetic a(Ladc;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Ladc;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Ladc;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Ladc;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ladc;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Ladc;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(III)Landroid/os/Message;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 300
    if-nez v0, :cond_0

    .line 301
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 302
    iput p1, v0, Landroid/os/Message;->what:I

    .line 303
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 304
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 306
    :cond_0
    return-object v0
.end method

.method static synthetic a(Ladc;III)Landroid/os/Message;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Ladc;->a(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ladc;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->a:Lawa;

    return-object v0
.end method

.method static synthetic a(Ladc;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Ladc;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ladc;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ladc;->j()V

    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Ladc;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladc;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladc;->d:Ljava/lang/String;

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ladc;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ladc;->a()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Ladc;->j()V

    .line 214
    invoke-direct {p0}, Ladc;->k()V

    .line 215
    const/16 v0, 0xf

    iget-object v4, p0, Ladc;->a:Lalt;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Ladc;->a:Lsg;

    .line 216
    iget-object v0, p0, Ladc;->a:Lalt;

    iget-object v1, p0, Ladc;->a:Lsg;

    invoke-virtual {v0, v1}, Lalt;->c(Lsg;)V

    .line 217
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Ladc;->a:Lsg;

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 218
    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 241
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqy;->b(I)I

    move-result v0

    .line 242
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Ladc;->c()V

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Ladc;->a:Lsg;

    .line 254
    iget-object v0, p0, Ladc;->a:Lsg;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0}, Ladc;->b()V

    .line 257
    :cond_1
    invoke-direct {p0}, Ladc;->c()V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Ladc;->a:Lawa;

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Ladc;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Ladc;->a:Lawa;

    .line 264
    iget-object v0, p0, Ladc;->a:Lawa;

    iget-object v1, p0, Ladc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawa;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Ladc;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 266
    iget-object v0, p0, Ladc;->a:Lawa;

    iget-object v1, p0, Ladc;->a:Landroid/content/Context;

    const v2, 0x7f0b0226

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Ladc;->a:Lawa;

    invoke-virtual {v0, v3}, Lawa;->d(I)V

    .line 268
    iget-object v0, p0, Ladc;->a:Lawa;

    invoke-virtual {v0, v3}, Lawa;->a(I)V

    .line 269
    iget-object v0, p0, Ladc;->a:Lawa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawa;->g(I)V

    .line 270
    iget-object v0, p0, Ladc;->a:Lawa;

    const/4 v1, -0x2

    iget-object v2, p0, Ladc;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ladc;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 274
    :cond_0
    iget-object v0, p0, Ladc;->a:Lawa;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Ladc;->a:Lawa;

    new-instance v1, Ladh;

    invoke-direct {v1, p0}, Ladh;-><init>(Ladc;)V

    invoke-virtual {v0, v1}, Lawa;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 282
    iget-object v0, p0, Ladc;->a:Lawa;

    new-instance v1, Ladi;

    invoke-direct {v1, p0}, Ladi;-><init>(Ladc;)V

    invoke-virtual {v0, v1}, Lawa;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 289
    :cond_1
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    .line 292
    new-instance v0, Lalt;

    iget-object v1, p0, Ladc;->a:Landroid/content/Context;

    iget-object v2, p0, Ladc;->a:Ljava/lang/String;

    iget-object v3, p0, Ladc;->c:Ljava/lang/String;

    iget-object v4, p0, Ladc;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lalt;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ladc;->a:Lalt;

    .line 293
    iget-object v0, p0, Ladc;->a:Lalt;

    invoke-virtual {v0, p0}, Lalt;->b(Lalv;)V

    .line 294
    iget-object v0, p0, Ladc;->a:Lalt;

    iget-object v1, p0, Ladc;->a:Lrl;

    invoke-virtual {v0, v1}, Lalt;->a(Lrl;)V

    .line 295
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 179
    if-ne v0, v3, :cond_1

    .line 182
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ladc;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ladc;->a:Landroid/content/Context;

    const v2, 0x7f0b023e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    iget-object v1, p0, Ladc;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Layu;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Ladc;->i()V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Ladc;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Ladc;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    .line 191
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Ladc;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ladc;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 192
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Ladc;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 194
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Ladc;->a:Landroid/content/Context;

    const v2, 0x7f0b023d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    new-instance v1, Ladg;

    invoke-direct {v1, p0}, Ladg;-><init>(Ladc;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 201
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Ladc;->a(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ladc;->a:Lawa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladc;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Ladc;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 232
    :cond_0
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Ladc;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    :cond_1
    iget-object v0, p0, Ladc;->a:Lalt;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Ladc;->a:Lalt;

    invoke-virtual {v0}, Lalt;->a()V

    .line 238
    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Ladc;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method
