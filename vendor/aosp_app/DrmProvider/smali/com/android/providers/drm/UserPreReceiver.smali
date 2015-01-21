.class public Lcom/android/providers/drm/UserPreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserPreReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/drm/UserPreReceiver$1;,
        Lcom/android/providers/drm/UserPreReceiver$UpdateTimeBaseTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DRM/UserPreReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    const-string v0, "DRM/UserPreReceiver"

    const-string v1, "onReceive : USER_PRESENT received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/android/providers/drm/UserPreReceiver$UpdateTimeBaseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/drm/UserPreReceiver$UpdateTimeBaseTask;-><init>(Lcom/android/providers/drm/UserPreReceiver;Lcom/android/providers/drm/UserPreReceiver$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    return-void
.end method
