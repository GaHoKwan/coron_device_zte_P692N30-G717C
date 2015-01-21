.class Lcom/android/email/Preferences$1;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Preferences;->cleanAttachmentIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Preferences;


# direct methods
.method constructor <init>(Lcom/android/email/Preferences;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/email/Preferences$1;->this$0:Lcom/android/email/Preferences;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/Preferences$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/email/Preferences$1;->this$0:Lcom/android/email/Preferences;

    #getter for: Lcom/android/email/Preferences;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Preferences;->access$000(Lcom/android/email/Preferences;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->deleteCachedAttachmentsDaysBefore(I)V

    .line 328
    const-string v0, "Aftert finished delete cache attachment, check lowstorage again."

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/email/Preferences$1;->this$0:Lcom/android/email/Preferences;

    #calls: Lcom/android/email/Preferences;->isLowStorage()Z
    invoke-static {v0}, Lcom/android/email/Preferences;->access$100(Lcom/android/email/Preferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/email/Preferences$1;->this$0:Lcom/android/email/Preferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setLowStorage(Z)V

    .line 335
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/email/Preferences$1;->this$0:Lcom/android/email/Preferences;

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setLowStorage(Z)V

    goto :goto_0
.end method
