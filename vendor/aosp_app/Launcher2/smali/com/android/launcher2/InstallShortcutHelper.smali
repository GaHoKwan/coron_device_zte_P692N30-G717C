.class public Lcom/android/launcher2/InstallShortcutHelper;
.super Ljava/lang/Object;
.source "InstallShortcutHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstallShortcutHelper"

.field private static sInstallingCount:I

.field private static sInstallingShortcut:Z

.field private static sSuccessCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    .line 10
    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 11
    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decreaseInstallingCount(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "decreaseCount"

    .prologue
    .line 64
    const-string v0, "InstallShortcutHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseInstallingCount: decreaseCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sInstallingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sInstallingShortcut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    sub-int/2addr v0, p1

    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 70
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseUpdate(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public static decreaseInstallingCount(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "bSuccess"

    .prologue
    .line 48
    const-string v0, "InstallShortcutHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseInstallingCount: sInstallingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sInstallingShortcut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 53
    if-eqz p1, :cond_0

    .line 54
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseUpdate(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private static decreaseUpdate(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 76
    const-string v1, "InstallShortcutHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decreaseUpdate: sInstallingCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sSuccessCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget v1, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    if-gtz v1, :cond_0

    .line 81
    sget v1, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    if-eqz v1, :cond_1

    .line 82
    const-string v1, "InstallShortcutHelper"

    const-string v2, "decreaseUpdate: triggerLoadingDatabaseManually"

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 86
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->triggerLoadingDatabaseManually()V

    .line 91
    .end local v0           #app:Lcom/android/launcher2/LauncherApplication;
    :goto_0
    sput v4, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 92
    sput v4, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    .line 96
    :cond_0
    const-string v1, "InstallShortcutHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decreaseUpdate: sInstallingShortcut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 88
    :cond_1
    const-string v1, "InstallShortcutHelper"

    const-string v2, "decreaseUpdate: all failed, and reset sInstallingShortcut"

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sput-boolean v4, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    goto :goto_0
.end method

.method public static increaseInstallingCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 34
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 35
    sget v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    if-lez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    .line 39
    :cond_0
    const-string v0, "InstallShortcutHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseInstallingCount: sInstallingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sInstallingShortcut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static isInstallingShortcut()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    return v0
.end method

.method public static setInstallingShortcut(Z)V
    .locals 3
    .parameter "bInstalling"

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-boolean p0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    .line 18
    sget-boolean v0, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    if-nez v0, :cond_0

    .line 19
    sput v1, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingCount:I

    .line 20
    sput v1, Lcom/android/launcher2/InstallShortcutHelper;->sSuccessCount:I

    .line 23
    :cond_0
    const-string v0, "InstallShortcutHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInstallingShortcut: sInstallingShortcut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/InstallShortcutHelper;->sInstallingShortcut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
