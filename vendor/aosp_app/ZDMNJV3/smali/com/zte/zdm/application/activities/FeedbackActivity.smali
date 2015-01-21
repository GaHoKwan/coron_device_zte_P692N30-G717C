.class public Lcom/zte/zdm/application/activities/FeedbackActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/zte/zdm/application/activities/bg;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/bg;-><init>(Lcom/zte/zdm/application/activities/FeedbackActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/activities/bh;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/activities/bh;-><init>(Lcom/zte/zdm/application/activities/FeedbackActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/activities/FeedbackActivity;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->g:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Lcom/zte/zdm/application/activities/FeedbackActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/activities/FeedbackActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/activities/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->g:Landroid/app/Activity;

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->setContentView(I)V

    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/FeedbackActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
