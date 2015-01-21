.class Lcom/android/launcher2/Launcher$25;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->bindAllApplications(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4198
    iput-object p1, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$25;->val$apps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4201
    iget-object v0, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$25;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->setApps(Ljava/util/ArrayList;)V

    .line 4202
    iget-object v0, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/Launcher;->mBindingAppsFinished:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$3202(Lcom/android/launcher2/Launcher;Z)Z

    .line 4204
    const-string v0, "Launcher"

    const-string v1, "bindAllApplications: finished!"

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    iget-object v0, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4207
    const-string v0, "Launcher"

    const-string v1, "bindAllApplications: Data ready, flush pending apps queue!"

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4208
    iget-object v0, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->flushPendingAppsQueue(Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 4211
    :cond_0
    return-void
.end method
