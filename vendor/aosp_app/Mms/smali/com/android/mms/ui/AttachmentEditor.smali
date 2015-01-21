.class public Lcom/android/mms/ui/AttachmentEditor;
.super Landroid/widget/LinearLayout;
.source "AttachmentEditor.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsComposeHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
    }
.end annotation


# static fields
.field static final MSG_EDIT_SLIDESHOW:I = 0x1

.field static final MSG_PLAY_AUDIO:I = 0x8

.field static final MSG_PLAY_SLIDESHOW:I = 0x3

.field static final MSG_PLAY_VIDEO:I = 0x7

.field static final MSG_REMOVE_ATTACHMENT:I = 0xa

.field static final MSG_REMOVE_EXTERNAL_ATTACHMENT:I = 0xb

.field static final MSG_REMOVE_SLIDES_ATTACHMENT:I = 0xc

.field static final MSG_REPLACE_AUDIO:I = 0x6

.field static final MSG_REPLACE_IMAGE:I = 0x4

.field static final MSG_REPLACE_VIDEO:I = 0x5

.field static final MSG_SEND_SLIDESHOW:I = 0x2

.field static final MSG_VIEW_IMAGE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AttachmentEditor"


# instance fields
.field private mBtnPanel:Landroid/view/View;

.field private mButtonBig:Landroid/widget/ImageButton;

