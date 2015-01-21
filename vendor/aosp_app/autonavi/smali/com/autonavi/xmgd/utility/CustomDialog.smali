.class public Lcom/autonavi/xmgd/utility/CustomDialog;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DIALOG_TYPE_CUSTOM_VIEW:I = 0x3

.field public static final DIALOG_TYPE_LISTVIEW:I = 0x1

.field public static final DIALOG_TYPE_PROGRESSBAR:I = 0x2

.field public static final DIALOG_TYPE_TEXT:I = 0x0

.field private static final LINE_HEIGHT:I = 0x31

.field public static final LISTVIEW_CHECKBOX:I = 0x3

.field private static final LISTVIEW_HORIZONTAL_MOST_LINE_NUM:I = 0x3

.field public static final LISTVIEW_ONLY:I = 0x1

.field public static final LISTVIEW_RADIO:I = 0x2

.field private static final LISTVIEW_VERTICAL_MOST_LINE_NUM:I = 0x7

.field private static final TEXT_HORIZONTAL_MOST_LINE_NUM:I = 0x6

.field private static final TEXT_VERTICAL_MOST_LINE_NUM:I = 0xa

.field private static mListViewContent:[Ljava/lang/String;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnCancelText:Ljava/lang/String;

.field private btnMid:Landroid/widget/Button;

.field private btnMidText:Ljava/lang/String;

.field private btnSure:Landroid/widget/Button;

.field private btnSureText:Ljava/lang/String;

.field private cancelable:Z

.field private contentListView:Landroid/widget/ListView;

.field private contentTextView:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private defaultSelectedStatus:[Z

.field private height:I

.field private mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

.field private mCustomView:Landroid/widget/LinearLayout;

.field private mCustomViewHeight:I

.field private mCustomViewWidth:I

.field private mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

.field private mDialogType:I

.field private mInitWhichIsChose:I

.field private mListViewType:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarContent:Ljava/lang/CharSequence;

.field private mProgressBarDrawableId:I

.field private mProgressBarTextView:Landroid/widget/TextView;

.field private mPushCustomView:Landroid/view/View;

.field private mSignBtnSingleOrDouble:Z

.field private mSignBtnVisibility:Z

.field private mSignRightBtnVisibility:Z

.field private mSignTitleVisibility:Z

.field private mTextContent:Ljava/lang/CharSequence;

.field private mTitleDrawableId:I

.field private mTitleImageView:Landroid/widget/ImageView;

.field private mTitleName:Ljava/lang/CharSequence;

.field private mTitleNameId:I

.field private mTitleRightBtn:Landroid/widget/ImageButton;

.field private mTitleRightBtnBgID:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleTextViewGravity:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewContent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewType:I

    iput-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancelText:Ljava/lang/String;

    iput-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSureText:Ljava/lang/String;

    iput-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMidText:Ljava/lang/String;

    iput v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextViewGravity:I

    iput v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtnBgID:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignRightBtnVisibility:Z

    iput v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomViewWidth:I

    iput v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomViewHeight:I

    iput-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleName:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleDrawableId:I

    iput-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarContent:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarDrawableId:I

    iput-boolean v3, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignTitleVisibility:Z

    iput-boolean v3, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnVisibility:Z

    iput-boolean v3, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnSingleOrDouble:Z

    iput v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mInitWhichIsChose:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->cancelable:Z

    iput v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->width:I

    iput v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->context:Landroid/content/Context;

    iput p2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    iput-object p3, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/utility/CustomDialog;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    return v0
.end method

.method static synthetic access$102(Lcom/autonavi/xmgd/utility/CustomDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->cancelable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/utility/CustomDialog;)Lcom/autonavi/xmgd/utility/DialogListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/utility/CustomDialog;I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/utility/CustomDialog;->getSelected(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/utility/CustomDialog;)Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    return-object v0
.end method

.method private createView()V
    .locals 9

    const-wide v7, 0x3fe6666666666666L

    const/16 v2, 0x8

    const/4 v6, -0x1

    const/16 v3, 0x31

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignRightBtnVisibility:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtnBgID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtn:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtnBgID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignTitleVisibility:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnVisibility:Z

    if-nez v1, :cond_b

    const v1, 0x7f020173

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnVisibility:Z

    if-eqz v0, :cond_d

    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancelText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSure:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSureText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSureText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnSingleOrDouble:Z

    if-nez v0, :cond_5

    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMid:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMidText:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMid:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMidText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMid:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMid:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSure:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignTitleVisibility:Z

    if-eqz v0, :cond_f

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleImageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleDrawableId:I

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_6
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleName:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleNameId:I

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextViewGravity:I

    if-eq v0, v6, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextViewGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_8
    :goto_3
    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    if-nez v0, :cond_11

    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->width:I

    if-gt v0, v1, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTextContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_5
    return-void

    :cond_b
    iget-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignTitleVisibility:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnVisibility:Z

    if-eqz v1, :cond_c

    const v1, 0x7f020176

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_c
    iget-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignTitleVisibility:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnVisibility:Z

    if-nez v1, :cond_1

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleNameId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_f
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    :cond_10
    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->width:I

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    :cond_11
    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    iget v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->width:I

    if-gt v1, v2, :cond_17

    sget-object v1, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewContent:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_16

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    if-gt v1, v2, :cond_15

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->defaultSelectedStatus:[Z

    if-eqz v0, :cond_13

    const-string v0, "tar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultSelectedStatus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->defaultSelectedStatus:[Z

    aget-boolean v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    defaultSelectedStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->defaultSelectedStatus:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance v0, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->context:Landroid/content/Context;

    sget-object v2, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewContent:[Ljava/lang/String;

    iget v3, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewType:I

    iget-object v4, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->defaultSelectedStatus:[Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Z)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mInitWhichIsChose:I

    if-eq v0, v6, :cond_14

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mInitWhichIsChose:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->setInitWhichIsSelected(I)V

    :cond_14
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentListView:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/utility/CustomDialog$2;-><init>(Lcom/autonavi/xmgd/utility/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_5

    :cond_15
    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    int-to-double v1, v1

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    :cond_16
    sget-object v1, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewContent:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->dip2px(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    :cond_17
    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    iget v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->width:I

    if-le v1, v2, :cond_12

    sget-object v1, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewContent:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_19

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    if-gt v1, v2, :cond_18

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    :cond_18
    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    int-to-double v1, v1

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    :cond_19
    sget-object v1, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewContent:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->dip2px(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    :cond_1a
    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarDrawableId:I

    if-eq v0, v6, :cond_1b

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarDrawableId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1c
    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomView:Landroid/widget/LinearLayout;

    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomViewHeight:I

    if-eq v1, v6, :cond_1d

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1d
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mPushCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1e
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->context:Landroid/content/Context;

    const-string v1, "\u5bf9\u8bdd\u6846\u6ca1\u6709\u5185\u5bb9"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5
.end method

.method private dip2px(I)I
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getSelected(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->geListArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->geListArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->geListArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private init()V
    .locals 5

    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->height:I

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/utility/CustomDialog$1;-><init>(Lcom/autonavi/xmgd/utility/CustomDialog;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onCancelClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onDismiss()V

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListView()V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListArray()V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->getWitchRadioButton()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onSureClicked(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onDismiss()V

    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListView()V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListArray()V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->getSelected(I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogType:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListView()V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->initListArray()V

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onDismiss()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomDialogInterface:Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;->onTitleRightBtnClicked()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0c001d -> :sswitch_3
        0x7f0c0027 -> :sswitch_0
        0x7f0c0028 -> :sswitch_2
        0x7f0c0029 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/CustomDialog;->init()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/CustomDialog;->createView()V

    return-void
.end method

.method public setBtnCancelText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancelText:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBtnMidText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMidText:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMid:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnMid:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBtnSureText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSureText:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSure:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->btnSure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setButtonVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnVisibility:Z

    return-void
.end method

.method public setCustomViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomViewHeight:I

    return-void
.end method

.method public setCustomViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomViewWidth:I

    return-void
.end method

.method public setDefaultSelectedStatus([Z)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->defaultSelectedStatus:[Z

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->setdefaultSelectedStatus([Z)V

    :cond_0
    return-void
.end method

.method public setInitWhichIsChose(I)V
    .locals 3

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mInitWhichIsChose:I

    const-string v0, "tar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitWhichIsChose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    if-eqz v0, :cond_0

    const-string v0, "tar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialogListViewAdapter!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mDialogListViewAdapter:Lcom/autonavi/xmgd/utility/DialogListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/utility/DialogListViewAdapter;->setInitWhichIsSelected(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "tar"

    const-string v1, "mDialogListViewAdapter=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setListViewContent([Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewContent:[Ljava/lang/String;

    return-void
.end method

.method public setListViewType(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mListViewType:I

    return-void
.end method

.method public setProgressBarContent(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarContent:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgressBarDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mProgressBarDrawableId:I

    return-void
.end method

.method public setPushCustomView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mPushCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mCustomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSignBtnSingleOrDouble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignBtnSingleOrDouble:Z

    return-void
.end method

.method public setSignRightBtnVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignRightBtnVisibility:Z

    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTextContent:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->contentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTextContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleNameId:I

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setTitleDrawableId(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleDrawableId:I

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTitleName(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleName:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleName(Ljava/lang/CharSequence;I)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleName:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextViewGravity:I

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleTextViewGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setTitleRightButtonBackGround(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtnBgID:I

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mTitleRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTitleVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/utility/CustomDialog;->mSignTitleVisibility:Z

    return-void
.end method
