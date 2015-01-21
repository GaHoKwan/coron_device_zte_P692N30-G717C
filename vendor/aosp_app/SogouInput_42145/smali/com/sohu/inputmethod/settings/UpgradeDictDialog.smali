.class public Lcom/sohu/inputmethod/settings/UpgradeDictDialog;
.super Landroid/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lalv;


# instance fields
.field private a:Lanb;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Lawa;

.field private a:Ljava/text/SimpleDateFormat;

.field private a:Lsg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Ljava/text/SimpleDateFormat;

    .line 45
    new-instance v0, Laha;

    invoke-direct {v0, p0}, Laha;-><init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    new-instance v0, Lahb;

    invoke-direct {v0, p0}, Lahb;-><init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    .line 180
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences;

    .line 182
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences$Editor;

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Ljava/text/SimpleDateFormat;

    .line 45
    new-instance v0, Laha;

    invoke-direct {v0, p0}, Laha;-><init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    new-instance v0, Lahb;

    invoke-direct {v0, p0}, Lahb;-><init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    .line 173
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    .line 174
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences;

    .line 175
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences$Editor;

    .line 176
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lanb;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x4

    .line 211
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 214
    new-instance v2, Lanb;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lanb;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    .line 215
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    invoke-virtual {v2, p0}, Lanb;->b(Lalv;)V

    .line 216
    iget-object v4, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    .line 217
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    invoke-virtual {v1, v2}, Lanb;->c(Lsg;)V

    .line 218
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    invoke-virtual {v1, v2, v3}, Lqy;->a(ILsg;)I

    move-result v1

    .line 219
    if-lez v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1}, Lqy;->b()I

    move-result v1

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[onClick]] The running request type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lsg;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 223
    const-string v0, "[[onClick]] show the download process dialog "

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v1, "[[onClick]] show warning dialog "

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    .line 233
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lanb;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    .line 235
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 236
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    const v2, 0x7f0b0139

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    .line 316
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    const v1, 0x7f0b015b

    invoke-virtual {v0, v1}, Lawa;->setTitle(I)V

    .line 317
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    invoke-virtual {v0, v2}, Lawa;->g(I)V

    .line 318
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    invoke-virtual {v0, v2}, Lawa;->setCancelable(Z)V

    .line 319
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lahh;

    invoke-direct {v3, p0}, Lahh;-><init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lawa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 328
    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->c()J

    move-result-wide v0

    .line 368
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b020c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    const-string v0, "refreshLastUpgradeTime"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 332
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    invoke-virtual {v0, v1}, Lsg;->a(Lalv;)V

    .line 334
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lsg;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    invoke-virtual {v0, v1}, Lanb;->b(Lalv;)V

    .line 338
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    invoke-virtual {v0}, Lanb;->a()V

    .line 339
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lanb;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    invoke-virtual {v0}, Lawa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 344
    :cond_2
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Lawa;

    .line 345
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 348
    :cond_3
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/app/AlertDialog;

    .line 349
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Ljava/text/SimpleDateFormat;

    .line 350
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 306
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 307
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 308
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 309
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->notifyHierarchyChanged()V

    .line 311
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->i()V

    .line 362
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 363
    const-string v0, "onBindView"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    .line 244
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 246
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->b()V

    .line 283
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 250
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 251
    const v0, 0x7f070119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v2

    .line 254
    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 255
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 256
    const v1, 0x7f0b04a3

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 257
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    const v3, 0x7f0b0249

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lahf;

    invoke-direct {v4, p0, v0}, Lahf;-><init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 272
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/UpgradeDictDialog;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lahg;

    invoke-direct {v3, p0}, Lahg;-><init>(Lcom/sohu/inputmethod/settings/UpgradeDictDialog;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 280
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 188
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
