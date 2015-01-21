.class public Lcom/zte/feedback/FeedbackActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;
    }
.end annotation


# static fields
.field private static edit:Landroid/content/SharedPreferences$Editor;

.field private static mFeedbackActivity:Lcom/zte/feedback/FeedbackActivity;

.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private emailText:Landroid/widget/EditText;

.field private feedback:Lcom/zte/feedback/FeedbackPayload;

.field private feedbackText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private spareView:Landroid/widget/TextView;

.field private zte_button_send:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/zte/feedback/FeedbackActivity;->mFeedbackActivity:Lcom/zte/feedback/FeedbackActivity;

    .line 42
    sput-object v0, Lcom/zte/feedback/FeedbackActivity;->preferences:Landroid/content/SharedPreferences;

    .line 43
    sput-object v0, Lcom/zte/feedback/FeedbackActivity;->edit:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    .line 36
    iput-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    .line 37
    iput-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->spareView:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->zte_button_send:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;

    .line 45
    new-instance v0, Lcom/zte/feedback/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/feedback/FeedbackActivity$1;-><init>(Lcom/zte/feedback/FeedbackActivity;)V

    iput-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->zte_button_send:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/feedback/FeedbackActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/feedback/FeedbackActivity;->isSutibleForEmai(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/zte/feedback/FeedbackActivity;->edit:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/feedback/FeedbackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zte/feedback/FeedbackActivity;->submit()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/feedback/FeedbackActivity;)Lcom/zte/feedback/FeedbackPayload;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/zte/feedback/FeedbackActivity;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/zte/feedback/FeedbackActivity;->clearFeedbackText()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/feedback/FeedbackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/feedback/FeedbackActivity;->spareView:Landroid/widget/TextView;

    return-object v0
.end method

.method private static clearFeedbackText()V
    .locals 3

    .prologue
    .line 149
    sget-object v1, Lcom/zte/feedback/FeedbackActivity;->mFeedbackActivity:Lcom/zte/feedback/FeedbackActivity;

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lcom/zte/feedback/FeedbackActivity;->mFeedbackActivity:Lcom/zte/feedback/FeedbackActivity;

    iget-object v1, v1, Lcom/zte/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/zte/feedback/FeedbackActivity;->mFeedbackActivity:Lcom/zte/feedback/FeedbackActivity;

    iget-object v1, v1, Lcom/zte/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_0
    return-void
.end method

.method private isSutibleForEmai(Ljava/lang/String;)Z
    .locals 4
    .parameter "email"

    .prologue
    .line 157
    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 158
    .local v0, check:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 159
    .local v3, regex:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 160
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 161
    .local v1, isMatched:Z
    return v1
.end method

.method private submit()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/zte/feedback/FeedbackActivity$5;

    invoke-direct {v0, p0}, Lcom/zte/feedback/FeedbackActivity$5;-><init>(Lcom/zte/feedback/FeedbackActivity;)V

    invoke-virtual {v0}, Lcom/zte/feedback/FeedbackActivity$5;->start()V

    .line 183
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "arg0"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 60
    sput-object p0, Lcom/zte/feedback/FeedbackActivity;->mFeedbackActivity:Lcom/zte/feedback/FeedbackActivity;

    .line 61
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v4, 0x7f0a043c

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lcom/zte/feedback/FeedbackActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget-object v4, Lcom/zte/feedback/FeedbackActivity;->preferences:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    .line 64
    const-string v4, "feedback"

    invoke-virtual {p0, v4, v9}, Lcom/zte/feedback/FeedbackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lcom/zte/feedback/FeedbackActivity;->preferences:Landroid/content/SharedPreferences;

    .line 65
    sget-object v4, Lcom/zte/feedback/FeedbackActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sput-object v4, Lcom/zte/feedback/FeedbackActivity;->edit:Landroid/content/SharedPreferences$Editor;

    .line 67
    :cond_0
    new-instance v4, Lcom/zte/feedback/FeedbackPayload;

    const-string v5, "638c5fc37ba15bb6636f6c6c65637469"

    invoke-static {p0}, Lcom/zte/heartyservice/update/Config;->getVerCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/zte/feedback/FeedbackPayload;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedback:Lcom/zte/feedback/FeedbackPayload;

    .line 68
    const v4, 0x7f030040

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->setContentView(I)V

    .line 69
    const v4, 0x7f0e00d4

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 70
    .local v3, relativeLayout:Landroid/widget/RelativeLayout;
    const v4, 0x7f0e00d2

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 71
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    const v4, 0x7f0e00d5

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    .line 72
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    new-instance v5, Lcom/zte/feedback/FeedbackActivity$2;

    invoke-direct {v5, p0, v3}, Lcom/zte/feedback/FeedbackActivity$2;-><init>(Lcom/zte/feedback/FeedbackActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    const v4, 0x7f0e00d3

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    .line 83
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    new-instance v5, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;

    iget-object v6, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    invoke-direct {v5, p0, v6, v7}, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;-><init>(Lcom/zte/feedback/FeedbackActivity;Landroid/view/View;Lcom/zte/feedback/FeedbackActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    new-instance v5, Lcom/zte/feedback/FeedbackActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/zte/feedback/FeedbackActivity$3;-><init>(Lcom/zte/feedback/FeedbackActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    new-instance v5, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;

    iget-object v6, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    invoke-direct {v5, p0, v6, v7}, Lcom/zte/feedback/FeedbackActivity$GenericTextWatcher;-><init>(Lcom/zte/feedback/FeedbackActivity;Landroid/view/View;Lcom/zte/feedback/FeedbackActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    const v5, 0x7f0a043d

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 97
    const v4, 0x7f0e00d6

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->spareView:Landroid/widget/TextView;

    .line 98
    const v4, 0x7f0e00d7

    invoke-virtual {p0, v4}, Lcom/zte/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->zte_button_send:Landroid/widget/Button;

    .line 100
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->zte_button_send:Landroid/widget/Button;

    new-instance v5, Lcom/zte/feedback/FeedbackActivity$4;

    invoke-direct {v5, p0}, Lcom/zte/feedback/FeedbackActivity$4;-><init>(Lcom/zte/feedback/FeedbackActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->zte_button_send:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    sget-object v4, Lcom/zte/feedback/FeedbackActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "fdText"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, fdText:Ljava/lang/String;
    sget-object v4, Lcom/zte/feedback/FeedbackActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "emText"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, emText:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 125
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    :cond_2
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 130
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 131
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_3
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->emailText:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 135
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 136
    iget-object v4, p0, Lcom/zte/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onDestroy()V

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/feedback/FeedbackActivity;->mFeedbackActivity:Lcom/zte/feedback/FeedbackActivity;

    .line 146
    return-void
.end method
