.class public Lcom/ctc/epush/PushDialogActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/ctc/epush/AlwaysMarqueeTextView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/ctc/epush/x;

.field private d:Ljava/util/List;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Ljava/util/List;

.field private o:Landroid/content/Context;

.field private p:Landroid/app/Notification;

.field private q:Landroid/app/NotificationManager;

.field private r:Lcom/ctc/c/n;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->n:Ljava/util/List;

    iput-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->p:Landroid/app/Notification;

    iput-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->q:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->c:Lcom/ctc/epush/x;

    invoke-virtual {v0, v1, v3, v3}, Lcom/ctc/epush/x;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ctc/epush/PushDialogActivity;Landroid/app/Notification;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/PushDialogActivity;->p:Landroid/app/Notification;

    return-void
.end method

.method static synthetic a(Lcom/ctc/epush/PushDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/PushDialogActivity;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ctc/epush/PushDialogActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/PushDialogActivity;->n:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->l:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ctc/epush/PushDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u672c\u5e94\u7528\u6240\u4ea7\u751f\u7684\u6d41\u91cf\u8d39\u7528\u5c06\u6839\u636e\u60a8\u7684\u5957\u9910\u8d44\u8d39\u6807\u51c6\u6536\u53d6,\u786e\u8ba4\u66f4\u65b0\u89c6\u4e3a\u60a8\u540c\u610f\u672c\u670d\u52a1<a href=\"http://phone.189.cn/iface/agreement\">\u300a\u7528\u6237\u8bb8\u53ef\u534f\u8bae\u300b</a>,\u8be6\u8be210000\u3002"

    :goto_0
    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->e:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v0, v3, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v0, v2, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    array-length v3, v1

    :goto_1
    if-lt v2, v3, :cond_2

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "The data flow expense caused by this app will be charged according to your pricing package standard. If you continue to update you will be regarded as accepting this  <a href=\"http://phone.189.cn/iface/agreement\">\uff1cUser License Agreement\uff1e</a>,call 10000 for more details."

    goto :goto_0

    :cond_2
    aget-object v5, v1, v2

    new-instance v6, Lcom/ctc/epush/ab;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/ctc/epush/ab;-><init>(Lcom/ctc/epush/PushDialogActivity;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v8, 0x22

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic c(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const-string v1, "pushAppJson"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->c:Lcom/ctc/epush/x;

    invoke-virtual {v1}, Lcom/ctc/epush/x;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/ctc/a/c;

    invoke-direct {v2}, Lcom/ctc/a/c;-><init>()V

    invoke-virtual {v0}, Lcom/ctc/a/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ctc/a/c;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ctc/a/c;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ctc/a/c;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ctc/a/c;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ctc/a/c;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/ctc/a/c;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const-string v1, "pushAppJson"

    invoke-static {v2}, Lcom/ctc/b/e;->a(Lcom/ctc/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const-string v2, "updatejson"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ctc/epush/PushDialogActivity;->finish()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ctc/epush/w;

    invoke-direct {v1, p0}, Lcom/ctc/epush/w;-><init>(Lcom/ctc/epush/PushDialogActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    goto :goto_1
.end method

.method static synthetic e(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/ctc/epush/PushDialogActivity;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    return-object v0
.end method

.method static synthetic g(Lcom/ctc/epush/PushDialogActivity;)Lcom/ctc/epush/x;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->c:Lcom/ctc/epush/x;

    return-object v0
.end method

.method static synthetic h(Lcom/ctc/epush/PushDialogActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/ctc/epush/PushDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/Notification;
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/ctc/c/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/ctc/c/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ctc/c/g;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/ctc/epush/PushDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u8fa8\u7387: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020002

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/ctc/epush/PushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {p0, v3}, Lcom/ctc/epush/PushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1

    :cond_0
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->q:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic l(Lcom/ctc/epush/PushDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/ctc/epush/PushDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ctc/epush/PushDialogActivity;->c()V

    return-void
.end method

.method static synthetic n(Lcom/ctc/epush/PushDialogActivity;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->p:Landroid/app/Notification;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ctc/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const-string v1, "isOpenWifiSetting"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/ctc/c/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ctc/epush/PushDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/ctc/epush/PushDialogActivity;->c()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/ctc/epush/PushDialogActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushDialogActivity.onActivityResult.Excepction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/ctc/epush/PushDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/ctc/epush/PushDialogActivity;->requestWindowFeature(I)Z

    iput-object p0, p0, Lcom/ctc/epush/PushDialogActivity;->o:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->q:Landroid/app/NotificationManager;

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->setContentView(I)V

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f080036

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ctc/epush/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->a:Lcom/ctc/epush/AlwaysMarqueeTextView;

    const-string v0, ""

    sget-object v1, Lcom/ctc/c/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ctc/c/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->a:Lcom/ctc/epush/AlwaysMarqueeTextView;

    sget-object v1, Lcom/ctc/c/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->a:Lcom/ctc/epush/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/ctc/epush/PushDialogActivity;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    new-instance v0, Lcom/ctc/epush/x;

    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->d:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/ctc/epush/x;-><init>(Lcom/ctc/epush/PushDialogActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->c:Lcom/ctc/epush/x;

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->c:Lcom/ctc/epush/x;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->l:Landroid/widget/Button;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ctc/epush/q;

    invoke-direct {v1, p0}, Lcom/ctc/epush/q;-><init>(Lcom/ctc/epush/PushDialogActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->m:Landroid/widget/Button;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->g:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const-string v2, "isOpenWifiSetting"

    new-array v3, v3, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ctc/epush/r;

    invoke-direct {v1, p0}, Lcom/ctc/epush/r;-><init>(Lcom/ctc/epush/PushDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/ctc/epush/PushDialogActivity;->b()V

    invoke-direct {p0}, Lcom/ctc/epush/PushDialogActivity;->a()V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->q:Landroid/app/NotificationManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/ctc/epush/s;

    invoke-direct {v1, p0}, Lcom/ctc/epush/s;-><init>(Lcom/ctc/epush/PushDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ctc/epush/t;

    invoke-direct {v1, p0}, Lcom/ctc/epush/t;-><init>(Lcom/ctc/epush/PushDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/ctc/epush/u;

    invoke-direct {v1, p0}, Lcom/ctc/epush/u;-><init>(Lcom/ctc/epush/PushDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->m:Landroid/widget/Button;

    new-instance v1, Lcom/ctc/epush/v;

    invoke-direct {v1, p0}, Lcom/ctc/epush/v;-><init>(Lcom/ctc/epush/PushDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->a:Lcom/ctc/epush/AlwaysMarqueeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const-string v2, "APP_UPDATA"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/ctc/epush/PushDialogActivity;->r:Lcom/ctc/c/n;

    const-string v2, "startindex"

    new-array v3, v0, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p0}, Lcom/ctc/epush/PushDialogActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, ""

    sget-object v1, Lcom/ctc/c/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ctc/c/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->a:Lcom/ctc/epush/AlwaysMarqueeTextView;

    sget-object v1, Lcom/ctc/c/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->a:Lcom/ctc/epush/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/ctc/epush/PushDialogActivity;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ctc/epush/PushDialogActivity;->a:Lcom/ctc/epush/AlwaysMarqueeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ctc/epush/AlwaysMarqueeTextView;->setVisibility(I)V

    goto :goto_0
.end method
