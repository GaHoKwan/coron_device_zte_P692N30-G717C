.class Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "VipListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveVipTask"
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
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListItem;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListItem;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;->this$0:Lcom/mediatek/email/emailvip/activity/VipListItem;

    .line 181
    #getter for: Lcom/mediatek/email/emailvip/activity/VipListItem;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/mediatek/email/emailvip/activity/VipListItem;->access$000(Lcom/mediatek/email/emailvip/activity/VipListItem;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 182
    iput-object p2, p0, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;->mContext:Landroid/content/Context;

    .line 183
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 187
    const-string v0, "RemoveVipTask#doInBackground"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;->this$0:Lcom/mediatek/email/emailvip/activity/VipListItem;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipId:J
    invoke-static {v2}, Lcom/mediatek/email/emailvip/activity/VipListItem;->access$100(Lcom/mediatek/email/emailvip/activity/VipListItem;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/VipMember;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 189
    const-string v0, "RemoveVipTask#doInBackground"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 177
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 195
    return-void
.end method
