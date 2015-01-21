.class public Lcom/zte/statistics/sdk/FeedbackModule;
.super Ljava/lang/Object;
.source "FeedbackModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;,
        Lcom/zte/statistics/sdk/FeedbackModule$Trigger;
    }
.end annotation


# static fields
.field private static instance:Lcom/zte/statistics/sdk/FeedbackModule;


# instance fields
.field private dataFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emailText:Landroid/widget/EditText;

.field private feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

.field private feedbackText:Landroid/widget/EditText;

.field private prefs:Landroid/content/SharedPreferences;

.field private spareView:Landroid/widget/TextView;

.field private startingEmail:Ljava/lang/String;

.field private startingPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/FeedbackModule;->instance:Lcom/zte/statistics/sdk/FeedbackModule;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->dataFields:Ljava/util/Map;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->spareView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule;->spareView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$12(Lcom/zte/statistics/sdk/FeedbackModule;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/FeedbackModule;->isSutibleForEmai(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/zte/statistics/sdk/FeedbackModule;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zte/statistics/sdk/FeedbackModule;->submit()V

    return-void
.end method

.method static synthetic access$2(Lcom/zte/statistics/sdk/FeedbackModule;)Lcom/zte/statistics/sdk/offline/FeedbackPayload;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/statistics/sdk/FeedbackModule;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/statistics/sdk/FeedbackModule;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/zte/statistics/sdk/FeedbackModule;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zte/statistics/sdk/FeedbackModule;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->startingPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zte/statistics/sdk/FeedbackModule;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule;->startingPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedbackText:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$9(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zte/statistics/sdk/FeedbackModule;->emailText:Landroid/widget/EditText;

    return-void
.end method

.method static getInstance()Lcom/zte/statistics/sdk/FeedbackModule;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zte/statistics/sdk/FeedbackModule;->instance:Lcom/zte/statistics/sdk/FeedbackModule;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/zte/statistics/sdk/FeedbackModule;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/FeedbackModule;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/FeedbackModule;->instance:Lcom/zte/statistics/sdk/FeedbackModule;

    .line 41
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/FeedbackModule;->instance:Lcom/zte/statistics/sdk/FeedbackModule;

    return-object v0
.end method

.method private isSutibleForEmai(Ljava/lang/String;)Z
    .locals 4
    .parameter "email"

    .prologue
    .line 265
    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 266
    .local v0, check:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 267
    .local v3, regex:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 268
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 269
    .local v1, isMatched:Z
    return v1
.end method

.method private submit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 58
    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule;->dataFields:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule;->dataFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule;->startingEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    invoke-virtual {v3}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "userEnteredEmail"

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    invoke-virtual {v4}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule;->startingPhone:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    invoke-virtual {v3}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "userEnteredEmail"

    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    invoke-virtual {v4}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    :cond_2
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->feedBackPutPayload(Lcom/zte/statistics/sdk/offline/Payload;)V

    .line 76
    return-void

    .line 59
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, key:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    iget-object v2, p0, Lcom/zte/statistics/sdk/FeedbackModule;->dataFields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "record"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "data"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Error setting developer defined custom feedback field"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addDataField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->dataFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public forceShowFeedbackDialog(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 94
    sget-object v0, Lcom/zte/statistics/sdk/FeedbackModule$Trigger;->forced:Lcom/zte/statistics/sdk/FeedbackModule$Trigger;

    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/FeedbackModule;->showFeedbackDialog(Landroid/content/Context;Lcom/zte/statistics/sdk/FeedbackModule$Trigger;)V

    .line 95
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const-string v0, "STATISTICS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->prefs:Landroid/content/SharedPreferences;

    .line 80
    return-void
.end method

.method showFeedbackDialog(Landroid/content/Context;Lcom/zte/statistics/sdk/FeedbackModule$Trigger;)V
    .locals 2
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 83
    new-instance v0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    const-string v1, "feedback"

    invoke-direct {v0, v1}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/statistics/sdk/FeedbackModule;->feedback:Lcom/zte/statistics/sdk/offline/FeedbackPayload;

    .line 84
    new-instance v0, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;

    invoke-direct {v0, p0, p1}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;-><init>(Lcom/zte/statistics/sdk/FeedbackModule;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/zte/statistics/sdk/FeedbackModule$FeedbackDialog;->show(Lcom/zte/statistics/sdk/FeedbackModule$Trigger;)V

    .line 85
    return-void
.end method
