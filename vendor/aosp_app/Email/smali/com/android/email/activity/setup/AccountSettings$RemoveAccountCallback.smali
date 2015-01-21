.class public Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveAccountCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishRemoveAccount(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    new-instance v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;-><init>(Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 886
    return-void
.end method
