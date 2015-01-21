.class public Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;
.super Ljava/lang/Object;
.source "DataUsageLauncher.java"

# interfaces
.implements Lcom/mediatek/common/policy/IKeyguardLayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataUsageLauncher"

.field private static mTotalRunInstance:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mID:I

.field private mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mTotalRunInstance:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    .line 24
    iput-object p1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mContext:Landroid/content/Context;

    .line 25
    sget v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mTotalRunInstance:I

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mID:I

    .line 26
    sget v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mTotalRunInstance:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mTotalRunInstance:I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataUsageLauncher() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->log(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private getShowLockScreen()Z
    .locals 5

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, isShowingSim1:I
    const/4 v2, 0x0

    .line 64
    .local v2, isShowingSim2:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_usage_on_lockscreen_sim1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 66
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_usage_on_lockscreen_sim2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On LockScreen (Sim1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Sim2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    add-int v3, v1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 20
    const-string v0, "DataUsageLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method


# virtual methods
.method public create()Landroid/view/View;
    .locals 4

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, ret:Landroid/view/View;
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->getShowLockScreen()Z

    move-result v0

    .line 34
    .local v0, isShowing:Z
    if-eqz v0, :cond_0

    .line 35
    new-instance v2, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->log(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-virtual {v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->create()Landroid/view/View;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 39
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->log(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    invoke-virtual {v0}, Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;->destroy()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/DataUsageLauncher;->mStageView:Lcom/mediatek/DataUsageLockScreenClient/DataUsageStageView;

    .line 51
    :cond_0
    return-void
.end method

.method public getKeyguardLayerInfo()Lcom/mediatek/common/policy/KeyguardLayerInfo;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
