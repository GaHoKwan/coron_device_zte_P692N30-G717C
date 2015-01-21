.class Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/page/NotificationManagerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstalledReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/NotificationManagerPage;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/NotificationManagerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent.getAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/util/Log;->info(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;

    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationManagerPage$PackageInstalledReceiver;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    invoke-direct {v0, v1}, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;-><init>(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method
