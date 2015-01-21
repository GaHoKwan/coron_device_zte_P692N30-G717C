.class public Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PasswordRecordEditorActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PasswordRecordEditorActivity"

.field public static final TYPE_EDIT:I = 0x1

.field public static final TYPE_NEW:I


# instance fields
.field private mAccountDescription:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mEditorType:I

.field private mNotes:Landroid/widget/EditText;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

.field private mUserName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mEditorType:I

    .line 34
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    .line 35
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    .line 36
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    .line 37
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    .line 40
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 102
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02af

    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkEditTextIsEmpty(Landroid/widget/EditText;Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02b0

    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkEditTextIsEmpty(Landroid/widget/EditText;Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mUserName:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mPassword:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mNotes:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PasswordRecord;->saveToDB()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 132
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->finish()V

    goto/16 :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->finish()V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x7f0e000b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v7, 0x7f03009e

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 51
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "_id"

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 52
    .local v3, id:J
    new-instance v7, Lcom/zte/heartyservice/privacy/PasswordRecord;

    invoke-direct {v7, v3, v4}, Lcom/zte/heartyservice/privacy/PasswordRecord;-><init>(J)V

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    .line 53
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_1

    .line 54
    const/4 v7, 0x0

    iput v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mEditorType:I

    .line 63
    :goto_0
    const v7, 0x7f0e02b9

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    .line 64
    const v7, 0x7f0e02ba

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    .line 65
    const v7, 0x7f0e02bb

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    .line 66
    const v7, 0x7f0e02bc

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    .line 68
    iget v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mEditorType:I

    if-ne v7, v10, :cond_0

    .line 74
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/PasswordRecord;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/PasswordRecord;->mPassword:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/PasswordRecord;->mNotes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, ab:Landroid/app/ActionBar;
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 90
    .local v6, layoutParams:Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 92
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, customView:Landroid/view/View;
    const v7, 0x7f0e000b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v7, 0x7f0e000c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v0, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 97
    return-void

    .line 56
    .end local v0           #ab:Landroid/app/ActionBar;
    .end local v1           #customView:Landroid/view/View;
    .end local v2           #dialogInflater:Landroid/view/LayoutInflater;
    .end local v6           #layoutParams:Landroid/app/ActionBar$LayoutParams;
    :cond_1
    iput v10, p0, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;->mEditorType:I

    goto/16 :goto_0
.end method
