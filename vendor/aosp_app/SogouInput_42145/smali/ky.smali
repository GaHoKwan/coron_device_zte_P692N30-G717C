.class public Lky;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Intent;

.field private a:Landroid/view/LayoutInflater;

.field public a:Landroid/view/View;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

.field private a:Ljava/lang/String;

.field private a:Llc;

.field private a:Lld;

.field private a:Ln;

.field private a:Z

.field private b:I

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Llc;

.field private final c:I

.field private c:Landroid/widget/LinearLayout;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x92

    iput v0, p0, Lky;->b:I

    .line 36
    const/16 v0, 0x2c

    iput v0, p0, Lky;->c:I

    .line 51
    iput-object p1, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 52
    iput-object p2, p0, Lky;->a:Landroid/content/Intent;

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lky;->a:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method

.method private a(Ln;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lle;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ln;Ljava/lang/String;Landroid/os/Handler;)Lld;

    move-result-object v0

    iput-object v0, p0, Lky;->a:Lld;

    .line 151
    iget-object v0, p0, Lky;->a:Lld;

    invoke-virtual {v0}, Lld;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lky;->a:Landroid/widget/ImageView;

    iget v2, p0, Lky;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v1, p0, Lky;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lky;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->c:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lky;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lky;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-boolean v0, p0, Lky;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lky;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lky;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    const/high16 v1, 0x4100

    iget-object v2, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 160
    :cond_0
    new-instance v0, Llc;

    iget-object v1, p0, Lky;->a:Lld;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llc;-><init>(Lld;I)V

    iput-object v0, p0, Lky;->a:Llc;

    .line 161
    new-instance v0, Llc;

    iget-object v1, p0, Lky;->a:Lld;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llc;-><init>(Lld;I)V

    iput-object v0, p0, Lky;->b:Llc;

    .line 162
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    iget-object v1, p0, Lky;->b:Llc;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 58
    iput-object v2, p0, Lky;->a:Landroid/view/View;

    .line 59
    iput-object p1, p0, Lky;->a:Ljava/lang/String;

    .line 60
    iput-boolean p2, p0, Lky;->a:Z

    .line 61
    iget-object v1, p0, Lky;->a:Landroid/view/LayoutInflater;

    if-eqz p2, :cond_1

    const v0, 0x7f030045

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lky;->a:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lky;->a()V

    .line 63
    const-string v0, "PRODUCT_TYPE"

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bH:I

    .line 65
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03bd

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 66
    const v0, 0x7f020113

    iput v0, p0, Lky;->a:I

    .line 67
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b03e9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 105
    :goto_1
    iget-object v0, p0, Lky;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lky;->a:Landroid/content/Intent;

    const-string v1, "SCAN_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    .line 107
    new-instance v0, Ln;

    invoke-virtual {v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()[B

    move-result-object v2

    invoke-virtual {v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()[Lp;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()La;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;J)V

    iput-object v0, p0, Lky;->a:Ln;

    .line 111
    iget-object v0, p0, Lky;->a:Ln;

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lky;->a(Ln;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    return-object v0

    .line 61
    :cond_1
    const v0, 0x7f030046

    goto :goto_0

    .line 69
    :cond_2
    const-string v0, "WIFI_TYPE"

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bC:I

    .line 71
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03bc

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 72
    const v0, 0x7f020118

    iput v0, p0, Lky;->a:I

    .line 73
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b039b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 74
    :cond_3
    const-string v0, "SMS_TYPE"

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bF:I

    .line 76
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03bb

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 77
    const v0, 0x7f020114

    iput v0, p0, Lky;->a:I

    .line 78
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b0399

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 79
    :cond_4
    const-string v0, "EMAIL_TYPE"

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bA:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bA:I

    .line 81
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03b8

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 82
    const v0, 0x7f02010e

    iput v0, p0, Lky;->a:I

    .line 83
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b0395

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 84
    :cond_5
    const-string v0, "CALENDER_TYPE"

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bG:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bG:I

    .line 86
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03be

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 87
    const v0, 0x7f02010c

    iput v0, p0, Lky;->a:I

    .line 88
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b0381

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 89
    :cond_6
    const-string v0, "CONTACT_TYPE"

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bz:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bz:I

    .line 91
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03b7

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 92
    const v0, 0x7f02010d

    iput v0, p0, Lky;->a:I

    .line 93
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b0382

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 94
    :cond_7
    const-string v0, "TEL_TYPE"

    iget-object v1, p0, Lky;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 95
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bE:I

    .line 96
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03b9

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 97
    const v0, 0x7f020115

    iput v0, p0, Lky;->a:I

    .line 98
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 100
    :cond_8
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bD:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bD:I

    .line 101
    iget-object v0, p0, Lky;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    const v1, 0x7f0b03ba

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lky;->b:Ljava/lang/String;

    .line 102
    const v0, 0x7f020116

    iput v0, p0, Lky;->a:I

    .line 103
    iget-object v0, p0, Lky;->a:Landroid/widget/Button;

    const v1, 0x7f0b039a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1
.end method

.method public a()Llc;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lky;->a:Llc;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    const v1, 0x7f07016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lky;->a:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lky;->b:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    const v1, 0x7f07016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lky;->a:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lky;->a:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lky;->b:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    const v1, 0x7f07016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lky;->c:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lky;->a:Landroid/view/View;

    const v1, 0x7f07016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lky;->a:Landroid/widget/Button;

    .line 142
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lky;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    return-void
.end method
