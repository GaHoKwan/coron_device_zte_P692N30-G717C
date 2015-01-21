.class final Lcom/android/mms/ui/MessageUtils$4;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/model/SlideshowModel;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$msgUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1475
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    .line 1476
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 1478
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1479
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$4;->val$msgUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v1, v5}, Lcom/android/mms/ui/MessageUtils;->updatePartsIfNeeded(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 1481
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->access$002(Lcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    .line 1488
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    :goto_0
    return-void

    .line 1482
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 1483
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms"

    const-string v4, "Unable to save message for preview"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
