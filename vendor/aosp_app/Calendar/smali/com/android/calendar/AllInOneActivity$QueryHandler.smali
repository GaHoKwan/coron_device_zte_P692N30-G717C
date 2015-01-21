.class Lcom/android/calendar/AllInOneActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AllInOneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AllInOneActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    .line 216
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z
    invoke-static {v1, v2}, Lcom/android/calendar/AllInOneActivity;->access$402(Lcom/android/calendar/AllInOneActivity;Z)Z

    .line 224
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    :cond_0
    if-eqz p3, :cond_1

    .line 229
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    if-eqz p3, :cond_3

    .line 229
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v4, options:Landroid/os/Bundle;
    const-string v1, "introMessage"

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0078

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 236
    const-string v1, "allowSkip"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 239
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    const-string v2, "com.android.calendar"

    iget-object v5, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    new-instance v6, Lcom/android/calendar/AllInOneActivity$QueryHandler$1;

    invoke-direct {v6, p0}, Lcom/android/calendar/AllInOneActivity$QueryHandler$1;-><init>(Lcom/android/calendar/AllInOneActivity$QueryHandler;)V

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 228
    .end local v0           #am:Landroid/accounts/AccountManager;
    .end local v4           #options:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_4

    .line 229
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method
