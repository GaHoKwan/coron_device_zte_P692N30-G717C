.class final Lcom/android/calendar/alerts/AlertUtils$1;
.super Ljava/lang/Object;
.source "AlertUtils.java"

# interfaces
.implements Lcom/android/calendar/alerts/AlarmManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mgr:Landroid/app/AlarmManager;


# direct methods
.method constructor <init>(Landroid/app/AlarmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertUtils$1;->val$mgr:Landroid/app/AlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IJLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "operation"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertUtils$1;->val$mgr:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 108
    return-void
.end method
