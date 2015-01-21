.class Lcom/zte/feedback/UEImprove$2;
.super Ljava/lang/Thread;
.source "UEImprove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/UEImprove;->submitCrashInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/UEImprove;

.field final synthetic val$notifyUser:Z


# direct methods
.method constructor <init>(Lcom/zte/feedback/UEImprove;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/zte/feedback/UEImprove$2;->this$0:Lcom/zte/feedback/UEImprove;

    iput-boolean p2, p0, Lcom/zte/feedback/UEImprove$2;->val$notifyUser:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 203
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 205
    iget-object v4, p0, Lcom/zte/feedback/UEImprove$2;->this$0:Lcom/zte/feedback/UEImprove;

    #getter for: Lcom/zte/feedback/UEImprove;->uploadException:Lcom/zte/feedback/UploadException;
    invoke-static {v4}, Lcom/zte/feedback/UEImprove;->access$100(Lcom/zte/feedback/UEImprove;)Lcom/zte/feedback/UploadException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/feedback/UploadException;->sendFeedBack()Z

    move-result v4

    if-ne v6, v4, :cond_0

    .line 209
    const-string v4, "UEImprove"

    const-string v5, " ok ============"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v4, p0, Lcom/zte/feedback/UEImprove$2;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v4, v4, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0679

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 211
    const-string v1, "HeartyService-crash.log"

    .line 212
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/zte/feedback/UEImprove;->delete(Ljava/io/File;)V

    .line 231
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 232
    return-void

    .line 216
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileName:Ljava/lang/String;
    :cond_0
    const-string v4, "UEImprove"

    const-string v5, " error ============"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-boolean v4, p0, Lcom/zte/feedback/UEImprove$2;->val$notifyUser:Z

    if-eqz v4, :cond_1

    .line 219
    iget-object v4, p0, Lcom/zte/feedback/UEImprove$2;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v4, v4, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    const v5, 0x7f0a067a

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 222
    :cond_1
    const-string v1, "HeartyService-crash.log"

    .line 223
    .restart local v1       #fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .restart local v0       #file:Ljava/io/File;
    const-string v3, "HeartyService-crash-backup.log"

    .line 225
    .local v3, newFileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v2, newFile:Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method
