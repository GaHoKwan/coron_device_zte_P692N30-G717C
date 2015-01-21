.class public Leu/chainfire/supersu/Installer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/Installer$Architecture;,
        Leu/chainfire/supersu/Installer$UninstallMode;
    }
.end annotation


# static fields
.field private static synthetic Ȋ:[I


# instance fields
.field public Ą:I

.field public ą:Z

.field public Ć:Z

.field public ć:Z

.field public ȃ:I

.field public ˮ͈:I

.field public ˮ͍:Z

.field private 岱:Ljava/lang/String;

.field public 櫯:I

.field public 鷭:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x3

    iput v0, p0, Leu/chainfire/supersu/Installer;->鷭:I

    .line 30
    const/4 v0, -0x3

    iput v0, p0, Leu/chainfire/supersu/Installer;->櫯:I

    .line 31
    const/4 v0, -0x3

    iput v0, p0, Leu/chainfire/supersu/Installer;->ˮ͈:I

    .line 32
    const/4 v0, -0x3

    iput v0, p0, Leu/chainfire/supersu/Installer;->ȃ:I

    .line 33
    const/4 v0, -0x3

    iput v0, p0, Leu/chainfire/supersu/Installer;->Ą:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->ą:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->Ć:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->ć:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer;->岱:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static ˮ͈(Landroid/content/Context;)Z
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1296
    :try_start_0
    const-string v0, "com.sec.knox.seandroid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1297
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1298
    .line 1300
    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic ˮ͈()[I
    .locals 3

    .line 0
    sget-object v0, Leu/chainfire/supersu/Installer;->Ȋ:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Leu/chainfire/supersu/Installer$Architecture;->values()[Leu/chainfire/supersu/Installer$Architecture;

    move-result-object v0

    array-length v0, v0

    new-array v2, v0, [I

    :try_start_0
    sget-object v0, Leu/chainfire/supersu/Installer$Architecture;->鷭:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    aput v1, v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :try_start_1
    sget-object v0, Leu/chainfire/supersu/Installer$Architecture;->ˮ͈:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    aput v1, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :catch_1
    :try_start_2
    sget-object v0, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    aput v1, v2, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :catch_2
    :try_start_3
    sget-object v0, Leu/chainfire/supersu/Installer$Architecture;->櫯:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    aput v1, v2, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    nop

    :catch_3
    sput-object v2, Leu/chainfire/supersu/Installer;->Ȋ:[I

    return-object v2
.end method

.method private 櫯()Ljava/lang/String;
    .locals 7

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Installer;->岱:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Installer;->岱:Ljava/lang/String;

    return-object v0

    .line 111
    :cond_0
    const-string v0, "sh"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "cat /proc/mounts"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 114
    const-string v0, "/system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 117
    move-object v4, v0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iput-object v6, p0, Leu/chainfire/supersu/Installer;->岱:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Leu/chainfire/supersu/Installer;->岱:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    .line 124
    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_3
    const-string v0, "/system"

    iput-object v0, p0, Leu/chainfire/supersu/Installer;->岱:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Leu/chainfire/supersu/Installer;->岱:Ljava/lang/String;

    return-object v0
.end method

.method private static 櫯(ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZLjava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 0
    if-eqz p0, :cond_0

    .line 158
    const-string v0, "mount -o rw,remount /"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v0, "mount -o rw,remount / /"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v0, "mount -o rw,remount rootfs /"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void

    .line 162
    :cond_0
    const-string v0, "mount -o ro,remount rootfs /"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v0, "mount -o ro,remount / /"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v0, "mount -o ro,remount /"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method static 櫯(Ljava/lang/String;)Z
    .locals 2

    .line 0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 571
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 574
    goto :goto_0

    .line 575
    :cond_1
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 576
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "supersu.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 577
    if-eqz v0, :cond_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    const/4 v0, 0x1

    return v0

    .line 574
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 581
    nop

    .line 583
    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static 鷭(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 0
    invoke-static {}, Leu/chainfire/supersu/Installer;->ˮ͈()[I

    move-result-object v0

    sget-object v3, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v4, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    :goto_0
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v3, v1, :cond_4

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "mips"

    const/4 v2, 0x0

    aput-object v1, v8, v2

    array-length v7, v8

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    aget-object v5, v8, v6

    move-object v12, v4

    array-length v11, v4

    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    aget-object v9, v12, v10

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v3, Leu/chainfire/supersu/Installer$Architecture;->ˮ͈:Leu/chainfire/supersu/Installer$Architecture;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    :goto_1
    if-lt v10, v11, :cond_2

    add-int/lit8 v6, v6, 0x1

    :goto_2
    if-lt v6, v7, :cond_1

    :cond_4
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v3, v1, :cond_8

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "x86"

    const/4 v2, 0x0

    aput-object v1, v8, v2

    array-length v7, v8

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    aget-object v5, v8, v6

    move-object v12, v4

    array-length v11, v4

    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    aget-object v9, v12, v10

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v3, Leu/chainfire/supersu/Installer$Architecture;->櫯:Leu/chainfire/supersu/Installer$Architecture;

    :cond_7
    add-int/lit8 v10, v10, 0x1

    :goto_3
    if-lt v10, v11, :cond_6

    add-int/lit8 v6, v6, 0x1

    :goto_4
    if-lt v6, v7, :cond_5

    :cond_8
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v3, v1, :cond_c

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "armeabi"

    const/4 v2, 0x0

    aput-object v1, v8, v2

    const-string v1, "armeabi-v7a"

    const/4 v2, 0x1

    aput-object v1, v8, v2

    array-length v7, v8

    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    aget-object v5, v8, v6

    move-object v12, v4

    array-length v11, v4

    const/4 v10, 0x0

    goto :goto_5

    :cond_a
    aget-object v9, v12, v10

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v3, Leu/chainfire/supersu/Installer$Architecture;->鷭:Leu/chainfire/supersu/Installer$Architecture;

    :cond_b
    add-int/lit8 v10, v10, 0x1

    :goto_5
    if-lt v10, v11, :cond_a

    add-int/lit8 v6, v6, 0x1

    :goto_6
    if-lt v6, v7, :cond_9

    :cond_c
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->ˮ͈:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v3, v1, :cond_d

    sget-object v3, Leu/chainfire/supersu/Installer$Architecture;->ȃ:Leu/chainfire/supersu/Installer$Architecture;

    :cond_d
    invoke-virtual {v3}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 224
    :pswitch_0
    const-string v3, "x86"

    .line 225
    goto :goto_8

    .line 227
    :pswitch_1
    const-string v3, "arm"

    .line 228
    goto :goto_8

    .line 231
    :goto_7
    :pswitch_2
    const-string v3, "arm"

    .line 235
    :goto_8
    const-string v0, "%s.%s.png"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static 鷭()V
    .locals 3

    .line 0
    invoke-static {}, Leu/chainfire/supersu/Settings;->櫯()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1306
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    const-string v0, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    if-eqz v1, :cond_1

    const-string v0, "setprop persist.service.adb.enable 1"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_1
    const-string v0, "pm disable com.sec.knox.seandroid"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    if-eqz v1, :cond_2

    const-string v0, "setprop persist.service.adb.enable 0"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_2
    invoke-static {v2}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1312
    return-void
.end method

.method private static 鷭(J)Z
    .locals 7

    .line 0
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    const-string v0, "/system/xbin"

    invoke-direct {v4, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x5

    mul-long v5, v0, v2

    .line 99
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    .line 100
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 98
    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 102
    .line 104
    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 5

    .line 0
    const/4 v3, 0x0

    .line 240
    const/4 v4, 0x0

    .line 241
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.noshufou.android.su"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 249
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.koushikdutta.superuser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v4, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    nop

    .line 254
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mgyun.shua.su"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v4, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    nop

    .line 258
    :catch_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final 櫯(Landroid/content/Context;)Z
    .locals 14

    .line 0
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    .line 294
    move-object v5, p0

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ą:Z

    if-nez v0, :cond_0

    iget-boolean v0, v5, Leu/chainfire/supersu/Installer;->ć:Z

    if-nez v0, :cond_0

    iget-boolean v0, v5, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 296
    :cond_1
    move-object v5, p0

    iget v0, p0, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, v5, Leu/chainfire/supersu/Installer;->ˮ͈:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, v5, Leu/chainfire/supersu/Installer;->Ą:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 298
    :cond_3
    const-string v0, "supersu"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    if-nez v5, :cond_4

    const/4 v0, 0x0

    return v0

    .line 300
    :cond_4
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return v0

    .line 301
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 303
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Leu/chainfire/supersu/Installer;->鷭(J)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    .line 305
    :goto_2
    const-string v0, "chattr"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    if-nez v7, :cond_8

    const/4 v0, 0x0

    return v0

    .line 307
    :cond_8
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    return v0

    .line 308
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 310
    :cond_a
    const-string v0, "otasurvival.sh"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 311
    if-nez v8, :cond_b

    const/4 v0, 0x0

    return v0

    .line 312
    :cond_b
    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 313
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    .line 315
    :cond_d
    const-string v0, "install-recovery.sh"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 316
    if-nez v9, :cond_e

    const/4 v0, 0x0

    return v0

    .line 317
    :cond_e
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    return v0

    .line 318
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return v0

    .line 320
    :cond_10
    const-string v0, "99SuperSUDaemon"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 321
    if-nez v10, :cond_11

    const/4 v0, 0x0

    return v0

    .line 322
    :cond_11
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return v0

    .line 323
    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return v0

    .line 325
    :cond_13
    const-string v11, "su"

    .line 326
    iget v0, p0, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_14

    const-string v11, "su"

    .line 327
    goto :goto_3

    :cond_14
    iget v0, p0, Leu/chainfire/supersu/Installer;->ˮ͈:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_15

    const-string v11, "/system/bin/.ext/.su"

    .line 328
    goto :goto_3

    :cond_15
    iget v0, p0, Leu/chainfire/supersu/Installer;->Ą:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_16

    const-string v11, "/system/.bash/.ssu"

    .line 331
    :cond_16
    :goto_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v12}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 333
    const/4 v0, 0x1

    invoke-static {v0, v12}, Leu/chainfire/supersu/Installer;->櫯(ZLjava/util/ArrayList;)V

    .line 335
    invoke-static {v11, v12}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 337
    if-eqz v6, :cond_17

    .line 338
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 339
    const-string v1, "cat /system/app/Maps.apk > /Maps.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 340
    const-string v1, "cat /system/app/GMS_Maps.apk > /GMS_Maps.apk"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 341
    const-string v1, "cat /system/app/YouTube.apk > /YouTube.apk"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 342
    const-string v1, "rm /system/app/Maps.apk"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 343
    const-string v1, "rm /system/app/GMS_Maps.apk"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 344
    const-string v1, "rm /system/app/YouTube.apk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 338
    invoke-static {v11, v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 348
    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Leu/chainfire/supersu/Installer;->鷭(J)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return v0

    .line 350
    :cond_18
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 351
    const-string v1, "mkdir /system/xbin"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 352
    const-string v1, "chmod 755 /system/xbin"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 353
    const-string v1, "chown 0.2000 /system/xbin"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 354
    const-string v1, "chown 0:2000 /system/xbin"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 355
    const-string v1, "chown root.shell /system/xbin"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 356
    const-string v1, "chown root:shell /system/xbin"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 358
    const-string v1, "mkdir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 359
    const-string v1, "chown 0.0 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 360
    const-string v1, "chown 0:0 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 361
    const-string v1, "chown root.root %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 362
    const-string v1, "chown root:root %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 363
    const-string v1, "chmod 600 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/requests/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 365
    const-string v1, "mkdir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/logs/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 366
    const-string v1, "chown 0.0 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/logs/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 367
    const-string v1, "chown 0:0 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/logs/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 368
    const-string v1, "chown root.root %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/logs/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 369
    const-string v1, "chown root:root %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/logs/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 370
    const-string v1, "chmod 755 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/data/data/eu.chainfire.supersu/logs/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 372
    const-string v1, "rm %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/system/xbin/.tmpsu"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 373
    const-string v1, "cat %s > %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const-string v3, "/system/xbin/.tmpsu"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 374
    const-string v1, "chown 0.0 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/system/xbin/.tmpsu"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 375
    const-string v1, "chown 0:0 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/system/xbin/.tmpsu"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 376
    const-string v1, "chown root.root %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/system/xbin/.tmpsu"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 377
    const-string v1, "chown root:root %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/system/xbin/.tmpsu"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 378
    const-string v1, "chmod %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Leu/chainfire/supersu/Constants;->ȃ:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/system/xbin/.tmpsu"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 380
    const-string v1, "chmod 0755 %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 350
    invoke-static {v11, v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 383
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-eqz v0, :cond_19

    .line 384
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 386
    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v0, "cat %s > %s_old"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v0, "chown 0.0 %s_old"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v0, "chown 0:0 %s_old"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v0, "chown root.root %s_old"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v0, "chown root:root %s_old"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v0, "chmod 0755 %s_old"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v0, "mv %s %s_old2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const-string v0, "cat %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v0, "chown 0.0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const-string v0, "chown 0:0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v0, "chown root.root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    const-string v0, "chown root:root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v0, "chmod 0755 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-static {v11, v12}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 405
    move-object v13, v11

    .line 406
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leu/chainfire/supersu/Installer$1;

    invoke-direct {v1, p0, v13}, Leu/chainfire/supersu/Installer$1;-><init>(Leu/chainfire/supersu/Installer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 411
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 413
    :try_start_0
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 416
    :catch_0
    :cond_19
    const-string v11, "/system/xbin/.tmpsu"

    .line 418
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 419
    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/bin/su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v0, "mv %s %s_old"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ą:Z

    if-eqz v0, :cond_1a

    .line 424
    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const-string v0, "mv %s %s_old"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_1a
    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/.bash/.ssu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/.bash/.ssu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/.bash/*"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    const-string v0, "rm -rf %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/.bash"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const-string v0, "rmdir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/.bash"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/su-backup"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/su-backup"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v0, "mv %s %s_old"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/*"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v0, "rm -rf %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v0, "rmdir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->Ć:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ą:Z

    if-eqz v0, :cond_1b

    .line 448
    const-string v0, "cat %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v0, "chown 0.0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v0, "chown 0:0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v0, "chown root.root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v0, "chown root:root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v0, "chmod %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Leu/chainfire/supersu/Constants;->ȃ:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1b
    const-string v0, "mkdir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v0, "chown 0.0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v0, "chown 0:0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v0, "chown root.root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v0, "chown root:root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const-string v0, "chmod 0777 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v0, "cat %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v0, "chown 0.0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const-string v0, "chown 0:0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v0, "chown root.root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    const-string v0, "chown root:root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v0, "chmod %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Leu/chainfire/supersu/Constants;->ȃ:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "survival"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 468
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1c

    .line 469
    const-string v0, "%s +i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_1c
    const-string v0, "chmod 0711 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-eqz v0, :cond_1e

    .line 474
    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const-string v0, "cat %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v0, "chown 0.0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const-string v0, "chown 0:0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    const-string v0, "chown root.root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const-string v0, "chown root:root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    const-string v0, "chmod 0755 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v0, "cat %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const-string v2, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    const-string v0, "chown 0.0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v0, "chown 0:0 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v0, "chown root.root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v0, "chown root:root %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v0, "chmod 0755 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v0, "echo 1 > %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/etc/.installed_su_daemon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "survival"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1d

    .line 496
    const-string v0, "%s +i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1e

    .line 499
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/log"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v0, "cat %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const-string v2, "/system/xbin/otasurvival.sh"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v0, "chmod 0755 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/otasurvival.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v0, "ln -s %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/otasurvival.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/log"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_1e
    invoke-static {v11, v12}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 507
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-eqz v0, :cond_1f

    .line 508
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 509
    const-string v0, "%s_old --reload"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const-string v0, "sh"

    invoke-static {v0, v12}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 513
    :cond_1f
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    if-eqz v0, :cond_20

    .line 514
    :try_start_1
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    .line 515
    :catch_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 516
    const-string v0, "rm %s_old"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-static {v11, v12}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 520
    :cond_20
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->Ć:Z

    if-nez v0, :cond_21

    .line 521
    const-string v11, "su"

    .line 522
    goto :goto_4

    .line 523
    :cond_21
    const-string v11, "/system/bin/.ext/.su"

    .line 525
    :goto_4
    if-eqz v6, :cond_24

    .line 526
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 527
    const-string v1, "cat /Maps.apk > /system/app/Maps.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 528
    const-string v1, "cat /GMS_Maps.apk > /system/app/GMS_Maps.apk"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 529
    const-string v1, "cat /YouTube.apk > /system/app/YouTube.apk"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 530
    const-string v1, "chown 0.0 /system/app/Maps.apk"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 531
    const-string v1, "chown 0.0 /system/app/GMS_Maps.apk"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 532
    const-string v1, "chown 0.0 /system/app/YouTube.apk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 533
    const-string v1, "chmod 644 /system/app/Maps.apk"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 534
    const-string v1, "chmod 644 /system/app/GMS_Maps.apk"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 535
    const-string v1, "chmod 644 /system/app/YouTube.apk"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 536
    const-string v1, "rm /Maps.apk"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 537
    const-string v1, "rm /GMS_Maps.apk"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 538
    const-string v1, "rm /YouTube.apk"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 526
    invoke-static {v11, v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 543
    new-instance v13, Ljava/io/File;

    const-string v0, "/system/app/Maps.apk"

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rm /system/app/Maps.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v11, v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 546
    :cond_22
    new-instance v13, Ljava/io/File;

    const-string v0, "/system/app/GMS_Maps.apk"

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rm /system/app/GMS_Maps.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v11, v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 549
    :cond_23
    new-instance v13, Ljava/io/File;

    const-string v0, "/system/app/YouTube.apk"

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rm /system/app/YouTube.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v11, v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 552
    :cond_24
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 553
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/.tmpsu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    const-string v0, "%s --install"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    const/4 v0, 0x0

    invoke-static {v0, v12}, Leu/chainfire/supersu/Installer;->櫯(ZLjava/util/ArrayList;)V

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v12}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 558
    invoke-static {v11, v12}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 561
    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xbd

    if-ge v0, v1, :cond_25

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->Ć:Z

    if-eqz v0, :cond_28

    .line 562
    :cond_25
    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xbd

    if-ge v0, v1, :cond_26

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_28

    .line 563
    :cond_26
    const-string v0, "/system/xbin/daemonsu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_27

    const-string v0, "/system/xbin/daemonsu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    .line 560
    const/16 v1, 0xbd

    if-lt v0, v1, :cond_28

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public final 鷭(Landroid/content/Context;)V
    .locals 2

    .line 0
    const/16 v0, 0xbd

    iput v0, p0, Leu/chainfire/supersu/Installer;->鷭:I

    .line 42
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 44
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 45
    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->櫯:I

    .line 46
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 48
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 49
    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->ˮ͈:I

    .line 50
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 52
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 53
    const-string v0, "/system/xbin/daemonsu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->ȃ:I

    .line 54
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 56
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 57
    const-string v0, "/system/.bash/.ssu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->Ą:I

    .line 58
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 60
    iget v0, p0, Leu/chainfire/supersu/Installer;->櫯:I

    iget v1, p0, Leu/chainfire/supersu/Installer;->鷭:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->ą:Z

    .line 61
    iget v0, p0, Leu/chainfire/supersu/Installer;->ˮ͈:I

    iget v1, p0, Leu/chainfire/supersu/Installer;->鷭:I

    if-ge v0, v1, :cond_1

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->ć:Z

    .line 62
    iget v0, p0, Leu/chainfire/supersu/Installer;->ȃ:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_2

    sget-boolean v0, Leu/chainfire/supersu/Constants;->鷭:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Leu/chainfire/supersu/Installer;->ȃ:I

    iget v1, p0, Leu/chainfire/supersu/Installer;->鷭:I

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->ˮ͍:Z

    .line 64
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 65
    const-string v0, "superuser"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->Ć:Z

    .line 67
    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->ą:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->Ć:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->ą:Z

    .line 69
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 70
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 71
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 72
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 73
    return-void
.end method

.method public final 鷭(ZLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZLjava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_1

    .line 136
    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "mount -o rw,remount /system/xbin"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v0, "mount -o rw,remount /system/xbin /system/xbin"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void

    .line 140
    :cond_0
    const-string v0, "mount -o rw,remount /system"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v0, "mount -o rw,remount /system /system"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mount -o rw,remount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->櫯()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " /system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void

    .line 145
    :cond_1
    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "mount -o ro,remount /system/xbin /system/xbin"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v0, "mount -o ro,remount /system/xbin"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mount -o ro,remount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->櫯()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " /system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v0, "mount -o ro,remount /system /system"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v0, "mount -o ro,remount /system"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public final 鷭(Landroid/content/Context;Z)Z
    .locals 8

    .line 0
    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 882
    :cond_0
    const-string v0, "chattr"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 883
    if-nez v4, :cond_1

    const/4 v0, 0x0

    return v0

    .line 884
    :cond_1
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 885
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 887
    :cond_3
    const-string v0, "otasurvival.sh"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 888
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 889
    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return v0

    .line 890
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 892
    :cond_6
    const-string v5, "su"

    .line 893
    iget v0, p0, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_7

    const-string v5, "/system/bin/.ext/.su"

    .line 895
    :cond_7
    if-eqz p2, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_8

    const/4 v6, 0x1

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    .line 897
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v7}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 899
    const-string v0, "chmod 0755 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    if-eqz v6, :cond_9

    const-string v2, "+i"

    goto :goto_1

    :cond_9
    const-string v2, "-i"

    :goto_1
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    if-eqz v6, :cond_a

    const-string v2, "+i"

    goto :goto_2

    :cond_a
    const-string v2, "-i"

    :goto_2
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "/system/xbin/daemonsu"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const-string v2, "-i"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "/system/etc/install-recovery.sh"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_c

    .line 904
    if-eqz p2, :cond_b

    .line 905
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/log"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    const-string v0, "cat %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "/system/xbin/otasurvival.sh"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    const-string v0, "chmod 0755 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/otasurvival.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    const-string v0, "ln -s %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/otasurvival.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/log"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    goto :goto_3

    .line 910
    :cond_b
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/log"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    const-string v0, "ln -s %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "toolbox"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/log"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/otasurvival.sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_c
    :goto_3
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v7}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 917
    invoke-static {v5, v7}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 919
    const/4 v0, 0x1

    return v0
.end method
