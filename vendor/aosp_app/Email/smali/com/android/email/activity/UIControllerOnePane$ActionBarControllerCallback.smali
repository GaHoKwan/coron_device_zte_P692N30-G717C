.class Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;
.super Ljava/lang/Object;
.source "UIControllerOnePane.java"

# interfaces
.implements Lcom/android/email/activity/ActionBarController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerOnePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerOnePane;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerOnePane;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerOnePane;Lcom/android/email/activity/UIControllerOnePane$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerOnePane;)V

    return-void
.end method


# virtual methods
.method public getMailboxId()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$100(Lcom/android/email/activity/UIControllerOnePane;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->getSearchHint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleMode()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x3

    goto :goto_0

    .line 176
    :cond_1
    const/16 v0, 0x12

    goto :goto_0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getUIAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAccountSelected()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isAccountSelected()Z

    move-result v0

    return v0
.end method

.method public onAccountSelected(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/UIControllerBase;->switchAccount(JZ)V

    .line 225
    return-void
.end method

.method public onLocalSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "queryTerm"
    .parameter "queryField"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->onLocalSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMailboxSelected(JJ)V
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->getMailboxId()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->showAllMailboxes()V
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$200(Lcom/android/email/activity/UIControllerOnePane;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    goto :goto_0
.end method

.method public onNoAccountsFound()V
    .locals 1

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 235
    return-void
.end method

.method public onSearchExit()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onSearchExit()V

    .line 272
    return-void
.end method

.method public onSearchStarted()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onSearchStarted()V

    goto :goto_0
.end method

.method public onSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "queryTerm"
    .parameter "queryField"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->onSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpPressed()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UIControllerOnePane;->onBackPressed(Z)Z

    .line 289
    return-void
.end method

.method public shouldShowUp()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$000(Lcom/android/email/activity/UIControllerOnePane;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchMail(Z)V
    .locals 1
    .parameter "toNewer"

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->moveToNewer()Z

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->moveToOlder()Z

    goto :goto_0
.end method
