.class public Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;
.super Lcom/mediatek/mms/ext/MmsConversationListItemImpl;
.source "OP09MmsConversationListItemExt.java"


# static fields
.field public static final SIMINFO_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SIMINFO_SLOT:Ljava/lang/String; = "slot"

.field public static final SIMINFO_SLOT_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Mms/OP09MmsConversationListItemExt"

.field private static final WAIT_TIME:I = 0x514


# instance fields
.field private mSimId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->SIMINFO_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsConversationListItemImpl;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->mSimId:I

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->mSimId:I

    return p1
.end method

.method private getSimIdByThreadId(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 5
    .parameter "context"
    .parameter "conversationUri"

    .prologue
    .line 104
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 105
    .local v2, object:Ljava/lang/Object;
    new-instance v1, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt$1;-><init>(Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Object;)V

    .line 136
    .local v1, newRunnable:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 137
    monitor-enter v2

    .line 139
    const-wide/16 v3, 0x514

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    iget v3, p0, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->mSimId:I

    return v3

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "Mms/OP09MmsConversationListItemExt"

    const-string v4, "getSimIdByThreadId Exception"

    invoke-static {v3, v4, v0}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 1
    .parameter "ctx"
    .parameter "simId"

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public setViewSize(Landroid/widget/TextView;)Z
    .locals 3
    .parameter "textView"

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 189
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showSimType(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 8
    .parameter "context"
    .parameter "conversationUri"
    .parameter "textView"

    .prologue
    const/16 v7, 0x8

    .line 64
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->getSimIdByThreadId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 68
    .local v0, simId:I
    int-to-long v4, v0

    invoke-static {p1, v4, v5}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    .line 69
    .local v3, slotId:I
    const-string v4, "Mms/OP09MmsConversationListItemExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showSimType(context,threadId), simId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 72
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const/4 v2, 0x0

    .line 73
    .local v2, simTypeDraw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightSmallRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 79
    :goto_1
    if-eqz p3, :cond_0

    .line 82
    if-nez v2, :cond_3

    .line 83
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsConversationListItemExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    const-string v4, ""

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 90
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_4
    const-string v4, "Mms/OP09MmsConversationListItemExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TextView"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
