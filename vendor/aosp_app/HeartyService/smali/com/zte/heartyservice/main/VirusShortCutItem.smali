.class public Lcom/zte/heartyservice/main/VirusShortCutItem;
.super Lcom/zte/heartyservice/main/ShortCutItem;
.source "VirusShortCutItem.java"


# instance fields
.field private clicked1:Z

.field mListener:Landroid/view/View$OnClickListener;

.field private notice1Bg:Landroid/view/View;

.field private notice1Count:Landroid/widget/TextView;

.field private notice2Bg:Landroid/view/View;

.field private notice2Count:Landroid/widget/TextView;

.field private virus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/heartyservice/main/ShortCutItem;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->virus:I

    .line 28
    new-instance v0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/VirusShortCutItem$1;-><init>(Lcom/zte/heartyservice/main/VirusShortCutItem;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/VirusShortCutItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->clicked1:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/main/VirusShortCutItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->clicked1:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/VirusShortCutItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/main/VirusShortCutItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/main/VirusShortCutItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->virus:I

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
    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;

    .line 53
    iput-object p3, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public updateNotice()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/VirusShortCutItem;->getNoticeProvider()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getVirusCount()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->virus:I

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->virus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->clicked1:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_0
    iget v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->virus:I

    if-lez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_1
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
