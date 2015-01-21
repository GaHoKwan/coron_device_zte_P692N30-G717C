.class Leu/chainfire/supersu/Installer$5;
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

.field final synthetic 鷭:Leu/chainfire/supersu/Installer;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/Installer$5;->鷭:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$5;->Ć:Landroid/content/Context;

    .line 1150
    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs 櫯()Ljava/lang/Integer;
    .locals 5

    .line 0
    :try_start_0
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 1172
    :catch_0
    iget-object v2, p0, Leu/chainfire/supersu/Installer$5;->鷭:Leu/chainfire/supersu/Installer;

    iget-object v3, p0, Leu/chainfire/supersu/Installer$5;->Ć:Landroid/content/Context;

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-nez v0, :cond_1

    invoke-virtual {v2, v3}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    invoke-static {v3}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v3}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    const-string v0, "rm /system/app/superuser.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/superuser.odex"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Superuser.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Superuser.odex"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperUser.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperUser.odex"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/supersu.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/supersu.odex"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Supersu.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Supersu.odex"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperSU.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperSU.odex"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.noshufou.android.su.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.noshufou.android.su-*.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall com.noshufou.android.su"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.koushikdutta.superuser.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.koushikdutta.superuser-*.apk"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall com.koushikdutta.superuser"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*com.noshufou.android.su*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*com.koushikdutta.superuser*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*eu.chainfire.supersu*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*Superuser.apk*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*SuperUser.apk*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*superuser.apk*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*Supersu.apk*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*SuperSU.apk*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*supersu.apk*"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    const-string v4, "su"

    iget v0, v2, Leu/chainfire/supersu/Installer;->櫯:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    const-string v4, "/system/bin/.ext/.su"

    :cond_0
    invoke-static {v4, v3}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1174
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic 鷭([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/Installer$5;->櫯()Ljava/lang/Integer;

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
    iget-object v0, p0, Leu/chainfire/supersu/Installer$5;->Ć:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->櫯(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    .line 1158
    iget-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1159
    iget-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1160
    iget-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$5;->Ć:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1162
    iget-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    return-void

    .line 1164
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1166
    return-void
.end method

.method protected final synthetic 鷭(Ljava/lang/Object;)V
    .locals 1

    .line 0
    move-object p1, p0

    iget-object v0, p0, Leu/chainfire/supersu/Installer$5;->ą:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-static {}, Leu/chainfire/supersu/SuperUser;->櫯()V

    iget-object v0, p1, Leu/chainfire/supersu/Installer$5;->Ć:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p1, Leu/chainfire/supersu/Installer$5;->Ć:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
