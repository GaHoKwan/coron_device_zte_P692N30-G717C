.class public Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipOnClickListener"
.end annotation


# instance fields
.field private final mAddVipIcon:Landroid/graphics/drawable/Drawable;

.field private mAddVipRunnable:Ljava/lang/Runnable;

.field public mBadge:Landroid/widget/ImageView;

.field private final mBlack:I

.field private mClicked:Z

.field public mContactStatusState:I

.field public mContext:Landroid/content/Context;

.field public mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

.field public mPopup:Landroid/widget/PopupWindow;

.field private final mPopupHeight:I

.field public mQuickContactLookupUri:Landroid/net/Uri;

.field private final mRemoveVipIcon:Landroid/graphics/drawable/Drawable;

.field private mRemoveVipRunnable:Ljava/lang/Runnable;

.field private mSenderClickListener:Landroid/view/View$OnClickListener;

.field public mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

.field private mVipButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mVipViewPadding:I

.field private final mWhite:I


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/widget/PopupWindow;)V
    .locals 2
    .parameter "fragment"
    .parameter "popupWindow"

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;

    invoke-direct {v1, p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$1;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V

    iput-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mAddVipRunnable:Ljava/lang/Runnable;

    .line 501
    new-instance v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$2;

    invoke-direct {v1, p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$2;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V

    iput-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mRemoveVipRunnable:Ljava/lang/Runnable;

    .line 510
    new-instance v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;

    invoke-direct {v1, p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V

    iput-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mVipButtonClickListener:Landroid/view/View$OnClickListener;

    .line 535
    new-instance v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$4;

    invoke-direct {v1, p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$4;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V

    iput-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mSenderClickListener:Landroid/view/View$OnClickListener;

    .line 545
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 546
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    .line 547
    iput-object p2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    .line 549
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 550
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mVipViewPadding:I

    .line 551
    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopupHeight:I

    .line 552
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mWhite:I

    .line 553
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBlack:I

    .line 554
    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mAddVipIcon:Landroid/graphics/drawable/Drawable;

    .line 555
    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mRemoveVipIcon:Landroid/graphics/drawable/Drawable;

    .line 556
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mRemoveVipRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mAddVipRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    iget v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBlack:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    iget v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mVipViewPadding:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 466
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->setVipViewState(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;IZI)V

    return-void
.end method

.method private initContactStatusViews()V
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContactStatusState:I

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mQuickContactLookupUri:Landroid/net/Uri;

    .line 698
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->showDefaultQuickContactBadgeImage()V

    .line 699
    return-void
.end method

.method private setVipViewState(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;IZI)V
    .locals 1
    .parameter "context"
    .parameter "vipView"
    .parameter "color"
    .parameter "selected"
    .parameter "padding"

    .prologue
    .line 687
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 688
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 689
    invoke-virtual {p2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->getAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->getSpannableString(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;Z)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    if-eqz p4, :cond_0

    const v0, 0x7f02000f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 692
    invoke-virtual {p2, p5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->setPadding(I)V

    .line 693
    return-void

    .line 690
    :cond_0
    const v0, 0x7f02000d

    goto :goto_0
.end method

.method private showDefaultQuickContactBadgeImage()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    :cond_0
    return-void
.end method


# virtual methods
.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mClicked:Z

    if-eqz v1, :cond_0

    .line 683
    :goto_0
    return-void

    .line 571
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mClicked:Z

    move-object/from16 v3, p1

    .line 573
    check-cast v3, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;

    .line 574
    .local v3, vipView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;
    invoke-virtual {v3}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->getAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    if-nez v1, :cond_1

    .line 576
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mClicked:Z

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 581
    .local v11, list:Landroid/content/res/ColorStateList;
    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mWhite:I

    if-ne v1, v2, :cond_4

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBlack:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mVipViewPadding:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->setVipViewState(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;IZI)V

    .line 587
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    .line 588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v8

    .line 589
    .local v8, contentView:Landroid/view/View;
    const v1, 0x7f0f00f8

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 590
    .local v16, sendercontainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mSenderClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    const v1, 0x7f0f00f7

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    .line 592
    const v1, 0x7f0f00f9

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 593
    .local v15, personalView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const v1, 0x7f0f00fa

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    .line 596
    .local v7, addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;
    new-instance v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v7}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$5;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;)V

    invoke-virtual {v7, v1}, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->setOnDrawnListener(Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;)V

    .line 622
    const v1, 0x7f0f00fb

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 623
    .local v10, imageButton:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    iget-boolean v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mRemoveVipIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mVipButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$6;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 638
    const/4 v1, 0x2

    new-array v14, v1, [I

    .line 639
    .local v14, location:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 640
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 641
    .local v9, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 642
    const/4 v1, 0x1

    aget v1, v14, v1

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_7

    .line 643
    invoke-static {}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->access$600()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->access$700()I

    move-result v2

    const/4 v4, 0x0

    aget v4, v14, v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 658
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    if-eqz v1, :cond_3

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v13

    .line 660
    .local v13, loaderManager:Landroid/app/LoaderManager;
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v12

    .line 661
    .local v12, loader:Landroid/content/Loader;
    if-eqz v12, :cond_2

    .line 662
    invoke-virtual {v12}, Landroid/content/Loader;->cancelLoad()Z

    .line 664
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v3}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->getAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v4, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V

    invoke-virtual {v13, v1, v2, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 669
    .end local v12           #loader:Landroid/content/Loader;
    .end local v13           #loaderManager:Landroid/app/LoaderManager;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->initContactStatusViews()V

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$7;-><init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 584
    .end local v7           #addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;
    .end local v8           #contentView:Landroid/view/View;
    .end local v9           #displayFrame:Landroid/graphics/Rect;
    .end local v10           #imageButton:Landroid/widget/ImageButton;
    .end local v14           #location:[I
    .end local v15           #personalView:Landroid/widget/TextView;
    .end local v16           #sendercontainer:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mWhite:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mVipViewPadding:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->setVipViewState(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;IZI)V

    goto/16 :goto_1

    .line 623
    .restart local v7       #addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;
    .restart local v8       #contentView:Landroid/view/View;
    .restart local v10       #imageButton:Landroid/widget/ImageButton;
    .restart local v15       #personalView:Landroid/widget/TextView;
    .restart local v16       #sendercontainer:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mAddVipIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 647
    .restart local v9       #displayFrame:Landroid/graphics/Rect;
    .restart local v14       #location:[I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget v5, v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 650
    :cond_7
    invoke-static {}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->access$600()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->access$700()I

    move-result v2

    const/4 v4, 0x0

    aget v4, v14, v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    .line 654
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mPopupHeight:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    .line 681
    .end local v7           #addressView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;
    .end local v8           #contentView:Landroid/view/View;
    .end local v9           #displayFrame:Landroid/graphics/Rect;
    .end local v10           #imageButton:Landroid/widget/ImageButton;
    .end local v14           #location:[I
    .end local v15           #personalView:Landroid/widget/TextView;
    .end local v16           #sendercontainer:Landroid/view/View;
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mClicked:Z

    goto/16 :goto_0
.end method

.method public onClickBadge()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 708
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    if-nez v0, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContactStatusState:I

    if-nez v0, :cond_2

    .line 714
    iput v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContactStatusState:I

    goto :goto_0

    .line 717
    :cond_2
    iget v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContactStatusState:I

    if-eq v0, v1, :cond_0

    .line 722
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mQuickContactLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mTempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/UiUtilities;->showContacts(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/android/emailcommon/mail/Address;)V

    goto :goto_0
.end method
