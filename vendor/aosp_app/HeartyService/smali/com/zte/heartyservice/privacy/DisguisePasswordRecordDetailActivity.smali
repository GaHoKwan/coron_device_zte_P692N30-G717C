.class public Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "DisguisePasswordRecordDetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisguisePasswordRecordDetailActivity"


# instance fields
.field private mAccountDescription:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

.field private mNotes:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private mUserName:Landroid/widget/TextView;

.field private mpwrId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mpwrId:J

    .line 31
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mAccountDescription:Landroid/widget/TextView;

    .line 32
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mUserName:Landroid/widget/TextView;

    .line 33
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mPassword:Landroid/widget/TextView;

    .line 34
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mNotes:Landroid/widget/TextView;

    .line 35
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 100
    const-string v2, "DisguisePasswordRecordDetailActivity"

    const-string v3, "optionsItemSelectedHandler unexpected!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 87
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "_id"

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-wide v3, v3, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->showDeletePasswordRecordDialog()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e040c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showDeletePasswordRecordDialog()V
    .locals 7

    .prologue
    .line 107
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0221

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, infoDelFormatt:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v6, v6, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, infoDelText:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0226

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a021e

    new-instance v6, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;-><init>(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0174

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 134
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f03009d

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->setContentView(I)V

    .line 43
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mpwrId:J

    .line 48
    const v1, 0x7f0a02ad

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 53
    const v1, 0x7f0e02b9

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mAccountDescription:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0e02ba

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mUserName:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0e02bb

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mPassword:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0e02bc

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mNotes:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 63
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-wide v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mpwrId:J

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;-><init>(J)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    .line 67
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mAccountDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mPassword:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mNotes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