.field private mButtonColors:[I

.field private mButtonDrawable:[Landroid/graphics/drawable/Drawable;

.field private mButtonSlotIds:[I

.field private mButtonSmall:Landroid/widget/ImageButton;

.field private mCanSend:Z

.field private final mContext:Landroid/content/Context;

.field mCtButtonClickListener:Landroid/view/View$OnClickListener;

.field private mFileAttachmentView:Landroid/view/View;

.field private mFlagMini:Z

.field private mHandler:Landroid/os/Handler;

.field private mMediaSize:Landroid/widget/TextView;

.field private mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

.field private mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private mSendButton:Landroid/widget/Button;

.field private mSimCount:I

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mView:Lcom/android/mms/ui/SlideViewInterface;

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private send_sim_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    iput-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 115
    iput-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mFlagMini:Z

    .line 747
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/AttachmentEditor;->send_sim_id:I

    .line 777
    new-instance v0, Lcom/android/mms/ui/AttachmentEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentEditor$1;-><init>(Lcom/android/mms/ui/AttachmentEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    .line 124
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->initPlugin(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/AttachmentEditor;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/AttachmentEditor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AttachmentEditor;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/AttachmentEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/mms/ui/AttachmentEditor;->send_sim_id:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/AttachmentEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/mms/ui/AttachmentEditor;->send_sim_id:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/AttachmentEditor;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private checkFileAttacment(Lcom/android/mms/data/WorkingMessage;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 898
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasMediaAttachments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->removeAllFileAttaches()V

    .line 901
    :cond_0
    return-void
.end method

.method private createFileAttachmentView(Lcom/android/mms/data/WorkingMessage;)Landroid/view/View;
    .locals 23
    .parameter "msg"

    .prologue
    .line 489
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportVCardPreview()Z

    move-result v8

    .line 490
    .local v8, isCtFeature:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v4

    .line 494
    .local v4, attachFiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/FileAttachmentModel;>;"
    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 496
    .local v9, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-nez v4, :cond_0

    .line 497
    const-string v18, "AttachmentEditor"

    const-string v19, "createFileAttachmentView, oops no attach files found."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v17, 0x0

    .line 643
    :goto_0
    return-object v17

    .line 500
    :cond_0
    if-eqz v9, :cond_1

    .line 501
    invoke-interface {v9}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v18

    if-nez v18, :cond_2

    .line 503
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 504
    const/16 v17, 0x0

    goto :goto_0

    .line 508
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 509
    const/16 v17, 0x0

    goto :goto_0

    .line 514
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/FileAttachmentModel;

    .line 515
    .local v3, attach:Lcom/android/mms/model/FileAttachmentModel;
    const-string v18, "AttachmentEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createFileAttachmentView, attach "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const v18, 0x7f0f003c

    const v19, 0x7f0f00b6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v17

    .line 517
    .local v17, view:Landroid/view/View;
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 519
    const v18, 0x7f0f00b7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 520
    .local v15, thumb:Landroid/widget/ImageView;
    if-eqz v8, :cond_3

    .line 521
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    const v18, 0x7f0f00b8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #thumb:Landroid/widget/ImageView;
    check-cast v15, Landroid/widget/ImageView;

    .line 523
    .restart local v15       #thumb:Landroid/widget/ImageView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    :cond_3
    const v18, 0x7f0f00b9

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 526
    .local v10, name:Landroid/widget/TextView;
    const v18, 0x7f0f00ba

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 528
    .local v11, name2:Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 529
    .local v12, nameText:Ljava/lang/String;
    const/16 v16, -0x1

    .line 531
    .local v16, thumbResId:I
    const/4 v5, 0x0

    .line 533
    .local v5, attachSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 534
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v18

    add-int v5, v5, v18

    .line 533
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 537
    :cond_4
    if-eqz v9, :cond_10

    .line 538
    invoke-interface {v9}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 542
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 544
    const-string v18, "AttachmentEditor"

    const-string v19, "createFileAttachmentView, attachFiles.size() > 1"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b034f

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 546
    const v16, 0x7f020141

    .line 604
    :cond_5
    :goto_2
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    if-eqz v8, :cond_6

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v3

    check-cast v18, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VCardModel;->getContactCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    :cond_6
    if-eqz v11, :cond_7

    .line 608
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 612
    :cond_7
    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    const v18, 0x7f0f00bb

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 614
    .local v14, size:Landroid/widget/TextView;
    if-eqz v9, :cond_12

    invoke-interface {v9}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 617
    int-to-long v0, v5

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :goto_3
    const v18, 0x7f0f00bd

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 625
    .local v13, remove:Landroid/widget/ImageView;
    const v18, 0x7f0f00bc

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 626
    .local v6, divider:Landroid/widget/ImageView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    if-eqz v9, :cond_14

    .line 632
    invoke-interface {v9}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 634
    new-instance v18, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 547
    .end local v6           #divider:Landroid/widget/ImageView;
    .end local v13           #remove:Landroid/widget/ImageView;
    .end local v14           #size:Landroid/widget/TextView;
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 549
    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00b5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 552
    const v16, 0x7f0200ee

    goto/16 :goto_2

    .line 553
    :cond_9
    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00b4

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 556
    const v16, 0x7f0200ec

    goto/16 :goto_2

    .line 559
    :cond_a
    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    .line 560
    const v16, 0x7f02017c

    goto/16 :goto_2

    .line 566
    :cond_b
    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 568
    if-eqz v8, :cond_d

    move-object/from16 v18, v3

    .line 569
    check-cast v18, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VCardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    .line 570
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00b5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 573
    :cond_c
    const v16, 0x7f0200fd

    .line 575
    if-eqz v8, :cond_5

    if-eqz v11, :cond_5

    move-object/from16 v18, v3

    .line 576
    check-cast v18, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VCardModel;->getContactCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 577
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " +"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v18, v3

    check-cast v18, Lcom/android/mms/model/VCardModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VCardModel;->getContactCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 582
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00b5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 583
    const v16, 0x7f0200ee

    goto/16 :goto_2

    .line 585
    :cond_e
    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00b4

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 587
    if-eqz v8, :cond_f

    .line 588
    const v16, 0x7f0200fc

    goto/16 :goto_2

    .line 590
    :cond_f
    const v16, 0x7f0200ec

    goto/16 :goto_2

    .line 596
    :cond_10
    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00b5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 598
    const v16, 0x7f0200ee

    goto/16 :goto_2

    .line 599
    :cond_11
    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b00b4

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 601
    const v16, 0x7f0200ec

    goto/16 :goto_2

    .line 620
    .restart local v14       #size:Landroid/widget/TextView;
    :cond_12
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/android/mms/ui/MessageUtils;->getHumanReadableSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "K"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 637
    .restart local v6       #divider:Landroid/widget/ImageView;
    .restart local v13       #remove:Landroid/widget/ImageView;
    :cond_13
    new-instance v18, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v19, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 641
    :cond_14
    new-instance v18, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v19, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private createMediaView(IIIIIIIIIILcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;
    .locals 9
    .parameter "stub_view_id"
    .parameter "real_view_id"
    .parameter "view_button_id"
    .parameter "replace_button_id"
    .parameter "remove_button_id"
    .parameter "sizeViewId"
    .parameter "msgSize"
    .parameter "viewMessage"
    .parameter "replaceMessage"
    .parameter "removeMessage"
    .parameter "msg"

    .prologue
    .line 358
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 359
    .local v5, view:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 361
    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 362
    .local v6, viewButton:Landroid/widget/Button;
    invoke-virtual {v5, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 363
    .local v3, replaceButton:Landroid/widget/Button;
    invoke-virtual {v5, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 367
    .local v2, removeButton:Landroid/widget/Button;
    invoke-virtual {v5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mMediaSize:Landroid/widget/TextView;

    .line 368
    add-int/lit8 v7, p7, -0x1

    div-int/lit16 v7, v7, 0x400

    add-int/lit8 v4, v7, 0x1

    .line 369
    .local v4, sizeShow:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "K/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "K"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, info:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mMediaSize:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    new-instance v7, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    move/from16 v0, p8

    invoke-direct {v7, p0, v0}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    new-instance v7, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    move/from16 v0, p9

    invoke-direct {v7, p0, v0}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    new-instance v7, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    move/from16 v0, p10

    invoke-direct {v7, p0, v0}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-boolean v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mFlagMini:Z

    if-eqz v7, :cond_0

    .line 379
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_0
    check-cast v5, Lcom/android/mms/ui/SlideViewInterface;

    .end local v5           #view:Landroid/widget/LinearLayout;
    return-object v5
.end method

.method private createSlideshowView(ZLcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;
    .locals 15
    .parameter "inPortrait"
    .parameter "msg"

    .prologue
    .line 389
    const v12, 0x7f0f0040

    const v13, 0x7f0f017b

    invoke-direct {p0, v12, v13}, Lcom/android/mms/ui/AttachmentEditor;->getStubView(II)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 392
    .local v11, view:Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 394
    const v12, 0x7f0f017e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 395
    .local v4, editBtn:Landroid/widget/Button;
    const v12, 0x7f0f0182

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    .line 397
    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    new-instance v13, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v14, 0x2

    invoke-direct {v13, p0, v14}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 401
    const v12, 0x7f0f011f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 404
    .local v8, playBtn:Landroid/widget/ImageButton;
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    if-eqz v12, :cond_1

    .line 405
    const-string v12, "AttachmentEditor"

    const-string v13, "mHasDrmPart"

    invoke-static {v12, v13}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02013d

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->drm_red_lock:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 410
    .local v5, front:Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 411
    .local v3, drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    invoke-static {v3, v1, v5}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmUiUtils;->overlayBitmap(Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 412
    .local v2, drmBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 423
    .end local v2           #drmBitmap:Landroid/graphics/Bitmap;
    .end local v3           #drmManager:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    .end local v5           #front:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    const v12, 0x7f0f001e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mMediaSize:Landroid/widget/TextView;

    .line 424
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    div-int/lit16 v12, v12, 0x400

    add-int/lit8 v10, v12, 0x1

    .line 425
    .local v10, sizeShow:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "K/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "K"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, info:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mMediaSize:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 431
    new-instance v12, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v13, 0x1

    invoke-direct {v12, p0, v13}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    new-instance v13, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v14, 0x2

    invoke-direct {v13, p0, v14}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    new-instance v12, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/4 v13, 0x3

    invoke-direct {v12, p0, v13}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v12, 0x7f0f0183

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 438
    .local v9, removeButton:Landroid/widget/Button;
    const/4 v12, 0x5

    invoke-static {v12}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 440
    .local v7, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v7, :cond_3

    .line 441
    invoke-interface {v7}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 443
    new-instance v12, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v13, 0xc

    invoke-direct {v12, p0, v13}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    :goto_1
    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-interface {v12}, Lcom/mediatek/mms/ext/IMmsCompose;->initCTSendButton()Z

    .line 454
    check-cast v11, Lcom/android/mms/ui/SlideViewInterface;

    .end local v11           #view:Landroid/widget/LinearLayout;
    return-object v11

    .line 418
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #info:Ljava/lang/String;
    .end local v7           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v9           #removeButton:Landroid/widget/Button;
    .end local v10           #sizeShow:I
    .restart local v11       #view:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v12, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02013d

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 419
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 446
    .restart local v6       #info:Ljava/lang/String;
    .restart local v7       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .restart local v9       #removeButton:Landroid/widget/Button;
    .restart local v10       #sizeShow:I
    :cond_2
    new-instance v12, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v13, 0xa

    invoke-direct {v12, p0, v13}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 450
    :cond_3
    new-instance v12, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;

    const/16 v13, 0xa

    invoke-direct {v12, p0, v13}, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;-><init>(Lcom/android/mms/ui/AttachmentEditor;I)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private createView(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;
    .locals 21
    .parameter "msg"

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/AttachmentEditor;->inPortraitMode()Z

    move-result v18

    .line 246
    .local v18, inPortrait:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 249
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->createSlideshowView(ZLcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    .line 329
    :goto_0
    return-object v3

    .line 257
    :cond_0
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 259
    .local v19, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    const/16 v16, 0x0

    .line 260
    .local v16, NOT_OP01:I
    const/4 v15, 0x1

    .line 261
    .local v15, IS_OP01:I
    const/16 v17, 0x0

    .line 263
    .local v17, flag:I
    if-eqz v19, :cond_1

    .line 264
    invoke-interface/range {v19 .. v19}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 265
    const/16 v17, 0x1

    .line 270
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v20

    .line 273
    .local v20, slide:Lcom/android/mms/model/SlideModel;
    if-nez v20, :cond_2

    .line 274
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 276
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    if-nez v17, :cond_3

    .line 278
    const v4, 0x7f0f003d

    const v5, 0x7f0f00d2

    const v6, 0x7f0f00d4

    const v7, 0x7f0f009c

    const v8, 0x7f0f00d5

    const v9, 0x7f0f001e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v10

    const/16 v11, 0x9

    const/4 v12, 0x4

    const/16 v13, 0xa

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIIIIILcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    goto :goto_0

    .line 289
    :cond_3
    const v4, 0x7f0f003d

    const v5, 0x7f0f00d2

    const v6, 0x7f0f00d4

    const v7, 0x7f0f009c

    const v8, 0x7f0f00d5

    const v9, 0x7f0f001e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v10

    const/16 v11, 0x9

    const/4 v12, 0x4

    const/16 v13, 0xc

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIIIIILcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    goto :goto_0

    .line 296
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 297
    if-nez v17, :cond_5

    .line 298
    const v4, 0x7f0f003e

    const v5, 0x7f0f019a

    const v6, 0x7f0f019c

    const v7, 0x7f0f019d

    const v8, 0x7f0f019e

    const v9, 0x7f0f001e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v10

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/16 v13, 0xa

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIIIIILcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    goto/16 :goto_0

    .line 309
    :cond_5
    const v4, 0x7f0f003e

    const v5, 0x7f0f019a

    const v6, 0x7f0f019c

    const v7, 0x7f0f019d

    const v8, 0x7f0f019e

    const v9, 0x7f0f001e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v10

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/16 v13, 0xc

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIIIIILcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    goto/16 :goto_0

    .line 316
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 317
    if-nez v17, :cond_7

    .line 318
    const v4, 0x7f0f003f

    const v5, 0x7f0f0017

    const v6, 0x7f0f001f

    const v7, 0x7f0f0020

    const v8, 0x7f0f0021

    const v9, 0x7f0f001e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/16 v13, 0xa

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIIIIILcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    goto/16 :goto_0

    .line 329
    :cond_7
    const v4, 0x7f0f003f

    const v5, 0x7f0f0017

    const v6, 0x7f0f001f

    const v7, 0x7f0f0020

    const v8, 0x7f0f0021

    const v9, 0x7f0f001e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/16 v13, 0xc

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIIIIIILcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v3

    goto/16 :goto_0

    .line 337
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method private getSimInfoListInHost()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 751
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimInfoList:Ljava/util/List;

    .line 752
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v0

    .line 753
    .local v0, sim1Info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 754
    .local v1, sim2Info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v0, :cond_0

    .line 755
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_0
    if-eqz v1, :cond_1

    .line 758
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    iput v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    .line 761
    const-string v2, "AttachmentEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ComposeMessageActivity.getSimInfoList(): mSimCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void

    .line 760
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private getStubView(II)Landroid/view/View;
    .locals 2
    .parameter "stubId"
    .parameter "viewId"

    .prologue
    .line 219
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 222
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 224
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    return-object v1
.end method

.method private inPortraitMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 347
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 652
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCompose;

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 654
    const-string v1, "AttachmentEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsCompose;->init(Lcom/mediatek/mms/ext/IMmsComposeHost;)V

    .line 660
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    .line 661
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsComposeImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsComposeImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 657
    const-string v1, "AttachmentEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSendButton()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    iget-boolean v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/mms/ext/IMmsCompose;->updateCTSendButtonStatue(ZZ)Z

    .line 206
    return-void
.end method


# virtual methods
.method public deleteMassTextMsg(JJ)V
    .locals 0
    .parameter "msgId"
    .parameter "timeStamp"

    .prologue
    .line 878
    return-void
.end method

.method public hideCTButtonPanel()Z
    .locals 1

    .prologue
    .line 865
    const/4 v0, 0x0

    return v0
.end method

.method public hideCtSendPanel()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 884
    iget v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    if-lez v1, :cond_1

    .line 893
    :cond_0
    :goto_0
    return v3

    .line 888
    :cond_1
    const v1, 0x7f0f017f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 889
    .local v0, ctView:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mFileAttachmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mFileAttachmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_1
    return-void
.end method

.method public initCTSendButton()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 667
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->getSimInfoListInHost()V

    .line 671
    const v1, 0x7f0f017f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mBtnPanel:Landroid/view/View;

    .line 672
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mBtnPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 673
    const v1, 0x7f0f0180

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    .line 674
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    const v1, 0x7f0f0181

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    .line 676
    iget v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 677
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 684
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsCompose;->setCTSendButtonType()Z

    .line 685
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsCompose;->hideCtSendPanel()Z

    .line 686
    const/4 v1, 0x1

    return v1

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 681
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 682
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onTextChangeForOneSlide(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 469
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mMediaSize:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-static {p1, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    .line 475
    .local v1, params:[I
    const/4 v3, 0x0

    .line 476
    .local v3, totalSize:I
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 477
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v3

    .line 480
    :cond_2
    add-int/lit8 v4, v3, -0x1

    div-int/lit16 v4, v4, 0x400

    add-int/lit8 v2, v4, 0x1

    .line 481
    .local v2, sizeShow:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, info:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentEditor;->mMediaSize:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCTSendButtonType()Z
    .locals 15

    .prologue
    const-wide/16 v13, -0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, bigImageId:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 692
    .local v5, smallImageId:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/Object;

    .line 693
    .local v3, resIds:[[Ljava/lang/Object;
    new-array v6, v12, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    .line 694
    const/4 v4, 0x0

    .line 695
    .local v4, slotId:I
    iget v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    if-nez v6, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v11

    .line 697
    :cond_1
    iget v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    if-ne v6, v11, :cond_6

    .line 698
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v4

    .line 711
    :cond_2
    :goto_1
    const/16 v6, 0xd

    invoke-static {v6}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 713
    .local v2, mmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v6, v4, v10}, Lcom/mediatek/mms/ext/IMmsUtils;->getSendButtonResourceIdBySlotId(Landroid/content/Context;IZ)[[Ljava/lang/Object;

    move-result-object v3

    .line 714
    if-eqz v3, :cond_3

    .line 715
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v3, v10

    aget-object v6, v6, v10

    check-cast v6, Landroid/graphics/drawable/Drawable;

    aput-object v6, v7, v10

    .line 716
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v3, v11

    aget-object v6, v6, v10

    check-cast v6, Landroid/graphics/drawable/Drawable;

    aput-object v6, v7, v11

    .line 718
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 719
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v6, v4, v11}, Lcom/mediatek/mms/ext/IMmsUtils;->getSendButtonResourceIdBySlotId(Landroid/content/Context;IZ)[[Ljava/lang/Object;

    move-result-object v3

    .line 721
    :cond_4
    aget-object v6, v3, v10

    aget-object v0, v6, v10

    .end local v0           #bigImageId:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 722
    .restart local v0       #bigImageId:Landroid/graphics/drawable/Drawable;
    aget-object v6, v3, v11

    aget-object v5, v6, v10

    .end local v5           #smallImageId:Landroid/graphics/drawable/Drawable;
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 724
    .restart local v5       #smallImageId:Landroid/graphics/drawable/Drawable;
    new-array v6, v12, [I

    iput-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    .line 725
    new-array v6, v12, [I

    iput-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonColors:[I

    .line 727
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    aget-object v6, v3, v10

    aget-object v6, v6, v11

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v7, v10

    .line 728
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    aget-object v6, v3, v11

    aget-object v6, v6, v11

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v7, v11

    .line 729
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonColors:[I

    aget-object v6, v3, v10

    aget-object v6, v6, v12

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v7, v10

    .line 730
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonColors:[I

    aget-object v6, v3, v11

    aget-object v6, v6, v12

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v7, v11

    .line 731
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    if-eqz v6, :cond_5

    .line 732
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 736
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mCtButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 699
    .end local v2           #mmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;
    :cond_6
    iget v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    if-ne v6, v12, :cond_2

    .line 700
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sms_sim_setting"

    invoke-static {v6, v7, v13, v14}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v1, v6

    .line 702
    .local v1, defaultSimId:I
    int-to-long v6, v1

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 703
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 704
    :cond_7
    int-to-long v6, v1

    cmp-long v6, v6, v13

    if-nez v6, :cond_8

    .line 705
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 707
    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    int-to-long v7, v1

    invoke-static {v6, v7, v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v4

    goto/16 :goto_1
.end method

.method public setCanSend(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    if-eq v0, p1, :cond_0

    .line 194
    iput-boolean p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mCanSend:Z

    .line 195
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentEditor;->updateSendButton()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsCompose;->setCTSendButtonType()Z

    .line 198
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method public showCTButtonPanel()Z
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method public showMassTextMsgDetails([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Z)V
    .locals 0
    .parameter "items"
    .parameter "clickListener"
    .parameter "btnStr"
    .parameter "showButton"

    .prologue
    .line 881
    return-void
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;Z)V
    .locals 0
    .parameter "msg"
    .parameter "isMini"

    .prologue
    .line 463
    iput-boolean p2, p0, Lcom/android/mms/ui/AttachmentEditor;->mFlagMini:Z

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)Z

    .line 465
    return-void
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 133
    iput-object v9, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    .line 135
    iput-object v9, p0, Lcom/android/mms/ui/AttachmentEditor;->mFileAttachmentView:Landroid/view/View;

    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 139
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    :goto_0
    return v3

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 147
    const/4 v5, 0x5

    :try_start_0
    invoke-static {v5}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 149
    .local v1, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v5

    if-nez v5, :cond_2

    .line 151
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->checkFileAttacment(Lcom/android/mms/data/WorkingMessage;)V

    .line 154
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v5

    if-lez v5, :cond_3

    .line 155
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->createFileAttachmentView(Lcom/android/mms/data/WorkingMessage;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mFileAttachmentView:Landroid/view/View;

    .line 156
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mFileAttachmentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 157
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mFileAttachmentView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 163
    goto :goto_0

    .line 165
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentEditor;->createView(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v6}, Lcom/android/mms/ui/Presenter;->getModel()Lcom/android/mms/model/Model;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 171
    :cond_5
    const-string v5, "MmsThumbnailPresenter"

    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 177
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-le v5, v4, :cond_8

    .line 178
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v3, v9}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    :cond_6
    :goto_2
    move v3, v4

    .line 185
    goto :goto_0

    .line 166
    .end local v1           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mView:Lcom/android/mms/ui/SlideViewInterface;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_1

    .line 179
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 180
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 181
    .local v2, sm:Lcom/android/mms/model/SlideModel;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v3, v9}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    goto :goto_2
.end method

.method public updateCTSendButtonStatue(ZZ)Z
    .locals 11
    .parameter "enable"
    .parameter "isMms"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 801
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 802
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    if-nez v5, :cond_2

    .line 861
    :cond_1
    :goto_0
    return v8

    .line 810
    :cond_2
    const/4 v1, 0x0

    .line 811
    .local v1, bigEnable:Z
    const/4 v4, 0x0

    .line 813
    .local v4, smallEnable:Z
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 814
    .local v0, bigBtnEnable:Z
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v3

    .line 816
    .local v3, smallBtnEnable:Z
    if-eq v0, p1, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonColors:[I

    if-eqz v5, :cond_4

    .line 817
    const/4 v2, 0x0

    .line 818
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_9

    .line 819
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonColors:[I

    aget v7, v7, v9

    invoke-interface {v5, v6, v9, v7}, Lcom/mediatek/mms/ext/IMmsUtils;->getActivatedButtonIconBySlotId(IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 825
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 826
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eq v3, p1, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonColors:[I

    if-eqz v5, :cond_6

    .line 830
    const/4 v2, 0x0

    .line 831
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_a

    .line 832
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;

    iget-object v6, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSlotIds:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonColors:[I

    aget v7, v7, v8

    invoke-interface {v5, v6, v8, v7}, Lcom/mediatek/mms/ext/IMmsUtils;->getActivatedButtonIconBySlotId(IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 838
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 839
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    if-nez v5, :cond_b

    .line 844
    const/4 v1, 0x0

    .line 845
    const/4 v4, 0x0

    .line 854
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    if-eqz v5, :cond_8

    .line 855
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 856
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonBig:Landroid/widget/ImageButton;

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 858
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    if-eqz v5, :cond_1

    .line 859
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 821
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 822
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v5, v9

    goto :goto_1

    .line 834
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 835
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v5, v8

    goto :goto_2

    .line 846
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    iget v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    if-ne v5, v8, :cond_c

    .line 847
    move v1, p1

    .line 848
    const/4 v4, 0x0

    .line 849
    iget-object v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mButtonSmall:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 850
    :cond_c
    iget v5, p0, Lcom/android/mms/ui/AttachmentEditor;->mSimCount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 851
    move v1, p1

    .line 852
    move v4, p1

    goto :goto_3
.end method

.method public updateCTTextCounter(II)Z
    .locals 1
    .parameter "remainingInCurrentMessage"
    .parameter "msgCount"

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method
