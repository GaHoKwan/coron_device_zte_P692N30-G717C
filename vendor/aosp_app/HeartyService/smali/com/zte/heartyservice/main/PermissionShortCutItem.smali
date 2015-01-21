.class public Lcom/zte/heartyservice/main/PermissionShortCutItem;
.super Lcom/zte/heartyservice/main/ShortCutItem;
.source "PermissionShortCutItem.java"


# instance fields
.field public notice1Bg:Landroid/view/View;

.field public notice1Count:Landroid/widget/TextView;

.field public notice2Bg:Landroid/view/View;

.field public notice2Count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/heartyservice/main/ShortCutItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "bg1"
    .parameter "bg2"
    .parameter "txt1"
    .parameter "txt2"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/heartyservice/main/PermissionShortCutItem;->notice1Bg:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/main/PermissionShortCutItem;->notice1Bg:Landroid/view/View;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    return-void
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/main/PermissionShortCutItem;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "notification_extra"

    invoke-virtual {p0}, Lcom/zte/heartyservice/main/PermissionShortCutItem;->getNoticeProvider()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getNewAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    return-object v0
.end method

.method public updateNotice()V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/PermissionShortCutItem;->getNoticeProvider()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getPermissionCount()I

    move-result v0

    .line 32
    .local v0, count:I
    if-lez v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/zte/heartyservice/main/PermissionShortCutItem;->notice1Bg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/main/PermissionShortCutItem;->notice1Bg:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
