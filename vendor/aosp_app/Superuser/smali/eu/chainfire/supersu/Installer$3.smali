.class Leu/chainfire/supersu/Installer$3;
.super Leu/chainfire/supersu/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/chainfire/supersu/AsyncTask<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    }
.end annotation


# instance fields
.field private ą:Landroid/app/ProgressDialog;

.field private final synthetic Ć:Landroid/content/Context;

.field private final synthetic ć:Leu/chainfire/supersu/Installer$UninstallMode;

.field private final synthetic ˮ͍:Z

.field private final synthetic 岱:Ljava/lang/Runnable;

.field final synthetic 鷭:Leu/chainfire/supersu/Installer;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;Leu/chainfire/supersu/Installer$UninstallMode;ZLeu/chainfire/supersu/MainActivity$5$1$1;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$3;->鷭:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/supersu/Installer$3;->ć:Leu/chainfire/supersu/Installer$UninstallMode;

    iput-boolean p4, p0, Leu/chainfire/supersu/Installer$3;->ˮ͍:Z

    iput-object p5, p0, Leu/chainfire/supersu/Installer$3;->岱:Ljava/lang/Runnable;

    .line 1019
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs 櫯()Ljava/lang/Integer;
    .locals 14

    .line 0
    :try_start_0
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 1041
    :catch_0
    iget-object v4, p0, Leu/chainfire/supersu/Installer$3;->鷭:Leu/chainfire/supersu/Installer;

    iget-object v5, p0, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    iget-object v6, p0, Leu/chainfire/supersu/Installer$3;->ć:Leu/chainfire/supersu/Installer$UninstallMode;

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v4, v5}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->鷭:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne v6, v0, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v4, v0, v5}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/xbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "%s --uninstall"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v5}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0, v5}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v4, Leu/chainfire/supersu/Installer;->Ć:Z

    invoke-virtual {v4, v5}, Leu/chainfire/supersu/Installer;->櫯(Landroid/content/Context;)Z

    invoke-virtual {v4, v5}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    const-string v0, "chattr"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_3
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Leu/chainfire/supersu/Settings;->櫯()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const/4 v7, 0x1

    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_7

    const-string v0, "setprop persist.service.adb.enable 1"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v9, "su"

    iget v0, v4, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_8

    const-string v9, "/system/bin/.ext/.su"

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {v4, v0, v8}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    const-string v0, "chmod 0755 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->ȃ:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq v6, v0, :cond_9

    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq v6, v0, :cond_9

    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/addon.d/99-supersu.sh"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->櫯:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne v6, v0, :cond_b

    const-string v0, "%s --uninstall"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x9

    new-array v13, v0, [Ljava/lang/String;

    const-string v0, "/system/bin/su"

    const/4 v1, 0x0

    aput-object v0, v13, v1

    const-string v0, "/system/xbin/su"

    const/4 v1, 0x1

    aput-object v0, v13, v1

    const-string v0, "/system/xbin/daemonsu"

    const/4 v1, 0x2

    aput-object v0, v13, v1

    const-string v0, "/system/etc/install-recovery.sh"

    const/4 v1, 0x3

    aput-object v0, v13, v1

    const-string v0, "/system/etc/init.d/99SuperSUDaemon"

    const/4 v1, 0x4

    aput-object v0, v13, v1

    const-string v0, "/system/xbin/otasurvival.sh"

    const/4 v1, 0x5

    aput-object v0, v13, v1

    const-string v0, "/system/bin/log"

    const/4 v1, 0x6

    aput-object v0, v13, v1

    const-string v0, "/system/addon.d/99-supersu.sh"

    const/4 v1, 0x7

    aput-object v0, v13, v1

    const-string v0, "/system/etc/.installed_su_daemon"

    const/16 v1, 0x8

    aput-object v0, v13, v1

    array-length v12, v13

    const/4 v11, 0x0

    goto :goto_1

    :cond_a
    aget-object v10, v13, v11

    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object v10, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    :goto_1
    if-lt v11, v12, :cond_a

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

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq v6, v0, :cond_c

    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const-string v2, "/system/.bash/.ssu"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/.bash/.ssu"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/.bash/*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm -rf /system/.bash"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rmdir /system/.bash"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const-string v2, "/system/su-backup"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/su-backup"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "%s -i %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/bin/.ext/.su"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/bin/.ext/*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm -rf /system/bin/.ext"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rmdir /system/bin/.ext"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne v6, v0, :cond_d

    const-string v0, "/system/app/superuser.apk"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    const-string v0, "rm /system/app/superuser.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/superuser.odex"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*superuser.apk*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne v6, v0, :cond_f

    const-string v0, "/system/app/Superuser.apk"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    const-string v0, "rm /system/app/Superuser.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Superuser.odex"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*Superuser.apk*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne v6, v0, :cond_11

    const-string v0, "/system/app/SuperUser.apk"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->櫯(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    const-string v0, "rm /system/app/SuperUser.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperUser.odex"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*SuperUser.apk*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq v6, v0, :cond_13

    const-string v0, "rm /system/app/supersu.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/supersu.odex"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Supersu.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Supersu.odex"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperSU.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperSU.odex"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*Supersu.apk*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*SuperSU.apk*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*supersu.apk*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v0, "rm /data/app/com.noshufou.android.su.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.noshufou.android.su-*.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*com.noshufou.android.su*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall com.noshufou.android.su"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.koushikdutta.superuser.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.koushikdutta.superuser-*.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*com.koushikdutta.superuser*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall com.koushikdutta.superuser"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.mgyun.shua.su.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.mgyun.shua.su-*.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*com.mgyun.shua.su*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall com.mgyun.shua.su"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->Ą:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq v6, v0, :cond_14

    const-string v0, "rm /data/dalvik-cache/*eu.chainfire.supersu*"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/eu.chainfire.supersu.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/eu.chainfire.supersu-*.apk"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall eu.chainfire.supersu"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v8}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    if-eqz v7, :cond_15

    const-string v0, "setprop persist.service.adb.enable 0"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {v9, v8}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_16

    .line 1042
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/Installer$3;->櫯()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final 鷭()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->櫯(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    .line 1027
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1028
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1029
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p0, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    return-void

    .line 1033
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1035
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 4

    .line 0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    move-object p1, p0

    :try_start_0
    iget-object v0, p1, Leu/chainfire/supersu/Installer$3;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$3$1;

    iget-object v2, p1, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Leu/chainfire/supersu/Installer$3$1;-><init>(Leu/chainfire/supersu/Installer$3;Landroid/content/Context;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-boolean v0, p1, Leu/chainfire/supersu/Installer$3;->ˮ͍:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p1, Leu/chainfire/supersu/Installer$3;->Ć:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-boolean v0, p1, Leu/chainfire/supersu/Installer$3;->ˮ͍:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Leu/chainfire/supersu/Installer$3;->岱:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p1, Leu/chainfire/supersu/Installer$3;->岱:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
