.class Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePreviewIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 1
    .parameter
    .parameter "attachmentInfo"

    .prologue
    .line 2716
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 2717
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 2718
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mContext:Landroid/content/Context;

    .line 2719
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 2720
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "params"

    .prologue
    .line 2724
    const-string v1, "UpdatePreviewIconTask#doInBackground"

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 2725
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2726
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v1, "UpdatePreviewIconTask#doInBackground"

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 2727
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2711
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2732
    if-nez p1, :cond_0

    .line 2739
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$4700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2738
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mIconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$4700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2711
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
