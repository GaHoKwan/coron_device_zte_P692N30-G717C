.class public Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;
.super Ljava/lang/Object;
.source "DefaultCallSettingsConnection.java"

# interfaces
.implements Lcom/mediatek/phone/ext/ICallSettingsConnection;


# static fields
.field private static final CDMA_CALL_OPTION_CLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.CdmaCallWaitingOptions"

.field private static final TAG:Ljava/lang/String; = "DefaultCallSettingsConnection"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCdmaCallOptionClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "com.mediatek.settings.CdmaCallWaitingOptions"

    return-object v0
.end method

.method public setCallForwardPrefsTitle(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "prefSet"

    .prologue
    .line 21
    const-string v0, "DefaultCallSettingsConnection"

    const-string v1, "DefaultCallSettingsConnection setCallForwardPrefsTitle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public startCallSettingsActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 16
    const-string v0, "DefaultCallSettingsConnection"

    const-string v1, "DefaultCallSettingsConnection startCallSettingsActivity"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method
