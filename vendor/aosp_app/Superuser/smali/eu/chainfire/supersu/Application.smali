.class public Leu/chainfire/supersu/Application;
.super Landroid/app/Application;
.source ""


# static fields
.field public static 鷭:Landroid/os/Handler;


# instance fields
.field private ˮ͈:Ljava/util/Locale;

.field 櫯:I


# direct methods
.method static <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Leu/chainfire/supersu/Application;->鷭:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    .line 18
    const v0, 0x7f0a0047

    iput v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    .line 14
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 29
    iget-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 30
    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 34
    :catch_0
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 82
    :try_start_0
    const-string v0, "eu.chainfire.supersu.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 86
    :catch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 88
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ȃ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const v0, 0x7f0a0047

    iput v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    .line 90
    goto/16 :goto_0

    .line 92
    :cond_0
    :try_start_1
    const-string v0, "theme"

    const-string v1, "light"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    const-string v0, "dark"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const v0, 0x7f0a0047

    iput v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    .line 95
    goto :goto_0

    :cond_1
    const-string v0, "light"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const v0, 0x7f0a0049

    iput v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    .line 97
    goto :goto_0

    :cond_2
    const-string v0, "light_darkbar"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const v0, 0x7f0a004a

    iput v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    .line 99
    goto :goto_0

    :cond_3
    const-string v0, "devicedefault"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const v0, 0x7f0a0048

    iput v0, p0, Leu/chainfire/supersu/Application;->櫯:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    nop

    .line 107
    :catch_1
    :cond_4
    :goto_0
    :try_start_2
    iget-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    if-nez v0, :cond_6

    .line 108
    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 110
    const-string v0, "locale"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    const-string v0, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 112
    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    new-instance v0, Ljava/util/Locale;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    .line 117
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    iget-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 119
    iget-object v0, p0, Leu/chainfire/supersu/Application;->ˮ͈:Ljava/util/Locale;

    iput-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 120
    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Leu/chainfire/supersu/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    return-void

    .line 127
    :catch_2
    :cond_6
    return-void
.end method

.method public final 櫯()I
    .locals 4

    .line 0
    move-object v3, p0

    iget v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a0049

    if-eq v0, v1, :cond_0

    iget v0, v3, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a004a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0xcc

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xff

    const/16 v1, 0x44

    const/16 v2, 0x44

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public final 鷭()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 47
    move-object v2, p0

    iget v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a0049

    if-eq v0, v1, :cond_0

    iget v0, v2, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a004a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 48
    :cond_1
    iget v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a0048

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 49
    :cond_3
    const/4 v0, 0x2

    return v0

    .line 50
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 51
    move-object v2, p0

    iget v0, p0, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a0049

    if-eq v0, v1, :cond_5

    iget v0, v2, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a004a

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    const/4 v0, 0x3

    return v0

    .line 52
    :cond_6
    const/4 v0, 0x2

    return v0

    .line 55
    :cond_7
    const/4 v0, 0x0

    return v0
.end method
