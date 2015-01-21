.class public Lcom/zte/heartyservice/main/ShortCutItem;
.super Ljava/lang/Object;
.source "ShortCutItem.java"


# instance fields
.field public action:Ljava/lang/String;

.field public icon:I

.field public label:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter "bg1"
    .parameter "bg2"
    .parameter "txt1"
    .parameter "txt2"

    .prologue
    .line 47
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 34
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/zte/heartyservice/main/ShortCutItem;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 37
    .local v0, object:Lcom/zte/heartyservice/main/ShortCutItem;
    iget-object v1, p0, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    iget-object v2, v0, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 43
    .end local v0           #object:Lcom/zte/heartyservice/main/ShortCutItem;
    :goto_0
    return v1

    .line 39
    .restart local v0       #object:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_0
    iget-object v1, v0, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 40
    const/4 v1, 0x1

    goto :goto_0

    .line 43
    .end local v0           #object:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public getNoticeProvider()Lcom/zte/heartyservice/indicator/NoticeProvider;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v0

    return-object v0
.end method

.method public updateNotice()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
