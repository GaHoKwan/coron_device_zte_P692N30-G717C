.class public Lcn/edu/ncwu/www/receiver/ReStoreStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReStoreStateReceiver.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


# instance fields
.field private sharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 32
    return-void
.end method
