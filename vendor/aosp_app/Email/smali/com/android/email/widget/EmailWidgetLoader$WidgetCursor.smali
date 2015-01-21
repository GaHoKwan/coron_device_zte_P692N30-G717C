.class Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;
.super Landroid/database/CursorWrapper;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/EmailWidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetCursor"
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mMailboxName:Ljava/lang/String;

.field private final mMessageCount:I

.field private final mNeedReload:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "cursor"
    .parameter "messageCount"
    .parameter "accountName"
    .parameter "mailboxName"
    .parameter "needReload"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 90
    iput p2, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMessageCount:I

    .line 91
    iput-object p3, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mAccountName:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMailboxName:Ljava/lang/String;

    .line 93
    iput-boolean p5, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mNeedReload:Z

    .line 94
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMailboxName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mMessageCount:I

    return v0
.end method

.method public getNeedReload()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->mNeedReload:Z

    return v0
.end method
