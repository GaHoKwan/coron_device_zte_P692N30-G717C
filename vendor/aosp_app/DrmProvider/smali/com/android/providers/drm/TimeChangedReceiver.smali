.class public Lcom/android/providers/drm/TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/drm/TimeChangedReceiver$1;,
        Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DRM/TimeChangedReceiver"


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
    const-string v0, "DRM/TimeChangedReceiver"

    const-string v1, "onReceive : TIME_SET received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;-><init>(Lcom/android/providers/drm/TimeChangedReceiver;Lcom/android/providers/drm/TimeChangedReceiver$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    return-void
.end method