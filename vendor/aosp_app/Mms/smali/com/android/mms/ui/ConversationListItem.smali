.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItem.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_READ_MESSAGES_COUNT:I = 0x270f

.field private static final MAX_READ_MESSAGES_STRING:Ljava/lang/String; = "9999+"

.field private static final MAX_UNREAD_MESSAGES_COUNT:I = 0x3e7

.field private static final MAX_UNREAD_MESSAGES_STRING:Ljava/lang/String; = "999+"

.field public static final STYLE_BOLD:Landroid/text/style/StyleSpan; = null

.field private static final TAG:Ljava/lang/String; = "ConversationListItem"

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAttachmentView:Landroid/view/View;

.field private mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDateView:Landroid/widget/TextView;

.field private mErrorIndicator:Landroid/widget/ImageView;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

.field private mMuteView:Landroid/view/View;

.field private mSubjectSingleLine:Z

.field private mSubjectView:Landroid/widget/TextView;

.field mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mUnreadView:Landroid/widget/TextView;

.field private mUpdateFromViewRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    .line 331
    new-instance v0, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    .line 118
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    .line 331
    new-instance v0, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    .line 123
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 124
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage()Ljava/lang/CharSequence;
    .locals 15

    .prologue
    .line 159
    const/16 v3, 0x8

    .line 161
    .local v3, color:I
    const/4 v7, 0x0

    .line 162
    .local v7, from:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, channelId:I
    const-string v11, "ConversationListItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "recipients = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/mms/ui/ConversationListItem;->parseNumberForCb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, number:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 168
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 174
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 175
    .local v9, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v8

    .line 176
    .local v8, info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v8, :cond_6

    .line 177
    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v2, v11}, Lcom/android/mms/data/CBMessage;->getCBChannelNameGemini(II)Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0062

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-ne v9, v11, :cond_1

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v8

    .line 181
    if-eqz v8, :cond_1

    .line 182
    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v2, v11}, Lcom/android/mms/data/CBMessage;->getCBChannelNameGemini(II)Ljava/lang/String;

    move-result-object v9

    .line 192
    :cond_1
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 193
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0062

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    :cond_2
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/mms/ui/ConversationListItem;->parseNumberForCb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 225
    .end local v2           #channelId:I
    .end local v8           #info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 226
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v12, 0x104000e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    .local v1, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 234
    .local v0, before:I
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v11

    if-nez v11, :cond_4

    .line 235
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 236
    const-string v11, "unread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "formatMessage(): Thread "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has no unread message."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v5

    .line 238
    .local v5, count:I
    const/16 v11, 0x270f

    if-le v5, v11, :cond_c

    .line 239
    const-string v11, "  9999+"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 243
    :goto_3
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    iget-object v12, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x11

    invoke-virtual {v1, v11, v0, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 263
    .end local v5           #count:I
    :cond_4
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 264
    sget-object v11, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x11

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 268
    :cond_5
    return-object v1

    .line 169
    .end local v0           #before:I
    .end local v1           #buf:Landroid/text/SpannableStringBuilder;
    .restart local v2       #channelId:I
    .restart local v10       #number:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 170
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v11, "ConversationListItem"

    const-string v12, "format number error!"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .restart local v9       #name:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v8

    .line 187
    if-eqz v8, :cond_1

    .line 188
    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v2, v11}, Lcom/android/mms/data/CBMessage;->getCBChannelNameGemini(II)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 200
    :catch_1
    move-exception v6

    .line 201
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v11, "ConversationListItem"

    const-string v12, "format recipient number error!"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 205
    .end local v2           #channelId:I
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v8           #info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 207
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    .line 208
    .local v4, contact:Lcom/android/mms/data/Contact;
    const-string v11, "avatar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConvListItem.formatMessage(): number = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    const-string v12, "7---"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 211
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_8

    .line 212
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/android/mms/data/Contact;->setThreadId(J)V

    .line 214
    :cond_8
    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 215
    :cond_9
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/mms/ipmessage/ContactManager;->getNameByThreadId(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/mms/data/Contact;->setName(Ljava/lang/String;)V

    .line 218
    :cond_a
    const-string v11, "avatar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConvListItem.formatMessage(): number = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", group name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v4           #contact:Lcom/android/mms/data/Contact;
    :cond_b
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 241
    .restart local v0       #before:I
    .restart local v1       #buf:Landroid/text/SpannableStringBuilder;
    .restart local v5       #count:I
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_3
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 599
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsConversationListItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsConversationListItem;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    .line 601
    const-string v1, "ConversationListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsConversationListItemPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsConversationListItemImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsConversationListItemImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    .line 605
    const-string v1, "ConversationListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsConversationListItemPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseNumberForCb(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "address"

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 569
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 570
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 571
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    .end local v1           #c:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private updateAvatarView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 275
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MmsQuickContactBadge;->setGroupAvator(Z)V

    .line 276
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 277
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 279
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v7, "7---"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 280
    .local v2, isGroup:Z
    const-string v4, "avatar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConvListItem.updateAvatarView(): isGroup = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz v2, :cond_1

    .line 283
    const-string v4, "avatar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConvListItem.updateAvatarView(): get avatart by threadId, threadId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-virtual {v1, v4, v7, v8}, Lcom/android/mms/data/Contact;->getGroupAvatar(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 286
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    const-string v7, "avatar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConvListItem.updateAvatarView(): bitmap is null ?= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-eqz v0, :cond_1

    .line 288
    const-string v4, "avatar"

    const-string v7, "ConvListItem.updateAvatarView(): set group avatar."

    invoke-static {v4, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/mms/ui/MmsQuickContactBadge;->setThreadId(J)V

    .line 292
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MmsQuickContactBadge;->setGroupAvator(Z)V

    .line 294
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 324
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #isGroup:Z
    :goto_1
    return-void

    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v2       #isGroup:Z
    :cond_0
    move v4, v6

    .line 286
    goto :goto_0

    .line 298
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-virtual {v1, v4, v7, v8, v9}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v10}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 306
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v3, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 322
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #isGroup:Z
    .end local v3           #number:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 310
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v2       #isGroup:Z
    .restart local v3       #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_2

    .line 313
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v3, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_2

    .line 319
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #isGroup:Z
    .end local v3           #number:Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 320
    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v4, v10}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    .line 512
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationList;

    .line 514
    .local v2, conversationList:Lcom/android/mms/ui/ConversationList;
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->isActionMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    const v1, 0x7f020132

    .line 521
    .local v1, backgroundId:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 523
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    return-void

    .line 516
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundId:I
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    const v1, 0x7f02002e

    .restart local v1       #backgroundId:I
    goto :goto_0

    .line 519
    .end local v1           #backgroundId:I
    :cond_1
    const v1, 0x7f02002d

    .restart local v1       #backgroundId:I
    goto :goto_0
