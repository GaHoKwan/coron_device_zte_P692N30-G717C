.class Lcom/android/email/activity/MessageCompose$7$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$7;->onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$7;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$7$1;->this$1:Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachmentLoaded([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 6
    .parameter "attachments"

    .prologue
    .line 1312
    if-eqz p1, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 1313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v1, attachList:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1315
    .local v2, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1317
    .end local v2           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$7$1;->this$1:Lcom/android/email/activity/MessageCompose$7;

    iget-object v5, v5, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachments(Ljava/util/List;)V
    invoke-static {v5, v1}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;Ljava/util/List;)V

    .line 1319
    .end local v0           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #attachList:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method
