.class public Lcom/android/mms/util/PduLoaderManager$PduTask;
.super Ljava/lang/Object;
.source "PduLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/PduLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PduTask"
.end annotation


# instance fields
.field private final mRequestSlideshow:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/util/PduLoaderManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/PduLoaderManager;Landroid/net/Uri;Z)V
    .locals 1
    .parameter
    .parameter "uri"
    .parameter "requestSlideshow"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-nez p2, :cond_0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 165
    :cond_0
    iput-object p2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    .line 166
    iput-boolean p3, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mRequestSlideshow:Z

    .line 167
    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v7, 0x0

    .line 182
    .local v7, slideshow:Lcom/android/mms/model/SlideshowModel;
    const/4 v2, 0x0

    .line 184
    .local v2, exception:Ljava/lang/Throwable;
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    #getter for: Lcom/android/mms/util/PduLoaderManager;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {v8}, Lcom/android/mms/util/PduLoaderManager;->access$000(Lcom/android/mms/util/PduLoaderManager;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 185
    if-eqz v3, :cond_0

    iget-boolean v8, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mRequestSlideshow:Z

    if-eqz v8, :cond_0

    .line 186
    iget-object v8, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    #getter for: Lcom/android/mms/util/PduLoaderManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/mms/util/PduLoaderManager;->access$100(Lcom/android/mms/util/PduLoaderManager;)Landroid/content/Context;

    move-result-object v9

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 193
    :cond_0
    :goto_0
    move-object v5, v3

    .line 194
    .local v5, resultPdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object v6, v7

    .line 195
    .local v6, resultSlideshow:Lcom/android/mms/model/SlideshowModel;
    move-object v4, v2

    .line 196
    .local v4, resultException:Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v8, v8, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbackHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/mms/util/PduLoaderManager$PduTask$1;

    invoke-direct {v9, p0, v5, v6, v4}, Lcom/android/mms/util/PduLoaderManager$PduTask$1;-><init>(Lcom/android/mms/util/PduLoaderManager$PduTask;Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void

    .line 189
    .end local v4           #resultException:Ljava/lang/Throwable;
    .end local v5           #resultPdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6           #resultSlideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v8, "Mms:PduLoaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MmsException loading uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    move-object v2, v1

    goto :goto_0
.end method
