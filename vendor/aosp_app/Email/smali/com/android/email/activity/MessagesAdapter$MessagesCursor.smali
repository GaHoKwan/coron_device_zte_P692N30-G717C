.class public Lcom/android/email/activity/MessagesAdapter$MessagesCursor;
.super Landroid/database/CursorWrapper;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagesCursor"
.end annotation


# instance fields
.field public final mAccount:Lcom/android/emailcommon/provider/Account;

.field public final mCountTotalAccounts:I

.field public final mIsEasAccount:Z

.field public final mIsFound:Z

.field public final mIsRefreshable:Z

.field public final mMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)V
    .locals 0
    .parameter "cursor"
    .parameter "found"
    .parameter "account"
    .parameter "mailbox"
    .parameter "isEasAccount"
    .parameter "isRefreshable"
    .parameter "countTotalAccounts"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 158
    iput-boolean p2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsFound:Z

    .line 159
    iput-object p3, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 160
    iput-object p4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 161
    iput-boolean p5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsEasAccount:Z

    .line 162
    iput-boolean p6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mIsRefreshable:Z

    .line 163
    iput p7, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;->mCountTotalAccounts:I

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/email/activity/MessagesAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 140
    invoke-direct/range {p0 .. p7}, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;-><init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZI)V

    return-void
.end method
