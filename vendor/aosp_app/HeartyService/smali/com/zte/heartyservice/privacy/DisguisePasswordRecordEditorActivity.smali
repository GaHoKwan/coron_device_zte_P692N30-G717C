.class public Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "DisguisePasswordRecordEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisguisePasswordRecordEditorActivity"

.field public static final TYPE_EDIT:I = 0x1

.field public static final TYPE_NEW:I


# instance fields
.field private mAccountDescription:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

.field private mEditorType:I

.field private mNotes:Landroid/widget/EditText;

.field private mPassword:Landroid/widget/EditText;

.field private mUserName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mEditorType:I

    .line 28
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    .line 29
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    .line 30
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    .line 31
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    .line 34
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 95
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02af

    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkEditTextIsEmpty(Landroid/widget/EditText;Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02b0

    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkEditTextIsEmpty(Landroid/widget/EditText;Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->user_name:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->password:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->notes:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->saveToDB()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 125
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->finish()V

    goto/16 :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->finish()V

    goto/16 :goto_0

    .line 95
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

    .line 40
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v7, 0x7f03009e

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->setContentView(I)V

    .line 42
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 45
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "_id"

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 46
    .local v3, id:J
    new-instance v7, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    invoke-direct {v7, v3, v4}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;-><init>(J)V

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    .line 47
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_1

    .line 48
    const/4 v7, 0x0

    iput v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mEditorType:I

    .line 57
    :goto_0
    const v7, 0x7f0e02b9

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    .line 58
    const v7, 0x7f0e02ba

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    .line 59
    const v7, 0x7f0e02bb

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    .line 60
    const v7, 0x7f0e02bc

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    .line 62
    iget v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mEditorType:I

    if-ne v7, v10, :cond_0

    .line 68
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mAccountDescription:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mUserName:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->user_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->password:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mNotes:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    iget-object v8, v8, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->notes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, ab:Landroid/app/ActionBar;
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 84
    .local v6, layoutParams:Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 85
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 86
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, customView:Landroid/view/View;
    const v7, 0x7f0e000b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v7, 0x7f0e000c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v0, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 90
    return-void

    .line 50
    .end local v0           #ab:Landroid/app/ActionBar;
    .end local v1           #customView:Landroid/view/View;
    .end local v2           #dialogInflater:Landroid/view/LayoutInflater;
    .end local v6           #layoutParams:Landroid/app/ActionBar$LayoutParams;
    :cond_1
    iput v10, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordEditorActivity;->mEditorType:I

    goto/16 :goto_0
.end method
