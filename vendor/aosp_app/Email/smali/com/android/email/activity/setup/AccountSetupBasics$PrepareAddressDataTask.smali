.class Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareAddressDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "params"

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/mediatek/email/provider/history/EmailAddress;->queryAddress(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1019
    .local v0, c:Landroid/database/Cursor;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1015
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1024
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1025
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->clear()V

    .line 1026
    if-eqz p1, :cond_2

    .line 1028
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1029
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mHisAddressAdapter:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1033
    .end local v0           #address:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_0

    .line 1034
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1033
    :cond_1
    if-eqz p1, :cond_2

    .line 1034
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1038
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1015
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
