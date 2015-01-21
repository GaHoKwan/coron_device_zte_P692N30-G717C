.class public Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RfDesenseTxTestReceiver.java"


# static fields
.field private static final KEY_REBOOT:Ljava/lang/String; = "rebooted"

.field public static final PREF_FILE:Ljava/lang/String; = "tx_test"

.field private static final TAG:Ljava/lang/String; = "RfDesenseTxTestReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    const-string v1, "RfDesenseTxTestReceiver"

    const-string v2, "Before shutdown"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "tx_test"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, pref:Landroid/content/SharedPreferences$Editor;
    const-string v1, "rebooted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method
