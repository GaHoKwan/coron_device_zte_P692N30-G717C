.class public Lcom/zte/statistics/sdk/AboutModule;
.super Ljava/lang/Object;
.source "AboutModule.java"


# static fields
.field private static instance:Lcom/zte/statistics/sdk/AboutModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/AboutModule;->instance:Lcom/zte/statistics/sdk/AboutModule;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static getInstance()Lcom/zte/statistics/sdk/AboutModule;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zte/statistics/sdk/AboutModule;->instance:Lcom/zte/statistics/sdk/AboutModule;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/zte/statistics/sdk/AboutModule;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/AboutModule;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/AboutModule;->instance:Lcom/zte/statistics/sdk/AboutModule;

    .line 24
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/AboutModule;->instance:Lcom/zte/statistics/sdk/AboutModule;

    return-object v0
.end method


# virtual methods
.method doShow(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 38
    new-instance v0, Lcom/zte/statistics/sdk/AboutModule$1;

    invoke-direct {v0, p0, p1}, Lcom/zte/statistics/sdk/AboutModule$1;-><init>(Lcom/zte/statistics/sdk/AboutModule;Landroid/app/Activity;)V

    .line 46
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    const-string v1, "zte_button_about_okay"

    invoke-static {p1, v1}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    const-string v1, "zte_button_about_okay"

    invoke-static {p1, v1}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zte/statistics/sdk/ViewActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    const-string v1, "module"

    sget-object v2, Lcom/zte/statistics/sdk/ViewActivity$Module;->ABOUT:Lcom/zte/statistics/sdk/ViewActivity$Module;

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/ViewActivity$Module;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method
