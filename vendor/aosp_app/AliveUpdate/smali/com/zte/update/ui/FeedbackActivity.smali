.class public Lcom/zte/update/ui/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"


# instance fields
.field protected cancelButton:Landroid/widget/Button;

.field protected editText:Landroid/widget/EditText;

.field protected emailEdit:Landroid/widget/EditText;

.field protected sendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInputAndStart()V
    .locals 5

    .prologue
    .line 62
    iget-object v4, p0, Lcom/zte/update/ui/FeedbackActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 63
    .local v1, editTxtAble:Landroid/text/Editable;
    iget-object v4, p0, Lcom/zte/update/ui/FeedbackActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 65
    .local v3, emailTxtAble:Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 66
    iget-object v4, p0, Lcom/zte/update/ui/FeedbackActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, content:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 72
    iget-object v4, p0, Lcom/zte/update/ui/FeedbackActivity;->emailEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, email:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 90
    :goto_2
    return-void

    .line 68
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #content:Ljava/lang/String;
    goto :goto_0

    .line 74
    :cond_1
    const-string v2, ""

    .restart local v2       #email:Ljava/lang/String;
    goto :goto_1

    .line 81
    :cond_2
    new-instance v4, Lcom/zte/update/ui/FeedbackActivity$3;

    invoke-direct {v4, p0, v0, v2}, Lcom/zte/update/ui/FeedbackActivity$3;-><init>(Lcom/zte/update/ui/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zte/update/ui/FeedbackActivity$3;->start()V

    .line 88
    invoke-virtual {p0}, Lcom/zte/update/ui/FeedbackActivity;->finish()V

    goto :goto_2
.end method

.method public initButtonListner()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/update/ui/FeedbackActivity;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/update/ui/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/FeedbackActivity$1;-><init>(Lcom/zte/update/ui/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/zte/update/ui/FeedbackActivity;->sendButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/update/ui/FeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/FeedbackActivity$2;-><init>(Lcom/zte/update/ui/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public initViews()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/update/ui/FeedbackActivity;->cancelButton:Landroid/widget/Button;

    .line 33
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/update/ui/FeedbackActivity;->sendButton:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/update/ui/FeedbackActivity;->editText:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/update/ui/FeedbackActivity;->emailEdit:Landroid/widget/EditText;

    .line 36
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/FeedbackActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/zte/update/ui/FeedbackActivity;->initViews()V

    .line 28
    invoke-virtual {p0}, Lcom/zte/update/ui/FeedbackActivity;->initButtonListner()V

    .line 29
    return-void
.end method

.method protected sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "content"
    .parameter "email"

    .prologue
    .line 95
    :try_start_0
    invoke-static {p1, p2}, Lcom/zte/feedback/sdk/ZTEFeedback;->sendFeedBackDirect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, result:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wss feedback result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
