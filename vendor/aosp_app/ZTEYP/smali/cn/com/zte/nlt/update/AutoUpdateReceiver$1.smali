.class Lcn/com/zte/nlt/update/AutoUpdateReceiver$1;
.super Landroid/os/AsyncTask;
.source "AutoUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/update/AutoUpdateReceiver;->doGetUpdateInfoTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcn/com/zte/nlt/down/UpdatePackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/update/AutoUpdateReceiver;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/update/AutoUpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/zte/nlt/update/AutoUpdateReceiver$1;->this$0:Lcn/com/zte/nlt/update/AutoUpdateReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcn/com/zte/nlt/down/UpdatePackageInfo;
    .locals 3
    .parameter "params"

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 63
    .local v1, result:Lcn/com/zte/nlt/down/UpdatePackageInfo;
    :try_start_0
    invoke-static {}, Lcn/com/zte/nlt/update/Updater;->getUpdatePackageInfo()Lcn/com/zte/nlt/down/UpdatePackageInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/update/AutoUpdateReceiver$1;->doInBackground([Ljava/lang/Void;)Lcn/com/zte/nlt/down/UpdatePackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcn/com/zte/nlt/update/Updater;->hasUpdate(Lcn/com/zte/nlt/down/UpdatePackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/com/zte/nlt/update/AutoUpdateReceiver$1;->this$0:Lcn/com/zte/nlt/update/AutoUpdateReceiver;

    invoke-virtual {v0, p1}, Lcn/com/zte/nlt/update/AutoUpdateReceiver;->showNotification(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    .line 79
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Lcn/com/zte/nlt/down/UpdatePackageInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/update/AutoUpdateReceiver$1;->onPostExecute(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    return-void
.end method
