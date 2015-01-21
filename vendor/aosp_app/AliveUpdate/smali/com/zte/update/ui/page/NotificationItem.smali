.class public Lcom/zte/update/ui/page/NotificationItem;
.super Lcom/zte/update/ui/page/BaseLinearLayout;
.source "NotificationItem.java"


# instance fields
.field protected appIconImg:Landroid/widget/ImageView;

.field protected appLable:Landroid/widget/TextView;

.field protected appVersionName:Landroid/widget/TextView;

.field protected mainKey:Ljava/lang/Object;

.field protected optBtn:Landroid/widget/ImageButton;

.field protected requestInfo:Lcom/zte/update/data/RequestAppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "mainKey"

    .prologue
    .line 34
    const v0, 0x7f030010

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/page/BaseLinearLayout;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p2, p0, Lcom/zte/update/ui/page/NotificationItem;->mainKey:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p2}, Lcom/zte/update/ui/page/NotificationItem;->getRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    .line 38
    invoke-direct {p0}, Lcom/zte/update/ui/page/NotificationItem;->initViews()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mainkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem;->appIconImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/update/ui/page/NotificationItem;->appLable:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/update/ui/page/NotificationItem;->initAppIconAndLable(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 41
    invoke-direct {p0}, Lcom/zte/update/ui/page/NotificationItem;->initVerionName()V

    .line 43
    invoke-direct {p0}, Lcom/zte/update/ui/page/NotificationItem;->initStatus()V

    .line 44
    return-void
.end method

.method private initStatus()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/RequestAppInfo;->getNotificationType()I

    move-result v0

    .line 49
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem;->optBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem;->optBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/update/ui/page/NotificationItem$1;

    invoke-direct {v2, p0}, Lcom/zte/update/ui/page/NotificationItem$1;-><init>(Lcom/zte/update/ui/page/NotificationItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem;->optBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private initVerionName()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem;->mContext:Landroid/content/Context;

    const v2, 0x7f060055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, currentVersionName:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/update/ui/page/NotificationItem;->appVersionName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/update/ui/page/NotificationItem;->requestInfo:Lcom/zte/update/data/RequestAppInfo;

    invoke-virtual {v3}, Lcom/zte/update/data/RequestAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 89
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/NotificationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/update/ui/page/NotificationItem;->appIconImg:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/NotificationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/NotificationItem;->appLable:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/NotificationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/NotificationItem;->appVersionName:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/NotificationItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/zte/update/ui/page/NotificationItem;->optBtn:Landroid/widget/ImageButton;

    .line 95
    return-void
.end method


# virtual methods
.method protected getRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;
    .locals 2
    .parameter "mainKey"

    .prologue
    .line 83
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/update/data/DataManager;->loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    .line 84
    .local v0, requestInfo:Lcom/zte/update/data/RequestAppInfo;
    return-object v0
.end method
