.class Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "OofGetWaitingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OofTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 306
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 310
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    const/high16 v2, -0x8000

    #calls: Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->reportProgress(I)V
    invoke-static {v1, v2}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->access$000(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;I)V

    .line 311
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    #getter for: Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->access$100(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 312
    .local v0, controller:Lcom/android/email/Controller;
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    #getter for: Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v2}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->access$200(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/email/Controller;->syncOof(JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    .line 313
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iget-object v1, v1, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iget-object v1, v1, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v1}, Lcom/android/emailcommon/service/OofParams;->getmStatus()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 314
    :cond_0
    const-string v1, "OofGetWaitingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get oof status faild. mOofParams = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iget-object v3, v3, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 317
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iget-object v1, v1, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-virtual {v1}, Lcom/android/emailcommon/service/OofParams;->getmStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mState:I
    invoke-static {v0, v1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->access$302(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;I)I

    .line 323
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iget-boolean v0, v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAttached:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->reportProgress(I)V
    invoke-static {v0, v1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->access$000(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;I)V

    .line 326
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 302
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
