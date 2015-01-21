.class public Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;
.super Landroid/app/Activity;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$FeedBackTextWatcher;
    }
.end annotation


# instance fields
.field private emailEditText:Landroid/widget/EditText;

.field private mSendButton:Landroid/widget/Button;

.field private mSpareNumber:Landroid/widget/TextView;

.field private suggestionEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isSutibleForEmail(Ljava/lang/String;)Z
    .locals 1
    .parameter "paramString"

    .prologue
    .line 150
    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private showFailureDialog()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const v1, 0x7f09003b

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$1;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 121
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->isSutibleForEmail(Ljava/lang/String;)Z

    move-result v1

    .line 129
    .local v1, isSutibleEmail:Z
    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 133
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 134
    .local v2, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 135
    .local v0, gprs:Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 136
    .local v3, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    :cond_1
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 138
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->suggestionEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendFeedBackDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 140
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->showFailureDialog()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x7f060035
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->setContentView(I)V

    .line 42
    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->suggestionEditText:Landroid/widget/EditText;

    .line 43
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$FeedBackTextWatcher;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$FeedBackTextWatcher;-><init>(Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;)V

    .line 44
    .local v0, feedBackTextWatcher:Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$FeedBackTextWatcher;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->suggestionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->emailEditText:Landroid/widget/EditText;

    .line 46
    const v1, 0x7f060034

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->mSpareNumber:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f060035

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->mSendButton:Landroid/widget/Button;

    .line 48
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->updateActivity(I)V

    .line 51
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->finish()V

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    sput-boolean v4, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 195
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 196
    .local v0, lAvailableFlash:J
    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 197
    const/4 v2, 0x1

    sput-boolean v2, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 198
    const v2, 0x7f09009e

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 199
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->finish()V

    .line 202
    :cond_0
    return-void
.end method

.method public updateActivity(I)V
    .locals 6
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->mSpareNumber:Landroid/widget/TextView;

    const v1, 0x7f0900f3

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    if-lez p1, :cond_0

    .line 183
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
