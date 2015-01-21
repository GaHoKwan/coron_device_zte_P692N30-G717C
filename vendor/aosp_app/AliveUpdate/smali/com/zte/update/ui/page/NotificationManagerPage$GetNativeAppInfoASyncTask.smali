.class Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;
.super Landroid/os/AsyncTask;
.source "NotificationManagerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/page/NotificationManagerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetNativeAppInfoASyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/NotificationManagerPage;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/NotificationManagerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 121
    new-instance v0, Lcom/zte/update/scan/task/ScanRequestInfoTask;

    invoke-direct {v0}, Lcom/zte/update/scan/task/ScanRequestInfoTask;-><init>()V

    invoke-virtual {v0}, Lcom/zte/update/scan/task/ScanRequestInfoTask;->run()V

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    #calls: Lcom/zte/update/ui/page/NotificationManagerPage;->intiNotificationListView()V
    invoke-static {v0}, Lcom/zte/update/ui/page/NotificationManagerPage;->access$000(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    .line 127
    iget-object v0, p0, Lcom/zte/update/ui/page/NotificationManagerPage$GetNativeAppInfoASyncTask;->this$0:Lcom/zte/update/ui/page/NotificationManagerPage;

    #calls: Lcom/zte/update/ui/page/NotificationManagerPage;->intiUnNotificationListView()V
    invoke-static {v0}, Lcom/zte/update/ui/page/NotificationManagerPage;->access$100(Lcom/zte/update/ui/page/NotificationManagerPage;)V

    .line 128
    return-void
.end method
