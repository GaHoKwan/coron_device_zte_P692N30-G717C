.class public Leu/chainfire/supersu/Settings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/Settings$App;,
        Leu/chainfire/supersu/Settings$Default;
    }
.end annotation


# static fields
.field private static Ą:Ljava/lang/Boolean;

.field private static Ć:Ljava/lang/Boolean;

.field private static ć:Ljava/lang/Boolean;

.field private static ȃ:Ljava/lang/Boolean;

.field private static ˮ͍:Ljava/lang/Boolean;

.field private static 岱:Ljava/lang/Boolean;


# instance fields
.field private ą:Landroid/content/pm/PackageManager;

.field ˮ͈:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Leu/chainfire/supersu/Settings$App;>;"
        }
    .end annotation
.end field

.field 櫯:Leu/chainfire/supersu/Settings$Default;

.field 鷭:Landroid/content/SharedPreferences;


# direct methods
.method static <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->ȃ:Ljava/lang/Boolean;

    .line 94
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ą:Ljava/lang/Boolean;

    .line 681
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    .line 682
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    .line 756
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->ˮ͍:Ljava/lang/Boolean;

    .line 763
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->岱:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->鷭:Landroid/content/SharedPreferences;

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->ą:Landroid/content/pm/PackageManager;

    .line 438
    new-instance v0, Leu/chainfire/supersu/Settings$Default;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings$Default;-><init>(Leu/chainfire/supersu/Settings;)V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    .line 446
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->鷭:Landroid/content/SharedPreferences;

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->ą:Landroid/content/pm/PackageManager;

    .line 448
    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Z)Z

    .line 450
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$Default;->櫯()V

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 454
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->鷭:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 456
    const-string v0, "config_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 458
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 459
    if-ltz v5, :cond_1

    .line 460
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 461
    const-string v0, "default_log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "default"

    .line 463
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 464
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 469
    const-string v0, "default"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 470
    invoke-virtual {p0, v3}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v3

    .line 471
    invoke-virtual {v3}, Leu/chainfire/supersu/Settings$App;->櫯()V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, v3, Leu/chainfire/supersu/Settings$App;->櫯:Z

    .line 468
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 477
    return-void
.end method

.method private static ȃ(Ljava/lang/String;)I
    .locals 1

    .line 0
    :goto_0
    const-string v0, "invisible"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    const-string v0, "original"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02005e

    return v0

    .line 153
    :cond_1
    const-string v0, "superandy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02005f

    return v0

    .line 154
    :cond_2
    const-string v0, "chip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02005c

    return v0

    .line 155
    :cond_3
    const-string v0, "supersu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020060

    return v0

    .line 156
    :cond_4
    const-string v0, "emblem"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f02005d

    return v0

    .line 157
    :cond_5
    const-string p0, "emblem"

    goto :goto_0
.end method

