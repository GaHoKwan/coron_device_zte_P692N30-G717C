.class public Laew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;


# instance fields
.field private a:Lamg;

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
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Laex;

    invoke-direct {v0, p0}, Laex;-><init>(Laew;)V

    iput-object v0, p0, Laew;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    new-instance v0, Laey;

    invoke-direct {v0, p0}, Laey;-><init>(Laew;)V

    iput-object v0, p0, Laew;->a:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Laew;->a:Landroid/content/Context;

    .line 123
    return-void
.end method

.method static synthetic a(Laew;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Laew;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Laew;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Laew;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Laew;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Laew;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Laew;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Laew;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Laew;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Laew;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Laew;->a:Lawa;

    return-object v0
.end method

.method static synthetic a(Laew;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Laew;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Laew;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Laew;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Laew;->a:Lawa;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Laew;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Laew;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Laew;->a:Lawa;

    .line 155
    iget-object v0, p0, Laew;->a:Lawa;

    iget-object v1, p0, Laew;->a:Landroid/content/Context;

    const v2, 0x7f0b01d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Laew;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 157
    iget-object v0, p0, Laew;->a:Lawa;

    iget-object v1, p0, Laew;->a:Landroid/content/Context;

    const v2, 0x7f0b01e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Laew;->a:Lawa;

    invoke-virtual {v0, v3}, Lawa;->g(I)V

    .line 159
    iget-object v0, p0, Laew;->a:Lawa;

    invoke-virtual {v0, v3}, Lawa;->setCancelable(Z)V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 127
    iget-object v2, p0, Laew;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 128
    new-instance v2, Lamg;

    iget-object v3, p0, Laew;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lamg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Laew;->a:Lamg;

    .line 129
    iget-object v2, p0, Laew;->a:Lamg;

    invoke-virtual {v2, p0}, Lamg;->b(Lalv;)V

    .line 130
    iget-object v4, p0, Laew;->a:Lamg;

    iget-object v5, p0, Laew;->a:Lamg;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Laew;->a:Lsg;

    .line 131
    iget-object v0, p0, Laew;->a:Lamg;

    iget-object v1, p0, Laew;->a:Lsg;

    invoke-virtual {v0, v1}, Lamg;->c(Lsg;)V

    .line 132
    invoke-direct {p0}, Laew;->c()V

    .line 133
    iget-object v0, p0, Laew;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Laew;->a:Lsg;

    invoke-virtual {v0, v6, v1}, Lqy;->a(ILsg;)I

    move-result v0

    .line 134
    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Laew;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    .line 136
    if-eq v0, v7, :cond_1

    .line 137
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Laew;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Laew;->a:Lsg;

    .line 144
    iget-object v0, p0, Laew;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamg;

    iput-object v0, p0, Laew;->a:Lamg;

    .line 145
    iget-object v0, p0, Laew;->a:Lsg;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Laew;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 147
    iget-object v0, p0, Laew;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 191
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 192
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 193
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 194
    iget-object v1, p0, Laew;->a:Lamg;

    invoke-virtual {v1}, Lamg;->a_()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Laew;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    iget-object v1, p0, Laew;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    :cond_0
    iget-object v0, p0, Laew;->a:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laew;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Laew;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 204
    :cond_1
    iput-object v2, p0, Laew;->a:Lawa;

    .line 206
    iget-object v0, p0, Laew;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laew;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Laew;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 208
    :cond_2
    iput-object v2, p0, Laew;->a:Landroid/app/AlertDialog;

    .line 209
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Laew;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
