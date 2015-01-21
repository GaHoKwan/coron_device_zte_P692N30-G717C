.class public Lcom/autonavi/xmgd/controls/GDActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/autonavi/xmgd/naviservice/m;


# static fields
.field public static final LOCKCOUNT:Ljava/lang/String; = "LockCount"

.field public static final ORIENTATION:Ljava/lang/String; = "Orientation"

.field private static final SDK_2_3:I = 0x9

.field private static final SDK_3_0:I = 0xb

.field private static final SDK_4_0:I = 0xe


# instance fields
.field private mLockCount:I

.field private mOrientation:I

.field private needFinishAndReboot:Z

.field private psl:Lcom/autonavi/xmgd/controls/j;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->tm:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/autonavi/xmgd/controls/j;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/j;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->psl:Lcom/autonavi/xmgd/controls/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->needFinishAndReboot:Z

    return-void
.end method


# virtual methods
.method protected isNeedFinishAndReboot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->needFinishAndReboot:Z

    return v0
.end method

.method protected lockCurrentOrientation()I
    .locals 8

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mOrientation:I

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/controls/GDActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_7

    if-nez v0, :cond_2

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    return v0

    :cond_1
    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_4

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v7}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    if-ne v1, v3, :cond_6

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v2, 0x80

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "LockCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    const-string v0, "Orientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mOrientation:I

    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/autonavi/xmgd/controls/GDActivity;->needFinishAndReboot:Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.xmgd.navigator.tob"

    const-class v3, Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/controls/GDActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "autonavi"

    invoke-virtual {p0, v0, v5}, Lcom/autonavi/xmgd/controls/GDActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "already_restart"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v5, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mOrientation:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->i:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xmgd/naviservice/m;)V

    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/controls/GDActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/GDActivity;->psl:Lcom/autonavi/xmgd/controls/j;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GLanguage;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/naviservice/l;->b(Lcom/autonavi/xmgd/naviservice/m;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/GDActivity;->psl:Lcom/autonavi/xmgd/controls/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0
.end method

.method public onNaviDayNightChanged(I)V
    .locals 0

    return-void
.end method

.method public onNaviSettingChanged(III)V
    .locals 2

    const/16 v1, 0x80

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->i:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LockCount"

    iget v1, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "Orientation"

    iget v1, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected unlockCurrentOrientation()I
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/controls/GDActivity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    iget v0, p0, Lcom/autonavi/xmgd/controls/GDActivity;->mLockCount:I

    return v0
.end method
