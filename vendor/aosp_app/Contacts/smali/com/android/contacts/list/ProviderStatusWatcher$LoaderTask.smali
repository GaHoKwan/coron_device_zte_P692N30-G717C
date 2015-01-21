.class Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;
.super Landroid/os/AsyncTask;
.source "ProviderStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ProviderStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ProviderStatusWatcher;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/ProviderStatusWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;-><init>(Lcom/android/contacts/list/ProviderStatusWatcher;)V

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$702(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;)Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    .line 268
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #getter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$300(Lcom/android/contacts/list/ProviderStatusWatcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$200()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v6

    .line 232
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 234
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    new-instance v1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/list/ProviderStatusWatcher$Status;-><init>(ILjava/lang/String;)V

    #setter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$402(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$Status;)Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 239
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 242
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 247
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #getter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_3
    iget-object v2, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #getter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 242
    :cond_0
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #getter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_5
    iget-object v2, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #getter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 242
    :catchall_2
    move-exception v0

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 247
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #getter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_7
    iget-object v2, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #getter for: Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->cleanUp()V

    .line 256
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "loaded"

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->cleanUp()V

    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    #calls: Lcom/android/contacts/list/ProviderStatusWatcher;->notifyListeners()V
    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$600(Lcom/android/contacts/list/ProviderStatusWatcher;)V

    .line 264
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
