.class public Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PrivacyEnterSetting.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mOkBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 31
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setEnterName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->finish()V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e02f4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0300c6

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->setContentView(I)V

    .line 18
    const v0, 0x7f0a042b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 20
    const v0, 0x7f0e02f4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->mOkBtn:Landroid/widget/Button;

    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f0e02f3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->mEditText:Landroid/widget/EditText;

    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getEnterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyEnterSetting;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 26
    return-void
.end method
