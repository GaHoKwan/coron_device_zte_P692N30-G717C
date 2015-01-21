.class public Lcom/zte/heartyservice/main/PrivacyShortCutItem;
.super Lcom/zte/heartyservice/main/ShortCutItem;
.source "PrivacyShortCutItem.java"


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

    .line 16
    invoke-direct {p0}, Lcom/zte/heartyservice/main/ShortCutItem;-><init>()V

    .line 26
    iput v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->call:I

    .line 27
    iput v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mms:I

    .line 30
    new-instance v0, Lcom/zte/heartyservice/main/PrivacyShortCutItem$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/PrivacyShortCutItem$1;-><init>(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->clicked1:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/main/PrivacyShortCutItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->clicked1:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Bg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mms:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->clicked2:Z

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/main/PrivacyShortCutItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->clicked2:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Bg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/main/PrivacyShortCutItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->call:I

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
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Bg:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Bg:Landroid/view/View;

    .line 68
    iput-object p3, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Count:Landroid/widget/TextView;

    .line 69
    iput-object p4, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Count:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Bg:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Bg:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public updateNotice()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 77
    iput v3, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->call:I

    .line 78
    iput v3, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mms:I

    .line 80
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCallLogNumInPrivacy()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->call:I

    .line 81
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMsgNumInPrivacy()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mms:I

    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->call:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->clicked2:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Count:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_0
    iget v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->call:I

    if-lez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Bg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->clicked1:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Count:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_2
    iget v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->mms:I

    if-lez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Bg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_3
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Count:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice2Bg:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Count:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/main/PrivacyShortCutItem;->notice1Bg:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
