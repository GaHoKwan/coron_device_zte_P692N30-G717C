.class Lcom/mediatek/email/emailvip/activity/VipPreference$2;
.super Landroid/os/AsyncTask;
.source "VipPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipPreference;->getVipMemberCount(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final errorResult:I

.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipPreference;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$2;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$2;->errorResult:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Integer;
    .locals 10
    .parameter "contexts"

    .prologue
    const/4 v9, 0x0

    .line 170
    aget-object v0, p1, v9

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/mediatek/email/emailvip/activity/VipPreference;->access$100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "accountKey =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$2;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipPreference;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v5}, Lcom/mediatek/email/emailvip/activity/VipPreference;->access$200(Lcom/mediatek/email/emailvip/activity/VipPreference;)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 174
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    :goto_0
    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 179
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipPreference$2;->doInBackground([Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$2;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipPreference;->access$300(Lcom/mediatek/email/emailvip/activity/VipPreference;)Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;->setCount(I)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference$2;->this$0:Lcom/mediatek/email/emailvip/activity/VipPreference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/mediatek/email/emailvip/activity/VipPreference;->mMemberCount:I
    invoke-static {v0, v1}, Lcom/mediatek/email/emailvip/activity/VipPreference;->access$402(Lcom/mediatek/email/emailvip/activity/VipPreference;I)I

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v0, "Failed to get the count of the VIP member"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipPreference$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
