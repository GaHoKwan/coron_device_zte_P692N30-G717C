.class public Lcom/android/contacts/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# static fields
.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_HISTORY_ITEM:I = 0x1


# instance fields
.field private final mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNumber:Ljava/lang/String;

.field private final mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

.field private final mShowCallAndSms:Z

.field private final mShowVoicemail:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/calllog/CallTypeHelper;[Lcom/android/contacts/PhoneCallDetails;ZZLandroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "layoutInflater"
    .parameter "callTypeHelper"
    .parameter "phoneCallDetails"
    .parameter "showVoicemail"
    .parameter "showCallAndSms"
    .parameter "controls"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    new-instance v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mNumber:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 80
    iput-object p3, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 81
    iput-object p4, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    .line 82
    iput-boolean p5, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowVoicemail:Z

    .line 83
    iput-boolean p6, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    .line 84
    iput-object p7, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mNumber:Ljava/lang/String;

    .line 90
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->init(Landroid/content/Context;[Lcom/android/contacts/PhoneCallDetails;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v5, 0x3c

    .line 278
    const-wide/16 v0, 0x0

    .line 279
    .local v0, minutes:J
    const-wide/16 v2, 0x0

    .line 281
    .local v2, seconds:J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 282
    div-long v0, p1, v5

    .line 283
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 285
    :cond_0
    move-wide v2, p1

    .line 287
    iget-object v4, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c01a2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    const-wide/16 v0, -0x1

    .line 117
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 128
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getItemViewType(I)I

    move-result v0

    .line 130
    .local v0, resultType:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 136
    .end local v0           #resultType:I
    :goto_0
    return v0

    .line 133
    .restart local v0       #resultType:I
    :cond_0
    if-nez p1, :cond_1

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 33
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 142
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v3

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getViewPre(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 144
    .local v27, resultView:Landroid/view/View;
    if-eqz v27, :cond_0

    .line 274
    .end local v27           #resultView:Landroid/view/View;
    :goto_0
    return-object v27

    .line 147
    .restart local v27       #resultView:Landroid/view/View;
    :cond_0
    if-nez p1, :cond_c

    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, header:Landroid/view/View;
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04000c

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 161
    :goto_1
    const v3, 0x7f070056

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 162
    .local v32, voicemailContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowVoicemail:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .end local v32           #voicemailContainer:Landroid/view/View;
    :goto_3
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 173
    .local v23, hasSIMInsert:Ljava/lang/Boolean;
    const v3, 0x7f070057

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 174
    .local v15, callAndSmsContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    const v3, 0x7f07004d

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 178
    .local v30, topView:Landroid/view/View;
    if-eqz v30, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_1
    const v3, 0x7f07005d

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 186
    .local v31, videoCallContainer:Landroid/view/View;
    const v3, 0x7f07005f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 187
    .local v24, ipCallContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowVoicemail:Z

    if-eqz v3, :cond_9

    .line 188
    const/16 v3, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :goto_7
    const v3, 0x7f07005e

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 193
    .local v29, separator02:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v3, :cond_b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v3, 0x7f07005c

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 199
    .local v28, separator01:Landroid/view/View;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mNumber:Ljava/lang/String;

    const-string v6, "ExtenstionForRCS"

    const v7, 0x7f070061

    const v8, 0x7f070061

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/android/contacts/ext/CallDetailExtension;->setViewVisible(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    .line 206
    const/16 v3, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v27, v4

    .line 213
    goto/16 :goto_0

    .end local v15           #callAndSmsContainer:Landroid/view/View;
    .end local v23           #hasSIMInsert:Ljava/lang/Boolean;
    .end local v24           #ipCallContainer:Landroid/view/View;
    .end local v28           #separator01:Landroid/view/View;
    .end local v29           #separator02:Landroid/view/View;
    .end local v30           #topView:Landroid/view/View;
    .end local v31           #videoCallContainer:Landroid/view/View;
    :cond_2
    move-object/from16 v4, p2

    .line 159
    goto/16 :goto_1

    .line 162
    .restart local v32       #voicemailContainer:Landroid/view/View;
    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_2

    .line 164
    .end local v32           #voicemailContainer:Landroid/view/View;
    :cond_4
    if-nez p2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04000d

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :goto_9
    goto/16 :goto_3

    :cond_5
    move-object/from16 v4, p2

    goto :goto_9

    .line 169
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 174
    .restart local v15       #callAndSmsContainer:Landroid/view/View;
    .restart local v23       #hasSIMInsert:Ljava/lang/Boolean;
    :cond_7
    const/16 v3, 0x8

    goto/16 :goto_5

    .line 179
    .restart local v30       #topView:Landroid/view/View;
    :cond_8
    const/16 v3, 0x8

    goto/16 :goto_6

    .line 190
    .restart local v24       #ipCallContainer:Landroid/view/View;
    .restart local v31       #videoCallContainer:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v3, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    :goto_a
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_a
    const/16 v3, 0x8

    goto :goto_a

    .line 193
    .restart local v29       #separator02:Landroid/view/View;
    :cond_b
    const/16 v3, 0x8

    goto/16 :goto_8

    .line 217
    .end local v4           #header:Landroid/view/View;
    .end local v15           #callAndSmsContainer:Landroid/view/View;
    .end local v23           #hasSIMInsert:Ljava/lang/Boolean;
    .end local v24           #ipCallContainer:Landroid/view/View;
    .end local v29           #separator02:Landroid/view/View;
    .end local v30           #topView:Landroid/view/View;
    .end local v31           #videoCallContainer:Landroid/view/View;
    :cond_c
    if-nez p2, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04000b

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 221
    .local v26, result:Landroid/view/View;
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;

    add-int/lit8 v5, p1, -0x1

    aget-object v21, v3, v5

    .line 222
    .local v21, details:Lcom/android/contacts/PhoneCallDetails;
    const v3, 0x7f070058

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/calllog/CallTypeIconsView;

    .line 224
    .local v17, callTypeIconView:Lcom/android/contacts/calllog/CallTypeIconsView;
    const v3, 0x7f070059

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 225
    .local v18, callTypeTextView:Landroid/widget/TextView;
    const v3, 0x7f07005a

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 226
    .local v20, dateView:Landroid/widget/TextView;
    const v3, 0x7f07005b

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 231
    .local v22, durationView:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/contacts/PhoneCallDetails;->callType:I

    move/from16 v16, v0

    .line 234
    .local v16, callType:I
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/calllog/CallTypeIconsView;->clear()V

    .line 240
    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/contacts/PhoneCallDetails;->vtCall:I

    .line 241
    .local v14, bVTCall:I
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/android/contacts/calllog/CallTypeIconsView;->set(II)V

    .line 242
    const-string v3, "CallDetailHistoryAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP prefix:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/contacts/PhoneCallDetails;->ipPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->ipPrefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_e

    .line 245
    const-string v3, "CallDetailHistoryAdapter "

    const-string v5, " ipPrefix"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00ad

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/contacts/PhoneCallDetails;->ipPrefix:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 248
    .local v25, mIPOutgoingName:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .end local v25           #mIPOutgoingName:Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    const/16 v10, 0x17

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v19

    .line 257
    .local v19, dateValue:Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v3

    move-object/from16 v0, v21

    iget-wide v5, v0, Lcom/android/contacts/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExtensionForOP01"

    move/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/android/contacts/ext/CallDetailExtension;->setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v3

    move/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getViewPost(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v27, v26

    .line 274
    goto/16 :goto_0

    .end local v14           #bVTCall:I
    .end local v16           #callType:I
    .end local v17           #callTypeIconView:Lcom/android/contacts/calllog/CallTypeIconsView;
    .end local v18           #callTypeTextView:Landroid/widget/TextView;
    .end local v19           #dateValue:Ljava/lang/CharSequence;
    .end local v20           #dateView:Landroid/widget/TextView;
    .end local v21           #details:Lcom/android/contacts/PhoneCallDetails;
    .end local v22           #durationView:Landroid/widget/TextView;
    .end local v26           #result:Landroid/view/View;
    :cond_d
    move-object/from16 v26, p2

    .line 217
    goto/16 :goto_b

    .line 250
    .restart local v14       #bVTCall:I
    .restart local v16       #callType:I
    .restart local v17       #callTypeIconView:Lcom/android/contacts/calllog/CallTypeIconsView;
    .restart local v18       #callTypeTextView:Landroid/widget/TextView;
    .restart local v20       #dateView:Landroid/widget/TextView;
    .restart local v21       #details:Lcom/android/contacts/PhoneCallDetails;
    .restart local v22       #durationView:Landroid/widget/TextView;
    .restart local v26       #result:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/contacts/calllog/CallTypeHelper;->getCallTypeText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailHistoryAdapterExtension()Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/ext/CallDetailHistoryAdapterExtension;->getViewTypeCount(I)I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
