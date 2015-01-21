.class public Lacl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;


# instance fields
.field private a:Lalp;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/os/Handler;

.field private a:Lawa;

.field private a:Lsg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lacm;

    invoke-direct {v0, p0}, Lacm;-><init>(Lacl;)V

    iput-object v0, p0, Lacl;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    new-instance v0, Lacn;

    invoke-direct {v0, p0}, Lacn;-><init>(Lacl;)V

    iput-object v0, p0, Lacl;->a:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Lacl;->a:Landroid/content/Context;

    .line 138
    return-void
.end method

.method static synthetic a(Lacl;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lacl;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lacl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lacl;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lacl;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lacl;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lacl;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lacl;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Lacl;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lacl;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lacl;->a:Lawa;

    return-object v0
.end method

.method static synthetic a(Lacl;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lacl;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Lacl;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lacl;->c()V

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/dict/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lacl;->a:Lawa;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lacl;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lacl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Lacl;->a:Lawa;

    .line 189
    iget-object v0, p0, Lacl;->a:Lawa;

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Lawa;->setTitle(I)V

    .line 190
    iget-object v0, p0, Lacl;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 191
    iget-object v0, p0, Lacl;->a:Lawa;

    iget-object v1, p0, Lacl;->a:Landroid/content/Context;

    const v2, 0x7f0b021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lacl;->a:Lawa;

    invoke-virtual {v0, v3}, Lawa;->g(I)V

    .line 193
    iget-object v0, p0, Lacl;->a:Lawa;

    invoke-virtual {v0, v3}, Lawa;->a(Z)V

    .line 194
    iget-object v0, p0, Lacl;->a:Lawa;

    invoke-virtual {v0, v3}, Lawa;->setCancelable(Z)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 141
    invoke-direct {p0}, Lacl;->a()Z

    .line 148
    iget-object v2, p0, Lacl;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 149
    new-instance v2, Lalp;

    iget-object v3, p0, Lacl;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lalp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lacl;->a:Lalp;

    .line 150
    iget-object v2, p0, Lacl;->a:Lalp;

    invoke-virtual {v2, p0}, Lalp;->b(Lalv;)V

    .line 151
    invoke-direct {p0}, Lacl;->c()V

    .line 152
    iget-object v4, p0, Lacl;->a:Lalp;

    iget-object v5, p0, Lacl;->a:Lalp;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lacl;->a:Lsg;

    .line 153
    iget-object v0, p0, Lacl;->a:Lalp;

    iget-object v1, p0, Lacl;->a:Lsg;

    invoke-virtual {v0, v1}, Lalp;->c(Lsg;)V

    .line 154
    iget-object v0, p0, Lacl;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lacl;->a:Lsg;

    invoke-virtual {v0, v6, v1}, Lqy;->a(ILsg;)I

    move-result v0

    .line 155
    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lacl;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    .line 157
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lacl;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lacl;->a:Lsg;

    .line 165
    iget-object v0, p0, Lacl;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalp;

    iput-object v0, p0, Lacl;->a:Lalp;

    .line 166
    iget-object v0, p0, Lacl;->a:Lsg;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lacl;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 168
    iget-object v0, p0, Lacl;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 230
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 231
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 233
    iget-object v1, p0, Lacl;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lacl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lacl;->a:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacl;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lacl;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 242
    :cond_1
    iput-object v2, p0, Lacl;->a:Lawa;

    .line 244
    iget-object v0, p0, Lacl;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lacl;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lacl;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 246
    :cond_2
    iput-object v2, p0, Lacl;->a:Landroid/app/AlertDialog;

    .line 247
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lacl;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
