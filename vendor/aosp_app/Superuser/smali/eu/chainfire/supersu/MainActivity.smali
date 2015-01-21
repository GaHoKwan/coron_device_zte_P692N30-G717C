.class public Leu/chainfire/supersu/MainActivity;
.super Leu/chainfire/supersu/compat/FragmentActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/MainActivity$Launch;
    }
.end annotation


# instance fields
.field private ć:Leu/chainfire/supersu/AppsFragment;

.field private ċ:Ljava/lang/String;

.field private Ȋ:Z

.field public ˮ͈:Z

.field private ˮ͍:Leu/chainfire/supersu/LogsFragment;

.field private 䒧:Landroid/content/IntentFilter;

.field private 岱:Leu/chainfire/supersu/SettingsFragment;

.field public 櫯:Z

.field private 纫:I

.field private 躆:Landroid/content/BroadcastReceiver;

.field public 鷭:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/compat/FragmentActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->ć:Leu/chainfire/supersu/AppsFragment;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->ˮ͍:Leu/chainfire/supersu/LogsFragment;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->岱:Leu/chainfire/supersu/SettingsFragment;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->Ȋ:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->ċ:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/MainActivity;->纫:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->櫯:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->ˮ͈:Z

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "eu.chainfire.supersu.action.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->䒧:Landroid/content/IntentFilter;

    .line 73
    new-instance v0, Leu/chainfire/supersu/MainActivity$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$1;-><init>(Leu/chainfire/supersu/MainActivity;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->躆:Landroid/content/BroadcastReceiver;

    .line 29
    return-void
.end method

.method static synthetic Ą(Leu/chainfire/supersu/MainActivity;)V
    .locals 3

    .line 0
    new-instance v0, Leu/chainfire/supersu/MainActivity$5;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$5;-><init>(Leu/chainfire/supersu/MainActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$5;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method static synthetic ą(Leu/chainfire/supersu/MainActivity;)V
    .locals 4

    .line 0
    new-instance v0, Leu/chainfire/supersu/MainActivity$6;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$6;-><init>(Leu/chainfire/supersu/MainActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$6;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method static synthetic Ć(Leu/chainfire/supersu/MainActivity;)V
    .locals 4

    .line 0
    new-instance v0, Leu/chainfire/supersu/MainActivity$7;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$7;-><init>(Leu/chainfire/supersu/MainActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$7;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method static synthetic ć(Leu/chainfire/supersu/MainActivity;)V
    .locals 3

    .line 0
    new-instance v0, Leu/chainfire/supersu/MainActivity$4;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$4;-><init>(Leu/chainfire/supersu/MainActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$4;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method static synthetic ȃ(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->岱:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ˮ͍:Leu/chainfire/supersu/LogsFragment;

    return-object v0
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ć:Leu/chainfire/supersu/AppsFragment;

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity;)I
    .locals 1

    .line 0
    iget v0, p0, Leu/chainfire/supersu/MainActivity;->纫:I

    return v0
.end method

.method static synthetic 鷭()V
    .locals 0

    .line 0
    return-void
.end method

.method public static 鷭(Landroid/content/Context;I)V
    .locals 4

    .line 0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 64
    new-instance v3, Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.action.UPDATE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v0, "eu.chainfire.supersu.extra.FLAGS"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Leu/chainfire/supersu/MainActivity;->纫:I

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/AppsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity;->ć:Leu/chainfire/supersu/AppsFragment;

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/LogsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity;->ˮ͍:Leu/chainfire/supersu/LogsFragment;

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity;->岱:Leu/chainfire/supersu/SettingsFragment;

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/MainActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Leu/chainfire/supersu/MainActivity;->Ȋ:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 0
    const v0, 0xff00

    and-int/2addr v0, p1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ć:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0, p1, p2, p3}, Leu/chainfire/supersu/AppsFragment;->鷭(IILandroid/content/Intent;)V

    .line 560
    return-void

    :cond_0
    const/16 v0, 0x1301

    if-ne p1, v0, :cond_7

    .line 563
    const/4 p1, 0x3

    .line 564
    if-eqz p3, :cond_1

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    const-string v0, "eu.chainfire.supersu.pin.status"

    const/4 v1, 0x3

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 568
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    .line 569
    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 570
    if-nez p1, :cond_2

    const-string p1, ""

    .line 571
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->ċ:Ljava/lang/String;

    .line 573
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 574
    const/4 p2, 0x0

    .line 575
    new-instance p3, Leu/chainfire/supersu/Installer;

    invoke-direct {p3}, Leu/chainfire/supersu/Installer;-><init>()V

    .line 576
    invoke-virtual {p3, p0}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    .line 577
    iget v0, p3, Leu/chainfire/supersu/Installer;->櫯:I

    if-ltz v0, :cond_3

    .line 578
    const-string p2, "su"

    .line 579
    goto :goto_0

    :cond_3
    iget v0, p3, Leu/chainfire/supersu/Installer;->ˮ͈:I

    if-ltz v0, :cond_4

    .line 580
    const-string p2, "/system/bin/.ext/.su"

    .line 583
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 586
    const/4 v0, 0x1

    invoke-virtual {p3, v0, v4}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 587
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v4}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 589
    invoke-static {p2, v4}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 592
    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->岱:Leu/chainfire/supersu/SettingsFragment;

    if-eqz v0, :cond_12

    .line 593
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->岱:Leu/chainfire/supersu/SettingsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Ljava/lang/String;)V

    .line 595
    return-void

    .line 597
    :cond_6
    const/4 v0, 0x1

    const/16 v1, 0x1302

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;ZIZ)V

    .line 600
    return-void

    :cond_7
    const/16 v0, 0x1302

    if-ne p1, v0, :cond_11

    .line 603
    const/4 p1, 0x3

    .line 604
    if-eqz p3, :cond_8

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 605
    const-string v0, "eu.chainfire.supersu.pin.status"

    const/4 v1, 0x3

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 608
    :cond_8
    const/4 v0, 0x3

    if-eq p1, v0, :cond_10

    .line 609
    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 610
    if-nez p1, :cond_9

    const-string p1, ""

    .line 612
    :cond_9
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ċ:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ċ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 613
    :cond_a
    invoke-static {p0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 614
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 615
    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 616
    const v1, 0x7f090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 618
    return-void

    .line 621
    :cond_b
    const/4 p2, 0x0

    .line 622
    new-instance p3, Leu/chainfire/supersu/Installer;

    invoke-direct {p3}, Leu/chainfire/supersu/Installer;-><init>()V

    .line 623
    invoke-virtual {p3, p0}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    .line 624
    iget v0, p3, Leu/chainfire/supersu/Installer;->櫯:I

    if-ltz v0, :cond_c

    .line 625
    const-string p2, "su"

    .line 626
    goto :goto_1

    :cond_c
    iget v0, p3, Leu/chainfire/supersu/Installer;->ˮ͈:I

    if-ltz v0, :cond_d

    .line 627
    const-string p2, "/system/bin/.ext/.su"

    .line 630
    :cond_d
    :goto_1
    if-eqz p2, :cond_f

    .line 631
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 633
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p3, v0, v4}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 635
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v0, "echo %s > %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->ˮ͈(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    const-string v0, "chmod 644 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v4}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 639
    invoke-static {p2, v4}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 640
    goto :goto_2

    .line 642
    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p3, v0, v4}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 644
    const-string v0, "rm %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v4}, Leu/chainfire/supersu/Installer;->鷭(ZLjava/util/ArrayList;)V

    .line 646
    invoke-static {p2, v4}, Leu/chainfire/supersu/SuperUser;->鷭(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 650
    :cond_f
    :goto_2
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->岱:Leu/chainfire/supersu/SettingsFragment;

    if-eqz v0, :cond_10

    .line 651
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->岱:Leu/chainfire/supersu/SettingsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Ljava/lang/String;)V

    .line 655
    :cond_10
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->ċ:Ljava/lang/String;

    .line 656
    return-void

    :cond_11
    const/16 v0, 0x1401

    if-ne p1, v0, :cond_12

    .line 659
    new-instance v0, Leu/chainfire/supersu/MainActivity$8;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$8;-><init>(Leu/chainfire/supersu/MainActivity;)V

    .line 664
    new-instance v1, Leu/chainfire/supersu/MainActivity$9;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$9;-><init>(Leu/chainfire/supersu/MainActivity;)V

    .line 659
    invoke-static {p0, p3, v0, v1}, Leu/chainfire/supersu/PINActivity;->鷭(Leu/chainfire/supersu/MainActivity;Landroid/content/Intent;Leu/chainfire/supersu/MainActivity$8;Leu/chainfire/supersu/MainActivity$9;)V

    .line 671
    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 0
    invoke-super {p0, p1}, Leu/chainfire/supersu/compat/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 482
    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 484
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 485
    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 487
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 489
    const/4 v7, 0x0

    .line 492
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 493
    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 494
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v6, Landroid/graphics/Point;->x:I

    .line 495
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 496
    const/4 v7, 0x1

    .line 500
    :cond_0
    if-nez v7, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 502
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 503
    const-class v0, Landroid/view/Display;

    const-string v1, "getRawWidth"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 504
    const-class v0, Landroid/view/Display;

    const-string v1, "getRawHeight"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 505
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Landroid/graphics/Point;->x:I

    .line 506
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 507
    const/4 v7, 0x1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    nop

    .line 513
    :catch_0
    :cond_1
    if-eqz v7, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_3

    .line 514
    :cond_2
    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 515
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v6, Landroid/graphics/Point;->x:I

    .line 516
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 517
    :cond_3
    iget v0, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    .line 522
    :goto_0
    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 524
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 525
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 527
    const/4 v0, 0x1

    const/high16 v1, 0x4416

    invoke-static {v0, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v9, v0

    .line 528
    .line 529
    if-nez v7, :cond_7

    .line 530
    if-eqz v8, :cond_6

    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v9, :cond_7

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    .line 528
    :goto_2
    iput-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    .line 532
    iget-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->鷭:Z

    if-eqz v0, :cond_8

    .line 533
    const/4 v0, 0x1

    const/high16 v1, 0x4140

    invoke-static {v0, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    .line 534
    move v9, v3

    move v8, v3

    move v6, v3

    move v5, v3

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ą:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 537
    :cond_8
    if-eqz v7, :cond_9

    .line 538
    const/4 v0, 0x1

    const/high16 v1, 0x4210

    invoke-static {v0, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    .line 539
    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ą:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 542
    :cond_9
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ć:Leu/chainfire/supersu/AppsFragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ć:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/AppsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 543
    :cond_a
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ˮ͍:Leu/chainfire/supersu/LogsFragment;

    if-eqz v0, :cond_b

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->ˮ͍:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/LogsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 544
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 0
    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    iget v0, v0, Leu/chainfire/supersu/Application;->櫯:I

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/MainActivity;->setTheme(I)V

    .line 106
    invoke-super {p0, p1}, Leu/chainfire/supersu/compat/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".MainActivity-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "emblem"

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 116
    :catch_0
    :cond_0
    new-instance v0, Leu/chainfire/supersu/MainActivity$2;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$2;-><init>(Leu/chainfire/supersu/MainActivity;)V

    iput-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ć:Leu/chainfire/supersu/compat/FragmentActivity$鷭;

    .line 146
    move-object p1, p0

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->Ą:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f040010

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setId(I)V

    iget-object v0, p1, Leu/chainfire/supersu/compat/FragmentActivity;->Ą:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Leu/chainfire/supersu/compat/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 147
    const-class v3, Leu/chainfire/supersu/AppsFragment;

    move-object p1, p0

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ą:Leu/chainfire/supersu/compat/FragmentActivity$if;

    iget-object v1, p1, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 148
    const-class v3, Leu/chainfire/supersu/LogsFragment;

    move-object p1, p0

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ą:Leu/chainfire/supersu/compat/FragmentActivity$if;

    iget-object v1, p1, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 149
    const-class v3, Leu/chainfire/supersu/SettingsFragment;

    move-object p1, p0

    iget-object v0, p0, Leu/chainfire/supersu/compat/FragmentActivity;->ą:Leu/chainfire/supersu/compat/FragmentActivity$if;

    iget-object v1, p1, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Leu/chainfire/supersu/compat/FragmentActivity$if;->鷭(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    move-object p1, p0

    invoke-static {p0}, Leu/chainfire/supersu/User;->鷭(Leu/chainfire/supersu/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Leu/chainfire/supersu/MainActivity$3;

    invoke-direct {v2, p1}, Leu/chainfire/supersu/MainActivity$3;-><init>(Leu/chainfire/supersu/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    invoke-static {}, Leu/chainfire/supersu/PINActivity;->鷭()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x1401

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;ZIZ)V

    return-void

    :cond_2
    new-instance v0, Leu/chainfire/supersu/MainActivity$4;

    invoke-direct {v0, p1}, Leu/chainfire/supersu/MainActivity$4;-><init>(Leu/chainfire/supersu/MainActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->ˮ͈:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$4;->鷭(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    .line 154
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 0
    invoke-super {p0}, Leu/chainfire/supersu/compat/FragmentActivity;->onStart()V

    .line 159
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->躆:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->䒧:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->躆:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    invoke-super {p0}, Leu/chainfire/supersu/compat/FragmentActivity;->onStop()V

    .line 166
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 0
    invoke-super {p0}, Leu/chainfire/supersu/compat/FragmentActivity;->onUserLeaveHint()V

    .line 549
    iget-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->Ȋ:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->finish()V

    .line 552
    :cond_0
    return-void
.end method

.method public final 鷭(Lcom/actionbarsherlock/view/Menu;)V
    .locals 4

    .line 0
    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    iget v0, v0, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a0049

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 677
    :goto_0
    iget v0, p0, Leu/chainfire/supersu/MainActivity;->纫:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 680
    const-string v0, "Clear logs"

    if-eqz v3, :cond_1

    const v1, 0x7f020053

    goto :goto_1

    :cond_1
    const v1, 0x7f020052

    :goto_1
    new-instance v2, Leu/chainfire/supersu/MainActivity$10;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$10;-><init>(Leu/chainfire/supersu/MainActivity;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Leu/chainfire/supersu/MainActivity;->鷭(Lcom/actionbarsherlock/view/Menu;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 723
    :cond_2
    iget v0, p0, Leu/chainfire/supersu/MainActivity;->纫:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 724
    const-string v0, "Refresh"

    if-eqz v3, :cond_3

    const v1, 0x7f020056

    goto :goto_2

    :cond_3
    const v1, 0x7f020055

    :goto_2
    new-instance v2, Leu/chainfire/supersu/MainActivity$11;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$11;-><init>(Leu/chainfire/supersu/MainActivity;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Leu/chainfire/supersu/MainActivity;->鷭(Lcom/actionbarsherlock/view/Menu;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 735
    :cond_4
    return-void
.end method
