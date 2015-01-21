.class Lcom/android/email/NotificationController$UnreadMessagesCountObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnreadMessagesCountObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUnreadNumOfAllInbox:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 973
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 970
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->mUnreadNumOfAllInbox:I

    .line 974
    iput-object p2, p0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->mContext:Landroid/content/Context;

    .line 975
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    .line 980
    .local v0, unreadCount:I
    iget v1, p0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->mUnreadNumOfAllInbox:I

    if-eq v1, v0, :cond_0

    .line 982
    iput v0, p0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->mUnreadNumOfAllInbox:I

    .line 984
    iget-object v1, p0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->mUnreadNumOfAllInbox:I

    invoke-static {v1, v2}, Lcom/android/email/NotificationController;->notifyEmailUnreadNumber(Landroid/content/Context;I)V

    .line 986
    :cond_0
    return-void
.end method
