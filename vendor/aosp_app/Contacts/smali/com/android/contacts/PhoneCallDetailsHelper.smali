.class public Lcom/android/contacts/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final MAX_CALL_TYPE_ICONS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneCallDetailsHelper"


# instance fields
.field private final mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

.field private final mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private mLPadding:I

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private mRPadding:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V
    .locals 2
    .parameter "resources"
    .parameter "callTypeHelper"
    .parameter "phoneNumberHelper"
    .parameter "callLogSimInfoHelper"
    .parameter "context"

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 322
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 323
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 324
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    .line 325
    iput-object p5, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    .line 326
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mRPadding:I

    .line 327
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mLPadding:I

    .line 329
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "color"

    .prologue
    const/4 v4, 0x0

    .line 305
    const/16 v0, 0x12

    .line 306
    .local v0, flags:I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 307
    .local v1, result:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 308
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 309
    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 385
    const-string v0, "PhoneCallDetailsHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method private setCallCount(Landroid/widget/TextView;ILjava/lang/Integer;)V
    .locals 7
    .parameter "view"
    .parameter "callCount"
    .parameter "highlightColor"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 361
    const-string v1, ""

    .line 362
    .local v1, text:Ljava/lang/CharSequence;
    if-le p2, v4, :cond_1

    .line 363
    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0017

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    :goto_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :goto_1
    if-eqz p3, :cond_2

    .line 376
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 381
    .local v0, formattedText:Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    return-void

    .line 366
    .end local v0           #formattedText:Ljava/lang/CharSequence;
    :cond_0
    const-string v1, "(9+)"

    goto :goto_0

    .line 370
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 378
    :cond_2
    move-object v0, v1

    .restart local v0       #formattedText:Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private setCallDate(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 2
    .parameter "view"
    .parameter "dateText"
    .parameter "highlightColor"

    .prologue
    .line 348
    if-eqz p3, :cond_0

    .line 349
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/contacts/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 354
    .local v0, formattedText:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-void

    .line 351
    .end local v0           #formattedText:Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p2

    .restart local v0       #formattedText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setSimInfo(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "view"
    .parameter "simName"
    .parameter "simColor"

    .prologue
    const/4 v2, 0x1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimInfo() simName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/PhoneCallDetailsHelper;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "setSimInfo() simName is null or   simColor is null, simname will not show"

    invoke-direct {p0, v0}, Lcom/android/contacts/PhoneCallDetailsHelper;->log(Ljava/lang/String;)V

    .line 336
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mLPadding:I

    iget v1, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mRPadding:I

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;)V
    .locals 6
    .parameter "nameView"
    .parameter "details"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v3, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0178

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    .local v0, displayNumber:Ljava/lang/CharSequence;
    iget-object v2, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v3, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c01fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, nameText:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void

    .line 248
    .end local v1           #nameText:Ljava/lang/CharSequence;
    :cond_0
    move-object v1, v0

    .restart local v1       #nameText:Ljava/lang/CharSequence;
    goto :goto_0

    .line 252
    .end local v1           #nameText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p2, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v1       #nameText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .parameter "currentTimeMillis"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 260
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 261
    return-void
.end method

.method public setPhoneCallDetails(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/android/contacts/PhoneCallDetails;ZZZ)V
    .locals 16
    .parameter "views"
    .parameter "details"
    .parameter "isHighlighted"
    .parameter "isEmergencyNumber"
    .parameter "isVoiceMailNumber"

    .prologue
    .line 107
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/contacts/PhoneCallDetails;->callType:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/contacts/PhoneCallDetails;->vtCall:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setCallType(II)V

    .line 109
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/contacts/PhoneCallDetails;->callType:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v11

    .line 126
    .local v11, highlightColor:Ljava/lang/Integer;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, dateText:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallTimeTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8, v11}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallDate(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallCountTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/contacts/PhoneCallDetails;->callCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallCount(Landroid/widget/TextView;ILjava/lang/Integer;)V

    .line 131
    const/4 v13, 0x0

    .line 133
    .local v13, numberFormattedLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    if-nez v1, :cond_5

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 181
    :cond_0
    :goto_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const/4 v7, 0x1

    .line 185
    .local v7, bSpecialNumber:Z
    :goto_2
    if-eqz p4, :cond_7

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, nameText:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 218
    .local v14, numberText:Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v7, :cond_e

    :cond_2
    if-nez p4, :cond_e

    if-nez p5, :cond_e

    const/4 v15, 0x1

    .line 220
    .local v15, onlyNumber:Z
    :goto_4
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v15, :cond_f

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setCallLogName(Ljava/lang/CharSequence;Z)V

    .line 221
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v15, :cond_10

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setNumber(Ljava/lang/CharSequence;Z)V

    .line 224
    const-string v1, "setPhoneCallDetails()  MTK_GEMINI_SUPPORT"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/PhoneCallDetailsHelper;->log(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSimNameTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;->getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/PhoneCallDetailsHelper;->setSimInfo(Landroid/widget/TextView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_3
    return-void

    .line 109
    .end local v7           #bSpecialNumber:Z
    .end local v8           #dateText:Ljava/lang/String;
    .end local v11           #highlightColor:Ljava/lang/Integer;
    .end local v12           #nameText:Ljava/lang/CharSequence;
    .end local v13           #numberFormattedLabel:Ljava/lang/CharSequence;
    .end local v14           #numberText:Ljava/lang/CharSequence;
    .end local v15           #onlyNumber:Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 144
    .restart local v8       #dateText:Ljava/lang/String;
    .restart local v11       #highlightColor:Ljava/lang/Integer;
    .restart local v13       #numberFormattedLabel:Ljava/lang/CharSequence;
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v5

    .line 145
    .local v5, slotId:I
    const-string v1, "PhoneCallDetailsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneCallDetails() simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    const-string v6, "ExtensionForAAS"

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    goto/16 :goto_1

    .line 181
    .end local v5           #slotId:I
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 188
    .restart local v7       #bSpecialNumber:Z
    :cond_7
    if-eqz p5, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 190
    .restart local v12       #nameText:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .restart local v14       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 193
    .end local v12           #nameText:Ljava/lang/CharSequence;
    .end local v14           #numberText:Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, dsplNumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v9, v10

    .line 197
    .local v9, displayNumber:Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v7, :cond_c

    .line 198
    :cond_9
    move-object v12, v9

    .line 199
    .restart local v12       #nameText:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c02ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 195
    .end local v9           #displayNumber:Ljava/lang/CharSequence;
    .end local v12           #nameText:Ljava/lang/CharSequence;
    .end local v14           #numberText:Ljava/lang/CharSequence;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x202d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x202c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 202
    .restart local v9       #displayNumber:Ljava/lang/CharSequence;
    .restart local v12       #nameText:Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    .restart local v14       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 205
    .end local v12           #nameText:Ljava/lang/CharSequence;
    .end local v14           #numberText:Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 206
    .restart local v12       #nameText:Ljava/lang/CharSequence;
    if-eqz v13, :cond_d

    .line 207
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-static {v1, v2, v3, v4, v6}, Lcom/android/contacts/format/FormatUtils;->applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v14

    .restart local v14       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 213
    .end local v14           #numberText:Ljava/lang/CharSequence;
    :cond_d
    move-object v14, v9

    .restart local v14       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 218
    .end local v9           #displayNumber:Ljava/lang/CharSequence;
    .end local v10           #dsplNumber:Ljava/lang/String;
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 220
    .restart local v15       #onlyNumber:Z
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 221
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_6
.end method
