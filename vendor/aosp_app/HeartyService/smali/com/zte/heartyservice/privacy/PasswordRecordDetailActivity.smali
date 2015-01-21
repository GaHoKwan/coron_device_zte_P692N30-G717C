.class public Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PasswordRecordDetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PasswordRecordDetailActivity"


# instance fields
.field private mAccountDescription:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mNotes:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

.field private mUserName:Landroid/widget/TextView;

.field private mpwrId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mpwrId:J

    .line 29
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mAccountDescription:Landroid/widget/TextView;

    .line 30
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mUserName:Landroid/widget/TextView;

    .line 31
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPassword:Landroid/widget/TextView;

    .line 32
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mNotes:Landroid/widget/TextView;

    .line 33
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)Lcom/zte/heartyservice/privacy/PasswordRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 107
    const-string v2, "PasswordRecordDetailActivity"

    const-string v3, "optionsItemSelectedHandler unexpected!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 91
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "_id"

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-wide v3, v3, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->showDeletePasswordRecordDialog()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x7f0e040c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showDeletePasswordRecordDialog()V
    .locals 7

    .prologue
    .line 114
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 115
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0221

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, infoDelFormatt:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v6, v6, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, infoDelText:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0226

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a021e

    new-instance v6, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;-><init>(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0174

    new-instance v6, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$1;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$1;-><init>(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 146
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 147
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f03009d

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->setContentView(I)V

    .line 41
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mpwrId:J

    .line 46
    const v1, 0x7f0a02ad

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 51
    const v1, 0x7f0e02b9

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mAccountDescription:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0e02ba

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mUserName:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0e02bb

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPassword:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0e02bc

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mNotes:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onResume()V

    .line 61
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-wide v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mpwrId:J

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordRecord;-><init>(J)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mAccountDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPassword:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mNotes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mNotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
