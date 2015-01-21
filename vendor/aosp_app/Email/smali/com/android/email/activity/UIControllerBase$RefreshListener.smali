.class Lcom/android/email/activity/UIControllerBase$RefreshListener;
.super Ljava/lang/Object;
.source "UIControllerBase.java"

# interfaces
.implements Lcom/android/email/RefreshManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshListener"
.end annotation


# instance fields
.field private mRefreshIcon:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/email/activity/UIControllerBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerBase;Lcom/android/email/activity/UIControllerBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerBase$RefreshListener;-><init>(Lcom/android/email/activity/UIControllerBase;)V

    return-void
.end method

.method private stopRefreshIcon()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->this$0:Lcom/android/email/activity/UIControllerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UIControllerBase;->canStopRefreshIcon(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onMessagingError(JJLjava/lang/String;)V
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "message"

    .prologue
    .line 176
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    goto :goto_0
.end method

.method public onRefreshStatusChanged(JJ)V
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 184
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    goto :goto_0
.end method

.method public onStopRefreshIcon(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 192
    const-string v0, "UIControllerBase.onStopRefreshIcon()"

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->stopRefreshIcon()V

    .line 194
    return-void
.end method

.method setRefreshIcon(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    .line 198
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    .line 199
    return-void
.end method

.method public updateRefreshIcon()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isRefreshInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->this$0:Lcom/android/email/activity/UIControllerBase;

    iget-boolean v0, v0, Lcom/android/email/activity/UIControllerBase;->mIsRemoteSearching:Z

    if-eqz v0, :cond_2

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    const v1, 0x7f040019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method
