.class public Lcom/android/provision/DefaultActivity;
.super Landroid/app/Activity;
.source "DefaultActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final m720P:Ljava/lang/String;

.field private final mHD720NOPK:Ljava/lang/String;

.field mPm:Landroid/content/pm/PackageManager;

.field private final mQhdScreenSize:Ljava/lang/String;

.field private final mWVGAScreenSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "1184x720"

    iput-object v0, p0, Lcom/android/provision/DefaultActivity;->mHD720NOPK:Ljava/lang/String;

    .line 34
    const-string v0, "800x480"

    iput-object v0, p0, Lcom/android/provision/DefaultActivity;->mWVGAScreenSize:Ljava/lang/String;

    .line 35
    const-string v0, "960x540"

    iput-object v0, p0, Lcom/android/provision/DefaultActivity;->mQhdScreenSize:Ljava/lang/String;

    .line 36
    const-string v0, "1280x720"

    iput-object v0, p0, Lcom/android/provision/DefaultActivity;->m720P:Ljava/lang/String;

    .line 38
    const-string v0, "Provision"

    iput-object v0, p0, Lcom/android/provision/DefaultActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private checkApplicationExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    const/4 v9, 0x1

    .line 89
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 90
    .local v6, ret:Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 92
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v7, p0, Lcom/android/provision/DefaultActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 97
    :goto_0
    if-eqz v5, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v7

    .line 100
    .local v4, len:I
    const/4 v1, 0x0

    .line 101
    .local v1, curActivityName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 102
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v7, v7, v3

    iget-object v1, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 103
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 109
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #curActivityName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #len:I
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v1       #curActivityName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #len:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/provision/DefaultActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 64
    invoke-virtual {p0}, Lcom/android/provision/DefaultActivity;->updateScreenSize()V

    .line 67
    const-string v3, "com.google.android.setupwizard"

    const-string v4, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {p0, v3, v4}, Lcom/android/provision/DefaultActivity;->checkApplicationExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 68
    .local v2, setupWizardExists:Ljava/lang/Boolean;
    const-string v3, "com.mediatek.oobe"

    const-string v4, "com.mediatek.oobe.WizardActivity"

    invoke-direct {p0, v3, v4}, Lcom/android/provision/DefaultActivity;->checkApplicationExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 71
    .local v1, oobeExists:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/android/provision/DefaultActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, name:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/provision/DefaultActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    return-void

    .line 75
    .end local v0           #name:Landroid/content/ComponentName;
    :cond_0
    const-string v3, "Provision"

    const-string v4, "Skip provision setup for 3rd party setupwizard"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateScreenSize()V
    .locals 7

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 44
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 45
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 46
    .local v2, size:Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, screenSize:Ljava/lang/String;
    const-string v4, "1184x720"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    const-string v1, "800x480"

    .line 55
    :cond_0
    :goto_0
    const-string v4, "Provision"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v4, "persist.sys.screen.size"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 50
    :cond_1
    const-string v4, "960x540"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    const-string v1, "800x480"

    goto :goto_0

    .line 52
    :cond_2
    const-string v4, "1280x720"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const-string v1, "800x480"

    goto :goto_0
.end method
