.class public Lcom/sohu/inputmethod/settings/AccountList;
.super Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Landroid/preference/Preference;

.field private a:Landroid/preference/PreferenceScreen;

.field private b:Landroid/preference/Preference;

.field private c:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;-><init>()V

    .line 38
    new-instance v0, Lzd;

    invoke-direct {v0, p0}, Lzd;-><init>(Lcom/sohu/inputmethod/settings/AccountList;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/Preference;

    return-object v0
.end method

.method private a()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 155
    const-string v0, "create preference screen ............."

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AccountList;->b(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/AccountList;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->h()Z

    move-result v1

    .line 162
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/Preference;

    .line 163
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    .line 164
    if-nez v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/settings/AccountList;->a(Landroid/preference/Preference;)V

    .line 166
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/settings/AccountList;->d(Landroid/preference/Preference;)V

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 193
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/AccountList;->b(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 196
    :cond_0
    return-object v0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/settings/AccountList;->c(Landroid/preference/Preference;)V

    .line 169
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/settings/AccountList;->b(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method private a(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    :cond_0
    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lafp;->E()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 280
    const-string v1, "setting  the sync time step"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lafp;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lafp;->a(D)V

    .line 284
    invoke-virtual {v0, v3}, Lafp;->B(Z)V

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v1, "cancel sync alarm"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lafp;->q()V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->B(Z)V

    goto :goto_0
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    const v0, 0x7f0b0199

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 294
    new-instance v0, Lzf;

    invoke-direct {v0, p0}, Lzf;-><init>(Lcom/sohu/inputmethod/settings/AccountList;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AccountList;->c(Landroid/preference/Preference;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Lcom/sohu/inputmethod/settings/AccountList;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    return-object v0
.end method

.method private b(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 2
    .parameter

    .prologue
    .line 264
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    .line 265
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    const v1, 0x7f0b01dd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 266
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->f()Ljava/lang/String;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AccountList;->a()V

    .line 273
    return-object p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/PreferenceScreen;

    return-object p1
.end method

.method private b(Landroid/preference/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 305
    const v0, 0x7f0b019a

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 306
    new-instance v0, Lzg;

    invoke-direct {v0, p0}, Lzg;-><init>(Lcom/sohu/inputmethod/settings/AccountList;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 312
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Landroid/preference/Preference;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AccountList;->b(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/preference/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 315
    const v0, 0x7f0b02bd

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 316
    new-instance v0, Lzh;

    invoke-direct {v0, p0}, Lzh;-><init>(Lcom/sohu/inputmethod/settings/AccountList;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 324
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AccountList;->a(Landroid/preference/Preference;)V

    return-void
.end method

.method private d(Landroid/preference/Preference;)V
    .locals 2
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    const v1, 0x7f0b0198

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 328
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    new-instance v1, Lzi;

    invoke-direct {v1, p0}, Lzi;-><init>(Lcom/sohu/inputmethod/settings/AccountList;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 337
    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/AccountList;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/AccountList;->d(Landroid/preference/Preference;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "oncreate"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AccountList;->b(Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/AccountList;->a()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/PreferenceScreen;

    .line 119
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/AccountList;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/AccountList;->setResult(I)V

    .line 121
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/AccountList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 122
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onDestroy()V

    .line 343
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/AccountList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 348
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/PreferenceScreen;

    .line 349
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AccountList;->a:Landroid/preference/Preference;

    .line 350
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AccountList;->b:Landroid/preference/Preference;

    .line 351
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/AccountList;->c:Landroid/preference/Preference;

    .line 352
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onStart()V

    .line 132
    const-string v0, "onstart"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AccountList;->b(Ljava/lang/String;)V

    .line 133
    return-void
.end method
