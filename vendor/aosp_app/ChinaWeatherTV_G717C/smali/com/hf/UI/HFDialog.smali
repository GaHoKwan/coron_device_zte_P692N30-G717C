.class public Lcom/hf/UI/HFDialog;
.super Landroid/app/Dialog;
.source "HFDialog.java"


# static fields
.field public static final CHECK_BOX:I = 0x6

.field public static final EDIT:I = 0x5

.field public static final LIST:I = 0x2

.field public static final NO_BUTTON:I = 0x3

.field public static final NO_TITLE:I = 0x1

.field public static final PROGRESS:I = 0x4


# instance fields
.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentView:Landroid/widget/TextView;

.field private mEditText:Landroid/widget/EditText;

.field private mIcon:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mNegativeButton:Landroid/widget/Button;

.field private mNeutralButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/high16 v0, 0x7f0c

    invoke-direct {p0, p1, v0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mRootView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->setContentView(Landroid/view/View;)V

    .line 51
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 52
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mIcon:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 55
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mListView:Landroid/widget/ListView;

    .line 56
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mNegativeButton:Landroid/widget/Button;

    .line 58
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mNeutralButton:Landroid/widget/Button;

    .line 59
    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mPositiveButton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 61
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mEditText:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 63
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    .line 64
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setCheckText(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(I)V

    .line 118
    return-void
.end method

.method public setCheckText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .parameter "contentId"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public setContentPaddingBottomPlus(I)V
    .locals 5
    .parameter "bottom"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "negativeId"
    .parameter "listener"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setNeutralButton(ILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "neutralId"
    .parameter "listener"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 168
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "positiveId"
    .parameter "listener"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 182
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public varargs setStyle([I)V
    .locals 6
    .parameter "style"

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x8

    .line 71
    array-length v3, p1

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    .line 101
    return-void

    .line 71
    :cond_0
    aget v0, p1, v1

    .line 72
    .local v0, item:I
    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 77
    :pswitch_1
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 78
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 81
    :pswitch_2
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 84
    :pswitch_3
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 89
    :pswitch_4
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 90
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 94
    :pswitch_5
    iget-object v4, p0, Lcom/hf/UI/HFDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSummary(I)V
    .locals 2
    .parameter "stringId"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public setSummaryGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method public setTitleGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 262
    return-void
.end method

.method public setTitlePaddingBottom(I)V
    .locals 4
    .parameter "bottom"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/hf/UI/HFDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 219
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 297
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 298
    invoke-virtual {p0}, Lcom/hf/UI/HFDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 299
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/hf/UI/HFDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3feeb851eb851eb8L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 300
    invoke-virtual {p0}, Lcom/hf/UI/HFDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v1

    goto :goto_0

    .line 301
    :catch_1
    move-exception v1

    goto :goto_0
.end method