.method static synthetic ȃ()Ljava/lang/Boolean;
    .locals 1

    .line 0
    sget-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static ȃ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 866
    if-eqz p0, :cond_2

    .line 867
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object p0, v0

    .line 868
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kill -9 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 869
    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->櫯([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 867
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    :cond_2
    return-void
.end method

.method public static ȃ(Landroid/content/Context;)Z
    .locals 4

    .line 0
    sget-object v0, Leu/chainfire/supersu/Settings;->岱:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Leu/chainfire/supersu/Settings;->岱:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 768
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->岱:Ljava/lang/Boolean;

    .line 770
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 771
    const-string v1, "supersu_title"

    const-string v2, "string"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 772
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->岱:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 778
    :cond_1
    :goto_0
    sget-object v0, Leu/chainfire/supersu/Settings;->岱:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static ˮ͈(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supersu.salt."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".peppa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [B

    .line 665
    const/4 v4, 0x0

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 665
    add-int/lit8 v4, v4, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v4, v0, :cond_0

    .line 670
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 671
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 673
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 674
    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    return-object p0

    .line 676
    .line 677
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/Settings;)Ljava/util/ArrayList;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static ˮ͈()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    .line 686
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    .line 687
    return-void
.end method

.method public static ˮ͈(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 0
    const-string v0, "Original"

    const-string v1, "original"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 900
    const-string v0, "SuperAndy"

    const-string v1, "superandy"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 899
    const-string v0, "Chip"

    const-string v1, "chip"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 899
    const-string v0, "SuperSU"

    const-string v1, "supersu"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 899
    const-string v0, "Emblem"

    const-string v1, "emblem"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 899
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 909
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object p1, v0

    .line 910
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Leu/chainfire/supersu/Settings;->ȃ(Landroid/content/Context;Ljava/lang/String;)V

    .line 909
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    return-void
.end method

.method public static ˮ͈(Landroid/content/Context;)Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->ą:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static 櫯(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 0
    move-object v7, p1

    const-string v0, "system_user_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_user_"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 842
    :goto_0
    invoke-static {p0, p1}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 843
    move-object v6, v7

    const-string v0, "system_user_"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "app_user_"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 845
    const-string v0, "system_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "System User %s [UID]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x5f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 848
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "App User %s [UID]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x5f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 852
    :cond_3
    :try_start_0
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 853
    if-eqz v6, :cond_5

    .line 854
    invoke-virtual {v6, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    .line 855
    if-eqz v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [UID]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :cond_4
    return-object p0

    .line 858
    .line 860
    :catch_0
    :cond_5
    return-object p1
.end method

.method public static 櫯()Z
    .locals 5

    .line 0
    const-string v0, "sh"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "getprop persist.service.adb.enable"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_2

    .line 116
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 116
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :cond_2
    const-string v0, "sh"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "getprop init.svc.adbd"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_5

    .line 122
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    return v0

    .line 122
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public static 櫯(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 535
    .line 535
    .line 536
    const/16 v1, 0x87

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 542
    if-eqz p0, :cond_8

    .line 543
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 544
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v5

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v5, v3

    .line 545
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 544
    :cond_1
    :try_start_1
    add-int/lit8 v3, v3, 0x1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 548
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_5

    .line 549
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v5

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    aget-object p1, v5, v3

    .line 550
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    .line 549
    :cond_4
    :try_start_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    if-lt v3, v4, :cond_3

    .line 553
    :cond_5
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_8

    .line 554
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v4, v5

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    aget-object p1, v5, v3

    .line 555
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x1

    return v0

    .line 554
    :cond_7
    add-int/lit8 v3, v3, 0x1

    :goto_2
    if-lt v3, v4, :cond_6

    .line 559
    nop

    .line 562
    :catch_0
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static 鷭(Ljava/lang/String;)I
    .locals 1

    .line 0
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ȃ(Ljava/lang/String;)I

    move-result p0

    .line 162
    if-nez p0, :cond_0

    .line 163
    const-string v0, "emblem"

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->ȃ(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 165
    :cond_0
    return p0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->鷭:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static 鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 132
    :try_start_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 133
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 136
    .line 138
    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static 鷭(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 0
    move-object v2, p1

    const-string v0, "system_user_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_user_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 788
    :try_start_0
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 789
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 790
    new-instance v0, Leu/chainfire/supersu/Settings$3;

    invoke-direct {v0}, Leu/chainfire/supersu/Settings$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 832
    const/4 v0, 0x0

    aget-object v0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 834
    .line 837
    :catch_0
    :cond_1
    return-object p1
.end method

.method public static 鷭()Z
    .locals 5

    .line 0
    sget-object v0, Leu/chainfire/supersu/Settings;->ȃ:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 98
    const-string v0, "sh"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "getprop ro.cm.version"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_2

    .line 100
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->ȃ:Ljava/lang/Boolean;

    .line 103
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :cond_2
    :goto_1
    sget-object v0, Leu/chainfire/supersu/Settings;->ȃ:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->ȃ:Ljava/lang/Boolean;

    .line 110
    :cond_3
    sget-object v0, Leu/chainfire/supersu/Settings;->ȃ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static 鷭(Landroid/content/Context;)Z
    .locals 1

    .line 0
    sget-object v0, Leu/chainfire/supersu/Settings;->Ą:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 143
    const-string v0, "eu.chainfire.supersu"

    invoke-static {p0, v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    if-eqz p0, :cond_0

    const-string v0, "/system/app/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ą:Ljava/lang/Boolean;

    .line 147
    :cond_1
    sget-object v0, Leu/chainfire/supersu/Settings;->Ą:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static 鷭(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eu.chainfire.supersu.MainActivity-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 880
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 881
    if-eqz p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 882
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 885
    if-eq v3, p3, :cond_3

    .line 886
    if-nez v3, :cond_1

    if-eq p2, p4, :cond_3

    .line 887
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    .line 884
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 890
    :goto_1
    if-nez v0, :cond_4

    .line 891
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 892
    const/4 v0, 0x1

    return v0

    .line 894
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static 鷭(Landroid/content/Context;Z)Z
    .locals 3

    .line 0
    if-nez p1, :cond_6

    .line 695
    sget-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 697
    :cond_0
    sget-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 698
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 699
    const-string v1, "freeload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    .line 704
    :cond_1
    sget-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 705
    const/4 v0, 0x1

    invoke-static {p0, v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    .line 708
    :cond_2
    sget-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 709
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    .line 712
    :cond_3
    sget-object v0, Leu/chainfire/supersu/Settings;->ˮ͍:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->ˮ͍:Ljava/lang/Boolean;

    :cond_4
    sget-object v0, Leu/chainfire/supersu/Settings;->ˮ͍:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    .line 714
    :cond_5
    sget-object v0, Leu/chainfire/supersu/Settings;->Ć:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 717
    :cond_6
    sget-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 719
    .line 721
    :cond_7
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    .line 723
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "eu.chainfire.supersu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 724
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    nop

    .line 730
    :catch_0
    :cond_8
    sget-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 731
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 732
    const-string v1, "ls -l /system/app/*uper*ro*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 733
    const-string v1, "ls -l /data/app/*uper*ro*"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 734
    const-string v1, "ls -l /data/app-asec/*uper*ro*"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 731
    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->櫯([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 736
    if-eqz p1, :cond_c

    .line 737
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 738
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 740
    const-string v0, " supersupro.apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 741
    const-string v0, " eu.chainfire.supersu.pro-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 743
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    .line 737
    :cond_b
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 749
    :cond_c
    sget-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 750
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    .line 753
    :cond_d
    sget-object v0, Leu/chainfire/supersu/Settings;->ć:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 2

    .line 0
    sget-object v0, Leu/chainfire/supersu/Settings;->ˮ͍:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->ˮ͍:Ljava/lang/Boolean;

    .line 760
    :cond_0
    sget-object v0, Leu/chainfire/supersu/Settings;->ˮ͍:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final 櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;
    .locals 3

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    move-object v1, v0

    .line 489
    iget-object v0, v1, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    return-object v1

    .line 488
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    new-instance v1, Leu/chainfire/supersu/Settings$App;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/Settings$App;-><init>(Leu/chainfire/supersu/Settings;)V

    .line 495
    iput-object p1, v1, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    .line 496
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v0, v0, Leu/chainfire/supersu/Settings$Default;->庸:I

    iput v0, v1, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 497
    invoke-virtual {v1}, Leu/chainfire/supersu/Settings$App;->櫯()V

    .line 498
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    return-object v1
.end method

.method public final 櫯(Landroid/content/Context;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supersu.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->櫯(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 600
    :try_start_0
    const-string v0, "supersu.cfg"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 601
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 603
    const-string v6, "\n"

    .line 605
    const-string v0, "[%s]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 606
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notify"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v2, v2, Leu/chainfire/supersu/Settings$Default;->䒧:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 607
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "log"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v2, v2, Leu/chainfire/supersu/Settings$Default;->躆:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 609
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "wait"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v2, v2, Leu/chainfire/supersu/Settings$Default;->ܕ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 610
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "access"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v2, v2, Leu/chainfire/supersu/Settings$Default;->庸:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 611
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "respectcm"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget-boolean v2, v2, Leu/chainfire/supersu/Settings$Default;->đ:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 612
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "trustsystem"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget-boolean v2, v2, Leu/chainfire/supersu/Settings$Default;->Ē:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 613
    invoke-static {p1}, Leu/chainfire/supersu/User;->櫯(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "enablemultiuser"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget-boolean v2, v2, Leu/chainfire/supersu/Settings$Default;->ē:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 614
    :cond_3
    invoke-static {p1}, Leu/chainfire/supersu/User;->櫯(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "enableduringboot"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget-boolean v2, v2, Leu/chainfire/supersu/Settings$Default;->띥:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 615
    :cond_5
    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->ˮ͈:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    goto/16 :goto_6

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    move-object v7, v0

    .line 618
    invoke-static {v7}, Leu/chainfire/supersu/Settings$App;->櫯(Leu/chainfire/supersu/Settings$App;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 619
    const-string v0, "[%s]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v7, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 620
    iget v0, v7, Leu/chainfire/supersu/Settings$App;->岱:I

    if-eqz v0, :cond_7

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "uid"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v7, Leu/chainfire/supersu/Settings$App;->岱:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 621
    :cond_7
    iget v0, v7, Leu/chainfire/supersu/Settings$App;->䒧:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notify"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v7, Leu/chainfire/supersu/Settings$App;->䒧:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 622
    :cond_8
    iget v0, v7, Leu/chainfire/supersu/Settings$App;->躆:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "log"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v7, Leu/chainfire/supersu/Settings$App;->躆:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 623
    :cond_9
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->櫯:Leu/chainfire/supersu/Settings$Default;

    iget v0, v0, Leu/chainfire/supersu/Settings$Default;->躆:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 624
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nodefaultcontentlog"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v7, Leu/chainfire/supersu/Settings$App;->ˮ͈:Ljava/lang/String;

    invoke-static {p1, v2}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 627
    :cond_b
    iget v0, v7, Leu/chainfire/supersu/Settings$App;->ܕ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "wait"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v7, Leu/chainfire/supersu/Settings$App;->ܕ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 628
    :cond_c
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "access"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v7, Leu/chainfire/supersu/Settings$App;->庸:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 629
    iget-wide v0, v7, Leu/chainfire/supersu/Settings$App;->ȃ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "expire"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, v7, Leu/chainfire/supersu/Settings$App;->ȃ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 630
    :cond_d
    iget-object v0, v7, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v7, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 631
    const-string v0, "%s=%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "forceshell"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v7, Leu/chainfire/supersu/Settings$App;->ą:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 633
    :cond_e
    iget v0, v7, Leu/chainfire/supersu/Settings$App;->Ć:I

    if-ltz v0, :cond_f

    .line 634
    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "forceuser"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v7, Leu/chainfire/supersu/Settings$App;->Ć:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 636
    :cond_f
    iget-object v0, v7, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 637
    const-string v9, ""

    .line 638
    const/4 v10, 0x0

    goto :goto_5

    .line 639
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 640
    iget-object v0, v7, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 638
    :cond_11
    add-int/lit8 v10, v10, 0x1

    :goto_5
    iget-object v0, v7, Leu/chainfire/supersu/Settings$App;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_10

    .line 642
    const-string v0, "%s=%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "forcegroups"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v9, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 644
    :cond_12
    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 617
    :cond_13
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 648
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    goto :goto_7

    .line 650
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 653
    :goto_7
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chown 0.0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chown 0:0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chown root.root "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chown root:root "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 600 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 653
    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->櫯([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 660
    return-void
.end method
