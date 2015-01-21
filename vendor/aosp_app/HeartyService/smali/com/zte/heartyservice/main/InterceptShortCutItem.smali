.class public Lcom/zte/heartyservice/main/InterceptShortCutItem;
.super Lcom/zte/heartyservice/main/ShortCutItem;
.source "InterceptShortCutItem.java"


# instance fields
.field private call:I

.field private clicked1:Z

.field private clicked2:Z

.field mListener:Landroid/view/View$OnClickListener;

.field private mms:I

.field private notice1Bg:Landroid/view/View;

.field private notice1Count:Landroid/widget/TextView;

.field private notice2Bg:Landroid/view/View;

.field private notice2Count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/zte/heartyservice/main/ShortCutItem;-><init>()V

    .line 28
    iput v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    .line 29
    iput v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    .line 32
    new-instance v0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;-><init>(Lcom/zte/heartyservice/main/InterceptShortCutItem;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked1:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/main/InterceptShortCutItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked1:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Bg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/main/InterceptShortCutItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked2:Z

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/main/InterceptShortCutItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked2:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Bg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/main/InterceptShortCutItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    return v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "bg1"
    .parameter "bg2"
    .parameter "txt1"
    .parameter "txt2"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Bg:Landroid/view/View;

    .line 69
    iput-object p2, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Bg:Landroid/view/View;

    .line 70
    iput-object p3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;

    .line 71
    iput-object p4, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Bg:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Bg:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    if-lez v1, :cond_1

    .line 123
    const-string v1, "target"

    const-string v2, "intercepted_phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    iget v1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    if-lez v1, :cond_0

    .line 126
    const-string v1, "target"

    const-string v2, "intercepted_msg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public updateNotice()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 79
    iput v6, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    .line 80
    iput v6, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    .line 82
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getInterceptedPhoneAndMsgList()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, interceptList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    if-eqz v1, :cond_2

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    .line 86
    .local v2, result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    iget v3, v2, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    if-nez v3, :cond_1

    .line 87
    iget v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    goto :goto_0

    .line 88
    :cond_1
    iget v3, v2, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 89
    iget v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    goto :goto_0

    .line 94
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-boolean v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked2:Z

    if-eqz v3, :cond_3

    .line 96
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_1
    iget v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I

    if-lez v3, :cond_4

    .line 101
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Bg:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_2
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-boolean v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked1:Z

    if-eqz v3, :cond_5

    .line 108
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_3
    iget v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I

    if-lez v3, :cond_6

    .line 113
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Bg:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_4
    return-void

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 103
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Bg:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 110
    :cond_5
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 115
    :cond_6
    iget-object v3, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Bg:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method
