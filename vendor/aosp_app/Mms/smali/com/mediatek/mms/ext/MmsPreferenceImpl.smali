.class public Lcom/mediatek/mms/ext/MmsPreferenceImpl;
.super Landroid/content/ContextWrapper;
.source "MmsPreferenceImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsPreference;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPreferenceImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public modifyDataRoamingPreference(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    const-string v0, "Mms/MmsPreferenceImpl"

    const-string v1, "modifyDataRoamingPreference"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public syncDataRoamingStatus(Landroid/app/Activity;Landroid/preference/Preference;I)Z
    .locals 2
    .parameter "activity"
    .parameter "preference"
    .parameter "simIndex"

    .prologue
    .line 54
    const-string v0, "Mms/MmsPreferenceImpl"

    const-string v1, "syncDataRoamingStatus"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
