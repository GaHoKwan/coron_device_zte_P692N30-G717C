.class public Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
.super Ljava/lang/Object;
.source "SmartPushPreferences.java"


# static fields
.field private static final LAST_CALCULATE_TIME:Ljava/lang/String; = "lastCalculateTime"

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "SmartPush.Main"

.field private static sPreferences:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "SmartPush.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    const-class v1, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->sPreferences:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    invoke-direct {v0, p0}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->sPreferences:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    .line 23
    :cond_0
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->sPreferences:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getLastCalculateTime()J
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastCalculateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeLastCalculateTime()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastCalculateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method

.method public settLastCalculateTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastCalculateTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    return-void
.end method
