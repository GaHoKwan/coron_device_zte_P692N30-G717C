.class public Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;
.super Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private a:Landroid/preference/CheckBoxPreference;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/CheckBoxPreference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/CheckBoxPreference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private j:Landroid/preference/CheckBoxPreference;

.field private k:Landroid/preference/CheckBoxPreference;

.field private l:Landroid/preference/CheckBoxPreference;

.field private m:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xfff

    sput v0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 242
    .line 244
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    sget v0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:I

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 286
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 287
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferencesMode()I

    move-result v4

    .line 288
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 289
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 294
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v3

    if-eqz v0, :cond_c

    :goto_1
    iput-boolean v1, v3, Lamo;->g:Z

    .line 298
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->b:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 250
    :goto_2
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    or-int/lit8 v0, v0, 0x2

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->d:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    or-int/lit8 v0, v0, 0x4

    .line 256
    :cond_3
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->e:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    or-int/lit8 v0, v0, 0x8

    .line 259
    :cond_4
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->f:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 260
    or-int/lit8 v0, v0, 0x10

    .line 262
    :cond_5
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->g:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 263
    or-int/lit8 v0, v0, 0x20

    .line 265
    :cond_6
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->h:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 266
    or-int/lit8 v0, v0, 0x40

    .line 268
    :cond_7
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 269
    or-int/lit16 v0, v0, 0x80

    .line 271
    :cond_8
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 272
    or-int/lit16 v0, v0, 0x100

    .line 274
    :cond_9
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->k:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->k:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 275
    or-int/lit16 v0, v0, 0x200

    .line 277
    :cond_a
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 278
    or-int/lit16 v0, v0, 0x400

    .line 280
    :cond_b
    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->m:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    or-int/lit16 v0, v0, 0x800

    goto/16 :goto_0

    :cond_c
    move v1, v2

    .line 294
    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->e:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 306
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->k:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:Landroid/preference/CheckBoxPreference;

    .line 39
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladj;

    invoke-direct {v1, p0}, Ladj;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->b:Landroid/preference/CheckBoxPreference;

    .line 53
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->b:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lado;

    invoke-direct {v1, p0}, Lado;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->c:Landroid/preference/CheckBoxPreference;

    .line 65
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->c:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladp;

    invoke-direct {v1, p0}, Ladp;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->d:Landroid/preference/CheckBoxPreference;

    .line 77
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->d:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladq;

    invoke-direct {v1, p0}, Ladq;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->e:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->e:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladr;

    invoke-direct {v1, p0}, Ladr;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->f:Landroid/preference/CheckBoxPreference;

    .line 101
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->f:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lads;

    invoke-direct {v1, p0}, Lads;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->g:Landroid/preference/CheckBoxPreference;

    .line 113
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->g:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladt;

    invoke-direct {v1, p0}, Ladt;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->h:Landroid/preference/CheckBoxPreference;

    .line 125
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->h:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladu;

    invoke-direct {v1, p0}, Ladu;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->i:Landroid/preference/CheckBoxPreference;

    .line 137
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->i:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladv;

    invoke-direct {v1, p0}, Ladv;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->j:Landroid/preference/CheckBoxPreference;

    .line 149
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->j:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladk;

    invoke-direct {v1, p0}, Ladk;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->k:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->k:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladl;

    invoke-direct {v1, p0}, Ladl;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->l:Landroid/preference/CheckBoxPreference;

    .line 173
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->l:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladm;

    invoke-direct {v1, p0}, Ladm;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->m:Landroid/preference/CheckBoxPreference;

    .line 185
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->m:Landroid/preference/CheckBoxPreference;

    new-instance v1, Ladn;

    invoke-direct {v1, p0}, Ladn;-><init>(Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a()V

    .line 222
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onDestroy()V

    .line 223
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a()V

    .line 216
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onPause()V

    .line 217
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onResume()V

    .line 229
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 236
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/FuzzyCodeSettings;->a()V

    .line 210
    invoke-super {p0}, Lcom/sohu/inputmethod/settings/SogouPreferenceActivity;->onUserLeaveHint()V

    .line 211
    return-void
.end method
