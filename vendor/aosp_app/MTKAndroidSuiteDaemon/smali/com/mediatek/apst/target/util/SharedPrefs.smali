.class public abstract Lcom/mediatek/apst/target/util/SharedPrefs;
.super Ljava/lang/Object;
.source "SharedPrefs.java"


# static fields
.field public static final CALENDAR_LAST_SYNC_DATE:Ljava/lang/String; = "calendar_last_sync_date"

.field public static final CALENDAR_SYNC_NEED_REINIT:Ljava/lang/String; = "calendar_sync_need_reinit"

.field public static final LAST_SYNC_DATE:Ljava/lang/String; = "LAST_SYNC_DATE"

.field public static final PREF_FILE:Ljava/lang/String; = "PREF"

.field public static final SYNC_NEED_REINIT:Ljava/lang/String; = "SYNC_NEED_REINIT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PREF"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method
