.class public Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;
.super Landroid/widget/LinearLayout;
.source "TextToggleButtonView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mImageView:Landroid/widget/ImageView;

.field private mLl:Landroid/widget/LinearLayout;

.field public mTextViewNumbottom:Landroid/widget/TextView;

.field public mTextViewbottom:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->initView()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->initView()V

    .line 33
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 36
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mLl:Landroid/widget/LinearLayout;

    .line 38
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mLl:Landroid/widget/LinearLayout;

    const v2, 0x7f0e010b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mTextViewbottom:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mLl:Landroid/widget/LinearLayout;

    const v2, 0x7f0e010a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mImageView:Landroid/widget/ImageView;

    .line 41
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mTextViewbottom:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 42
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 44
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mLl:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setClickable(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mTextViewbottom:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
