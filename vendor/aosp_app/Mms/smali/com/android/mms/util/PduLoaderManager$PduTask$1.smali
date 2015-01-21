.class Lcom/android/mms/util/PduLoaderManager$PduTask$1;
.super Ljava/lang/Object;
.source "PduLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/PduLoaderManager$PduTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

.field final synthetic val$resultException:Ljava/lang/Throwable;

.field final synthetic val$resultPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field final synthetic val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/util/PduLoaderManager$PduTask;Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iput-object p2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultPdu:Lcom/google/android/mms/pdu/GenericPdu;

    iput-object p3, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultException:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 198
    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v4, v4, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v4, v4, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    #getter for: Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/util/PduLoaderManager$PduTask;->access$200(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 199
    .local v1, callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/mms/util/ItemLoadedCallback;>;"
    if-eqz v1, :cond_1

    .line 201
    invoke-static {v1}, Lcom/android/mms/util/BackgroundLoaderManager;->asList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ItemLoadedCallback;

    .line 202
    .local v0, callback:Lcom/android/mms/util/ItemLoadedCallback;,"Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/PduLoaderManager$PduLoaded;>;"
    const-string v4, "Mms:PduLoaderManager"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    const-string v4, "Mms:PduLoaderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invoking pdu callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    new-instance v3, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultPdu:Lcom/google/android/mms/pdu/GenericPdu;

    iget-object v5, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, v4, v5}, Lcom/android/mms/util/PduLoaderManager$PduLoaded;-><init>(Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;)V

    .line 206
    .local v3, pduLoaded:Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultException:Ljava/lang/Throwable;

    invoke-interface {v0, v3, v4}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 210
    .end local v0           #callback:Lcom/android/mms/util/ItemLoadedCallback;,"Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/PduLoaderManager$PduLoaded;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pduLoaded:Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    .line 211
    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v4, v4, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    #getter for: Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;
    invoke-static {v4}, Lcom/android/mms/util/PduLoaderManager;->access$300(Lcom/android/mms/util/PduLoaderManager;)Lcom/android/mms/util/SimpleCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    #getter for: Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/util/PduLoaderManager$PduTask;->access$200(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/util/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v4, v4, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v4, v4, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    #getter for: Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/util/PduLoaderManager$PduTask;->access$200(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v4, v4, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v4, v4, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    #getter for: Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/util/PduLoaderManager$PduTask;->access$200(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 217
    const-string v4, "Mms:pducache"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    const-string v4, "Mms:PduLoaderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pdu task for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    #getter for: Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/util/PduLoaderManager$PduTask;->access$200(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exiting; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v6, v6, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v6, v6, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3
    return-void
.end method
