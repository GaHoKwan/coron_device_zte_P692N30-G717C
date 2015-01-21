.class Lcom/android/email/activity/setup/GeneralPreferences$1;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "GeneralPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/GeneralPreferences;->updateVipMemberCount()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERROR_RESULT:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/GeneralPreferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/GeneralPreferences;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/email/activity/setup/GeneralPreferences$1;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter "params"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences$1;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 233
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 234
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    :cond_0
    const-wide/high16 v1, 0x1000

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/VipMember;->countVipMembersWithAccountId(Landroid/content/Context;J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/GeneralPreferences$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences$1;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/email/activity/setup/GeneralPreferences;->mMemberCount:I
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/GeneralPreferences;->access$002(Lcom/android/email/activity/setup/GeneralPreferences;I)I

    .line 244
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences$1;->this$0:Lcom/android/email/activity/setup/GeneralPreferences;

    #getter for: Lcom/android/email/activity/setup/GeneralPreferences;->mVipMembers:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;
    invoke-static {v0}, Lcom/android/email/activity/setup/GeneralPreferences;->access$100(Lcom/android/email/activity/setup/GeneralPreferences;)Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;->setCount(I)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v0, "Failed to get the count of the VIP member"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/GeneralPreferences$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
