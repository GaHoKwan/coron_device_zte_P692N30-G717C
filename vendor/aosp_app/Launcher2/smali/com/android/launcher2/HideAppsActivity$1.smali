.class Lcom/android/launcher2/HideAppsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "HideAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HideAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HideAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HideAppsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/launcher2/HideAppsActivity$1;->this$0:Lcom/android/launcher2/HideAppsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v1, "package_list_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity$1;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #calls: Lcom/android/launcher2/HideAppsActivity;->init()V
    invoke-static {v1}, Lcom/android/launcher2/HideAppsActivity;->access$000(Lcom/android/launcher2/HideAppsActivity;)V

    .line 102
    iget-object v1, p0, Lcom/android/launcher2/HideAppsActivity$1;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mAdapter:Lcom/android/launcher2/HideAppsActivity$AppsAdapter;
    invoke-static {v1}, Lcom/android/launcher2/HideAppsActivity;->access$100(Lcom/android/launcher2/HideAppsActivity;)Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 104
    :cond_0
    return-void
.end method
