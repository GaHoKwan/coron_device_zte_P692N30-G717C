.class public Lcom/mediatek/email/emailvip/utils/MessageViewUtils;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;,
        Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;,
        Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;,
        Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    }
.end annotation


# static fields
.field private static final CONTACT_STATUS_STATE_LOADED:I = 0x2

.field private static final CONTACT_STATUS_STATE_UNLOADED:I = 0x0

.field private static final CONTACT_STATUS_STATE_UNLOADED_TRIGGERED:I = 0x1

.field private static mIsTwoPaneUi:Z

.field private static mWindowWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->mIsTwoPaneUi:Z

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->mWindowWidth:I

    return v0
.end method

.method public static getAllAddresses(Lcom/android/emailcommon/provider/EmailContent$Message;)[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 137
    if-nez p0, :cond_0

    .line 138
    new-array v0, v6, [Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    .line 149
    :goto_0
    return-object v0

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->unpack(Ljava/lang/String;I)[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v3

    .line 141
    .local v3, toAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->unpack(Ljava/lang/String;I)[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v2

    .line 142
    .local v2, ccAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->unpack(Ljava/lang/String;I)[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v1

    .line 143
    .local v1, bccAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    array-length v4, v3

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v0, v4, [Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    .line 145
    .local v0, allAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    array-length v4, v3

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v4, v3

    array-length v5, v2

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v4, v3

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getSpannableString(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;Z)Landroid/text/SpannableString;
    .locals 7
    .parameter "context"
    .parameter "address"
    .parameter "selected"

    .prologue
    const/4 v6, 0x1

    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v3, Landroid/text/SpannableString;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return-object v3

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, personal:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 120
    new-instance v3, Landroid/text/SpannableString;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-boolean v4, p1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    if-nez v4, :cond_2

    .line 123
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_2
    if-eqz p2, :cond_3

    const v2, 0x7f02002d

    .line 126
    .local v2, resId:I
    :goto_1
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, v2, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 128
    .local v0, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    .local v3, spannableString:Landroid/text/SpannableString;
    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v3, v0, v4, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 125
    .end local v0           #imageSpan:Landroid/text/style/ImageSpan;
    .end local v2           #resId:I
    .end local v3           #spannableString:Landroid/text/SpannableString;
    :cond_3
    const v2, 0x7f02002c

    goto :goto_1
.end method

.method public static removeLastComma(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 3
    .parameter "ssb"

    .prologue
    .line 304
    if-nez p0, :cond_1

    .line 305
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .end local p0
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 311
    .local v0, length:I
    .restart local p0
    :cond_0
    :goto_0
    return-object p0

    .line 307
    .end local v0           #length:I
    :cond_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 308
    .restart local v0       #length:I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 309
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public static setAddressView(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 5
    .parameter "textView"
    .parameter "spannableString"

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 294
    .local v1, width:I
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, charSequence:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 297
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method

.method public static setDetailsLayout(Lcom/android/email/activity/MessageViewFragmentBase;[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;[Landroid/widget/LinearLayout;IILandroid/widget/PopupWindow;)V
    .locals 15
    .parameter "fragment"
    .parameter "addresses"
    .parameter "layout"
    .parameter "start"
    .parameter "end"
    .parameter "popupWindow"

    .prologue
    .line 164
    move-object/from16 v0, p1

    array-length v11, v0

    if-nez v11, :cond_1

    .line 205
    :cond_0
    return-void

    .line 167
    :cond_1
    move-object/from16 v0, p1

    array-length v11, v0

    move/from16 v0, p4

    if-le v0, v11, :cond_2

    .line 168
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p4, v0

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 171
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 172
    .local v8, resources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v11

    sput-boolean v11, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->mIsTwoPaneUi:Z

    .line 173
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v11, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->mWindowWidth:I

    .line 174
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0035

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 175
    .local v6, padding:I
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 176
    .local v1, black:I
    new-instance v4, Landroid/text/style/ImageSpan;

    const v11, 0x7f02002c

    const/4 v12, 0x1

    invoke-direct {v4, v2, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 178
    .local v4, imageSpan:Landroid/text/style/ImageSpan;
    const/4 v9, 0x0

    .line 179
    .local v9, spannableString:Landroid/text/SpannableString;
    new-instance v5, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    move-object/from16 v0, p5

    invoke-direct {v5, p0, v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/widget/PopupWindow;)V

    .line 180
    .local v5, onClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;
    const/4 v10, 0x0

    .line 181
    .local v10, textView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;
    const/4 v7, 0x0

    .line 182
    .local v7, parent:Landroid/widget/LinearLayout;
    move/from16 v3, p3

    .local v3, i:I
    :goto_0
    move/from16 v0, p4

    if-ge v3, v0, :cond_0

    .line 183
    new-instance v10, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;

    .end local v10           #textView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;
    invoke-direct {v10, v2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;-><init>(Landroid/content/Context;)V

    .line 184
    .restart local v10       #textView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;
    aget-object v11, p1, v3

    invoke-virtual {v10, v11}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->setAdress(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 185
    const v11, 0x7f02000d

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    invoke-virtual {v10, v6}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->setPadding(I)V

    .line 187
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 189
    aget-object v11, p1, v3

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 190
    aget-object v11, p1, v3

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->setVip(Z)V

    .line 191
    new-instance v9, Landroid/text/SpannableString;

    .end local v9           #spannableString:Landroid/text/SpannableString;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v3

    invoke-virtual {v12}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    .restart local v9       #spannableString:Landroid/text/SpannableString;
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x21

    invoke-virtual {v9, v4, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 193
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_1
    invoke-virtual {v10, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    aget-object v11, p1, v3

    iget v11, v11, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mParentLayoutFlag:I

    add-int/lit8 v11, v11, -0x1

    aget-object v7, p2, v11

    .line 199
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/16 v14, 0x9

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_3
    aget-object v11, p1, v3

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static setRowVisibility(Ljava/lang/String;Landroid/view/View;I)V
    .locals 2
    .parameter "addresses"
    .parameter "table"
    .parameter "rowId"

    .prologue
    .line 394
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static updateAddressesView(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 13
    .parameter "message"
    .parameter "context"
    .parameter "addressView"

    .prologue
    const/16 v7, 0xa

    .line 214
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 219
    .local v8, res:Landroid/content/res/Resources;
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 221
    .local v10, ssb:Landroid/text/SpannableStringBuilder;
    invoke-static {p0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->getAllAddresses(Lcom/android/emailcommon/provider/EmailContent$Message;)[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v0

    .line 222
    .local v0, allAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    array-length v6, v0

    .line 223
    .local v6, length:I
    if-nez v6, :cond_2

    .line 224
    const-string v12, ""

    invoke-virtual {p2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :cond_2
    if-ge v6, v7, :cond_3

    move v7, v6

    .line 230
    .local v7, position:I
    :cond_3
    const/4 v3, 0x0

    .line 231
    .local v3, appendToLabel:Z
    const/4 v2, 0x0

    .line 232
    .local v2, appendCcLabel:Z
    const/4 v1, 0x0

    .line 233
    .local v1, appendBccLabel:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v7, :cond_5

    .line 234
    aget-object v11, v0, v5

    .line 235
    .local v11, tempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->setVip(Z)V

    .line 236
    iget v12, v11, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mParentLayoutFlag:I

    packed-switch v12, :pswitch_data_0

    .line 265
    :cond_4
    :goto_2
    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->getSpannableString(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;Z)Landroid/text/SpannableString;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 266
    const-string v12, ", "

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 238
    :pswitch_0
    if-nez v3, :cond_4

    .line 239
    const v12, 0x7f0800e4

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 240
    const-string v12, " "

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 241
    const/4 v3, 0x1

    goto :goto_2

    .line 245
    :pswitch_1
    if-nez v2, :cond_4

    .line 246
    invoke-static {v10}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->removeLastComma(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    .line 247
    const-string v12, " "

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    const v12, 0x7f0800e5

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 249
    const-string v12, " "

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    const/4 v2, 0x1

    goto :goto_2

    .line 254
    :pswitch_2
    if-nez v1, :cond_4

    .line 255
    invoke-static {v10}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->removeLastComma(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    .line 256
    const-string v12, " "

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 257
    const v12, 0x7f0800e6

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 258
    const-string v12, " "

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 259
    const/4 v1, 0x1

    goto :goto_2

    .line 268
    .end local v11           #tempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    :cond_5
    invoke-static {v10}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->removeLastComma(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 272
    .local v9, spannableString:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v12

    if-eqz v12, :cond_6

    .line 273
    invoke-static {p2, v9}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->setAddressView(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 275
    :cond_6
    instance-of v12, p2, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    if-eqz v12, :cond_7

    move-object v4, p2

    .line 276
    check-cast v4, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;

    .line 277
    .local v4, etView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;
    new-instance v12, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;

    invoke-direct {v12, v4, v9}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$1;-><init>(Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v4, v12}, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->setOnDrawnListener(Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;)V

    goto/16 :goto_0

    .line 284
    .end local v4           #etView:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;
    :cond_7
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateDetailsExpanded(Landroid/content/Context;Landroid/view/View;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V
    .locals 4
    .parameter "context"
    .parameter "root"
    .parameter "singleAddress"

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    const v3, 0x7f0f00c6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 361
    .local v2, toLayout:Landroid/widget/LinearLayout;
    const v3, 0x7f0f00c8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 362
    .local v1, ccLayout:Landroid/widget/LinearLayout;
    const v3, 0x7f0f00ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 363
    .local v0, bccLayout:Landroid/widget/LinearLayout;
    invoke-static {p0, v2, p2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateVipTextView(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 364
    invoke-static {p0, v1, p2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateVipTextView(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 365
    invoke-static {p0, v0, p2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateVipTextView(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    goto :goto_0
.end method

.method public static updateVipInformation(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/view/View;Landroid/widget/TextView;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V
    .locals 1
    .parameter "context"
    .parameter "message"
    .parameter "detailsLayout"
    .parameter "addressView"
    .parameter "singleAddress"

    .prologue
    .line 382
    if-nez p4, :cond_0

    .line 383
    invoke-static {p1, p0, p3}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateAddressesView(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 384
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateDetailsExpanded(Landroid/content/Context;Landroid/view/View;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {p0, p2, p4}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->updateDetailsExpanded(Landroid/content/Context;Landroid/view/View;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    goto :goto_0
.end method

.method public static updateVipTextView(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V
    .locals 9
    .parameter "context"
    .parameter "layout"
    .parameter "singleAddress"

    .prologue
    const/4 v8, 0x0

    .line 315
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 316
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 349
    :cond_0
    return-void

    .line 319
    :cond_1
    const/4 v5, 0x0

    .line 320
    .local v5, view:Landroid/view/View;
    const/4 v6, 0x0

    .line 321
    .local v6, vipTextView:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;
    const/4 v4, 0x0

    .line 322
    .local v4, tempAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 323
    const/4 v5, 0x0

    .line 324
    const/4 v6, 0x0

    .line 325
    const/4 v4, 0x0

    .line 326
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 327
    if-eqz v5, :cond_2

    instance-of v7, v5, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 328
    check-cast v6, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;

    .line 329
    invoke-virtual {v6}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->getAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v4

    .line 330
    if-nez p2, :cond_4

    .line 331
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v3

    .line 332
    .local v3, isVip:Z
    iget-boolean v7, v4, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    if-eq v7, v3, :cond_2

    .line 333
    if-eqz v3, :cond_3

    .line 334
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->setVip(Z)V

    .line 338
    :goto_1
    invoke-static {p0, v4, v8}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->getSpannableString(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;Z)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .end local v3           #isVip:Z
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .restart local v3       #isVip:Z
    :cond_3
    invoke-virtual {v4, v8}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->setVip(Z)V

    goto :goto_1

    .line 341
    .end local v3           #isVip:Z
    :cond_4
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, emailAddress:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 343
    iget-boolean v7, p2, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    invoke-virtual {v4, v7}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->setVip(Z)V

    .line 344
    invoke-static {p0, v4, v8}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils;->getSpannableString(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;Z)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
