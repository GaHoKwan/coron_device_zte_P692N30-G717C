.class final Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;
.super Landroid/app/Dialog;
.source "FeedbackModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/FeedbackModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FeedbackDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$statistics$sdk$FeedbackModule$Trigger:[I


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/statistics/sdk/FeedbackModule;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$statistics$sdk$FeedbackModule$Trigger()[I
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->$SWITCH_TABLE$com$zte$statistics$sdk$FeedbackModule$Trigger:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->values()[Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->forced:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->rating:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->$SWITCH_TABLE$com$zte$statistics$sdk$FeedbackModule$Trigger:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    .line 119
    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 120
    iput-object p2, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)Lcom/zte/statistics/sdk/FeedbackModule;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    return-object v0
.end method


# virtual methods
.method show(Lcom/zte/statistics/sdk/FeedbackModule$Trigger;)V
    .locals 8
    .parameter "reason"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/zte/statistics/sdk/FeedbackModule;->access$3(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "userEnteredEmail"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/FeedbackModule;->access$4(Lcom/zte/statistics/sdk/FeedbackModule;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$5(Lcom/zte/statistics/sdk/FeedbackModule;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->userEmail:Ljava/lang/String;

    #setter for: Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/FeedbackModule;->access$4(Lcom/zte/statistics/sdk/FeedbackModule;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->startingPhone:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$6(Lcom/zte/statistics/sdk/FeedbackModule;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->userPhone:Ljava/lang/String;

    #setter for: Lcom/zte/statistics/sdk/FeedbackModule;->startingPhone:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/FeedbackModule;->access$7(Lcom/zte/statistics/sdk/FeedbackModule;Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v4, "feedback"

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->setContentView(I)V

    .line 137
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    .line 138
    const-string v4, "layout_feedback"

    .line 137
    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 139
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v4, "layout_email"

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 140
    .local v0, linearLayout:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v5, "zte_feedback_text"

    invoke-static {v3, v5}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    #setter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v4, v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$8(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/widget/EditText;)V

    .line 141
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$1;

    invoke-direct {v4, p0, v1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$1;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 153
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 154
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 155
    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v5, "zte_feedback_user_email"

    invoke-static {v3, v5}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    #setter for: Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;
    invoke-static {v4, v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$9(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/widget/EditText;)V

    .line 156
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$2(Lcom/zte/statistics/sdk/FeedbackModule;)Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/statistics/sdk/FeedbackModule;->access$5(Lcom/zte/statistics/sdk/FeedbackModule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setEmail(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$10(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/statistics/sdk/FeedbackModule;->access$5(Lcom/zte/statistics/sdk/FeedbackModule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$10(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;

    iget-object v5, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/zte/statistics/sdk/FeedbackModule;->access$10(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v5

    invoke-direct {v4, p0, v5, v6}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/view/View;Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$10(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;

    invoke-direct {v4, p0, v0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$2;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 173
    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v5, "spare_number"

    invoke-static {v3, v5}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/zte/statistics/sdk/FeedbackModule;->spareView:Landroid/widget/TextView;
    invoke-static {v4, v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$11(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/widget/TextView;)V

    .line 175
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;

    iget-object v5, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v5

    invoke-direct {v4, p0, v5, v6}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;Landroid/view/View;Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$GenericTextWatcher;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    invoke-static {}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->$SWITCH_TABLE$com$zte$statistics$sdk$FeedbackModule$Trigger()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v4, "zte_button_cancel"

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 188
    new-instance v4, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$3;

    invoke-direct {v4, p0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$3;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v4, "zte_button_send"

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 195
    .local v2, send:Landroid/widget/Button;
    new-instance v3, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;

    invoke-direct {v3, p0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$4;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v4, "zte_loggo"

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$5;

    invoke-direct {v4, p0}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog$5;-><init>(Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 218
    return-void

    .line 178
    .end local v2           #send:Landroid/widget/Button;
    :pswitch_0
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v5, "zte_edittext_feedback_message_forced"

    invoke-static {v4, v5}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->this$0:Lcom/zte/statistics/sdk/FeedbackModule;

    #getter for: Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/statistics/sdk/FeedbackModule;->access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->context:Landroid/content/Context;

    const-string v5, "zte_edittext_feedback_message"

    invoke-static {v4, v5}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
