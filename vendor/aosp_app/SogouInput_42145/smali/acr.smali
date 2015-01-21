.class public Lacr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalv;


# instance fields
.field private a:Lalq;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/os/Handler;

.field private a:Landroid/preference/CheckBoxPreference;

.field private a:Lawa;

.field private a:Lsg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lacs;

    invoke-direct {v0, p0}, Lacs;-><init>(Lacr;)V

    iput-object v0, p0, Lacr;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    new-instance v0, Lact;

    invoke-direct {v0, p0}, Lact;-><init>(Lacr;)V

    iput-object v0, p0, Lacr;->a:Landroid/os/Handler;

    .line 143
    iput-object p1, p0, Lacr;->a:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lacr;->a:Landroid/preference/CheckBoxPreference;

    .line 145
    return-void
.end method

.method static synthetic a(Lacr;)Lalq;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lacr;->a:Lalq;

    return-object v0
.end method

.method static synthetic a(Lacr;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lacr;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lacr;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lacr;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lacr;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lacr;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lacr;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lacr;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Lacr;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lacr;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lacr;->a:Lawa;

    return-object v0
.end method

.method static synthetic a(Lacr;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lacr;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Lacr;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lacr;->c()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lacr;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lacr;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lacr;->i()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lacr;->a:Lawa;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lacr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lacr;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Lacr;->a:Lawa;

    .line 179
    iget-object v0, p0, Lacr;->a:Lawa;

    const v1, 0x7f0b016b

    invoke-virtual {v0, v1}, Lawa;->setTitle(I)V

    .line 180
    iget-object v0, p0, Lacr;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 181
    iget-object v0, p0, Lacr;->a:Lawa;

    invoke-virtual {v0, v2}, Lawa;->g(I)V

    .line 182
    iget-object v0, p0, Lacr;->a:Lawa;

    invoke-virtual {v0, v2}, Lawa;->setCancelable(Z)V

    .line 183
    iget-object v0, p0, Lacr;->a:Lawa;

    iget-object v1, p0, Lacr;->a:Landroid/content/Context;

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const v5, 0x7f0b020b

    .line 223
    iget-object v0, p0, Lacr;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lafp;->b()J

    move-result-wide v0

    .line 225
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 226
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 227
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lacr;->a:Landroid/preference/CheckBoxPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lacr;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lacr;->a:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lacr;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 149
    iget-object v2, p0, Lacr;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 150
    iget-object v2, p0, Lacr;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    .line 151
    new-instance v3, Lalq;

    iget-object v4, p0, Lacr;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lafp;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lafp;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v6, v2}, Lalq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lacr;->a:Lalq;

    .line 152
    iget-object v2, p0, Lacr;->a:Lalq;

    invoke-virtual {v2, p0}, Lalq;->b(Lalv;)V

    .line 153
    invoke-direct {p0}, Lacr;->c()V

    .line 154
    iget-object v4, p0, Lacr;->a:Lalq;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v1

    iput-object v1, p0, Lacr;->a:Lsg;

    .line 155
    iget-object v1, p0, Lacr;->a:Lalq;

    iget-object v2, p0, Lacr;->a:Lsg;

    invoke-virtual {v1, v2}, Lalq;->c(Lsg;)V

    .line 156
    iget-object v1, p0, Lacr;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    iget-object v2, p0, Lacr;->a:Lsg;

    invoke-virtual {v1, v0, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 157
    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lacr;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->b()I

    move-result v0

    .line 159
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Lacr;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lacr;->a:Lsg;

    .line 168
    iget-object v0, p0, Lacr;->a:Lsg;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lacr;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalq;

    iput-object v0, p0, Lacr;->a:Lalq;

    .line 170
    iget-object v0, p0, Lacr;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 171
    iget-object v0, p0, Lacr;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 216
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 217
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 219
    iget-object v1, p0, Lacr;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    iget-object v1, p0, Lacr;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lacr;->a:Lawa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacr;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lacr;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 240
    :cond_1
    iput-object v2, p0, Lacr;->a:Lawa;

    .line 242
    iget-object v0, p0, Lacr;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lacr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lacr;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 244
    :cond_2
    iput-object v2, p0, Lacr;->a:Landroid/app/AlertDialog;

    .line 245
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lacr;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method