.end method

.method private updateFromView()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 329
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .locals 15
    .parameter "context"
    .parameter "conversation"

    .prologue
    .line 352
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    .line 354
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateBackground()V

    .line 357
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 358
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v13

    .line 359
    .local v13, unreadCount:I
    const/4 v14, 0x0

    .line 360
    .local v14, unreadString:Ljava/lang/String;
    const/16 v2, 0x3e7

    if-le v13, v2, :cond_6

    .line 361
    const-string v14, "999+"

    .line 365
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->getThemeDrawble(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    .end local v13           #unreadCount:I
    .end local v14           #unreadString:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v11

    .line 392
    .local v11, hasError:Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v10

    .line 393
    .local v10, hasAttachment:Z
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    if-eqz v10, :cond_8

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    sget v2, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v2

    if-nez v2, :cond_9

    .line 401
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getImpDate()J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringExtend(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    .line 418
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v3

    const/16 v4, 0x88

    invoke-virtual {v3, v4}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_4
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectSingleLine:Z

    if-eqz v2, :cond_2

    .line 439
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getTyping()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 446
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v3

    const/16 v4, 0x86

    invoke-virtual {v3, v4}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_5
    if-eqz v11, :cond_3

    .line 465
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 466
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/widget/ImageView;

    const v3, 0x7f02000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    :cond_3
    :goto_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_10

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 476
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 478
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x2329

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 480
    .local v12, image:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    .end local v12           #image:Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_8
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v5

    const v2, 0x7f0f0077

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v3, v4, v5, v2}, Lcom/mediatek/mms/ext/IMmsConversationListItem;->showSimType(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/TextView;)V

    .line 495
    invoke-static {}, Lcom/android/mms/MmsConfig;->isShowDraftIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 496
    const v2, 0x7f0f0073

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 497
    .local v9, draftIcon:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 498
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 499
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 506
    .end local v9           #draftIcon:Landroid/view/View;
    :cond_5
    :goto_9
    return-void

    .line 363
    .end local v10           #hasAttachment:Z
    .end local v11           #hasError:Z
    .restart local v13       #unreadCount:I
    .restart local v14       #unreadString:Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 376
    .end local v13           #unreadCount:I
    .end local v14           #unreadString:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 393
    .restart local v10       #hasAttachment:Z
    .restart local v11       #hasError:Z
    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 404
    :cond_9
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 405
    .local v1, mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringExtend(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, dateStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 407
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDateSent()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/mediatek/mms/ext/IMmsUtils;->formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 410
    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 421
    .end local v1           #mMmsUtilsPlugin:Lcom/mediatek/mms/ext/IMmsUtils;
    .end local v8           #dateStr:Ljava/lang/String;
    :cond_b
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto/16 :goto_4

    .line 448
    :cond_c
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    .line 449
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v3

    const/16 v4, 0x87

    invoke-virtual {v3, v4}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 451
    :cond_d
    sget v2, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v2

    if-nez v2, :cond_e

    .line 453
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getImpSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 455
    :cond_e
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 468
    :cond_f
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/widget/ImageView;

    const v3, 0x7f0200a8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 472
    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_7

    .line 483
    :cond_11
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 485
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mMuteView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isMute()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mMuteView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 501
    .restart local v9       #draftIcon:Landroid/view/View;
    :cond_12
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "explain"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public bindDefault(Lcom/android/mms/data/Conversation;)V
    .locals 3
    .parameter "conversation"

    .prologue
    const/16 v2, 0x8

    .line 548
    const-string v0, "ConversationListItem"

    const-string v1, "bindDefault()."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p1, :cond_0

    .line 550
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    .line 551
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateBackground()V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const v1, 0x7f0b0238

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMuteView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 561
    return-void
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 586
    const-string v0, "ConversationListItem"

    const-string v1, "onDetachedFromWindow!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 588
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 589
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->initPlugin(Landroid/content/Context;)V

    .line 134
    const v0, 0x7f0f0078

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMmsConversationListItemPlugin:Lcom/mediatek/mms/ext/IMmsConversationListItem;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsConversationListItem;->setViewSize(Landroid/widget/TextView;)Z

    .line 137
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    .line 139
    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f0f0059

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsQuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Lcom/android/mms/ui/MmsQuickContactBadge;

    .line 142
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMuteView:Landroid/view/View;

    .line 143
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadView:Landroid/widget/TextView;

    .line 144
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .parameter "updated"

    .prologue
    .line 339
    const-string v0, "ConversationListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mUpdateFromViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 535
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateBackground()V

    .line 536
    return-void
.end method

.method public setSubjectSingleLineMode(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 580
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectSingleLine:Z

    .line 581
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 544
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 531
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 532
    return-void
.end method
