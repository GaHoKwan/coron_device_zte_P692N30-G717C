.class public Lcom/mediatek/ipmsg/ui/SharePanel;
.super Landroid/widget/LinearLayout;
.source "SharePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;
    }
.end annotation


# static fields
.field public static final ADD_IMAGE:I = 0x4

.field public static final ADD_SLIDESHOW:I = 0x8

.field public static final ADD_SOUND:I = 0x6

.field public static final ADD_VCALENDAR:I = 0x7

.field public static final ADD_VCARD:I = 0x3

.field public static final ADD_VIDEO:I = 0x5

.field public static final IPMSG_CHOOSE_AUDIO:I = 0x6a

.field public static final IPMSG_CHOOSE_PHOTO:I = 0x68

.field public static final IPMSG_CHOOSE_VIDEO:I = 0x69

.field public static final IPMSG_DRAW_SKETCH:I = 0x67

.field public static final IPMSG_RECORD_AUDIO:I = 0x66

.field public static final IPMSG_RECORD_VIDEO:I = 0x65

.field public static final IPMSG_SHARE_CALENDAR:I = 0x6d

.field public static final IPMSG_SHARE_CONTACT:I = 0x6c

.field public static final IPMSG_SHARE_LOCATION:I = 0x6b

.field public static final IPMSG_SHARE_SLIDESHOW:I = 0x6e

.field public static final IPMSG_TAKE_PHOTO:I = 0x64

.field private static final IP_MESSAGE_ACTIONS:[I = null

.field private static final IP_MESSAGE_ACTIONS_WITHOUT_SKETCH_AND_LOCATION:[I = null

.field private static final MMS_ACTIONS:[I = null

.field public static final RECORD_SOUND:I = 0x2

.field public static final RECORD_VIDEO:I = 0x1

.field public static final SHARE_ACTION:Ljava/lang/String; = "shareAction"

.field private static final TAG:Ljava/lang/String; = "Mms/ipmsg/SharePanel"

.field public static final TAKE_PICTURE:I


# instance fields
.field private mColumnArray:[I

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mDotFirst:Landroid/widget/RadioButton;

.field private mDotSec:Landroid/widget/RadioButton;

.field private mHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mScreenIndex:I

.field private mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

.field private mSharePanelMain:Landroid/widget/LinearLayout;

.field private mSource:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/ipmsg/ui/SharePanel;->MMS_ACTIONS:[I

    .line 126
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/ipmsg/ui/SharePanel;->IP_MESSAGE_ACTIONS:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/ipmsg/ui/SharePanel;->IP_MESSAGE_ACTIONS_WITHOUT_SKETCH_AND_LOCATION:[I

    return-void

    .line 122
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 126
    :array_1
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    .line 130
    :array_2
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const v1, 0x7f040060

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mConvertView:Landroid/view/View;

    .line 152
    :goto_0
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    .line 153
    return-void

    .line 150
    :cond_0
    const v1, 0x7f040064

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mConvertView:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/mediatek/ipmsg/ui/SharePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScreenIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mDotFirst:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ipmsg/ui/SharePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ipmsg/ui/SharePanel;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mDotSec:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ipmsg/ui/SharePanel;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/mediatek/ipmsg/ui/SharePanel;->MMS_ACTIONS:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ipmsg/ui/SharePanel;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/SharePanel;->getActionId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/mediatek/ipmsg/ui/SharePanel;->IP_MESSAGE_ACTIONS:[I

    return-object v0
.end method

.method static synthetic access$900()[I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/mediatek/ipmsg/ui/SharePanel;->IP_MESSAGE_ACTIONS_WITHOUT_SKETCH_AND_LOCATION:[I

    return-object v0
.end method

.method private addSharePage(I)V
    .locals 9
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    .line 192
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040061

    iget-object v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f016b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 195
    .local v1, gridView:Landroid/widget/GridView;
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 196
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 197
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I

    if-ne v4, v8, :cond_2

    .line 209
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    aget v4, v4, v7

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 213
    :goto_1
    new-instance v0, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;

    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/SharePanel;->getLableArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/SharePanel;->getIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v4, v5}, Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;-><init>(Lcom/mediatek/ipmsg/ui/SharePanel;[Ljava/lang/String;[I)V

    .line 214
    .local v0, adapter:Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    new-instance v4, Lcom/mediatek/ipmsg/ui/SharePanel$2;

    invoke-direct {v4, p0}, Lcom/mediatek/ipmsg/ui/SharePanel$2;-><init>(Lcom/mediatek/ipmsg/ui/SharePanel;)V

    invoke-virtual {v1, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    return-void

    .line 200
    .end local v0           #adapter:Lcom/mediatek/ipmsg/ui/SharePanel$ShareAdapter;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 203
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 211
    :cond_2
    iget-object v4, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    aget v4, v4, v8

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private getActionId(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 324
    iget v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/lit8 v0, v1, 0x2

    .line 329
    .local v0, onePage:I
    :goto_0
    iget v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScreenIndex:I

    if-nez v1, :cond_1

    .line 332
    .end local p1
    :goto_1
    return p1

    .line 327
    .end local v0           #onePage:I
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    aget v0, v1, v2

    .restart local v0       #onePage:I
    goto :goto_0

    .line 332
    :cond_1
    add-int/2addr p1, v0

    goto :goto_1
.end method

.method private getIconArray(I)[I
    .locals 9
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    .line 294
    sget-object v5, Lcom/android/mms/util/MessageConsts;->shareIconArr:[I

    .line 295
    .local v5, source:[I
    iget-object v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    sget-object v5, Lcom/android/mms/util/MessageConsts;->ipmsgShareIconArr:[I

    .line 301
    :cond_0
    iget v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I

    if-ne v6, v8, :cond_1

    .line 302
    iget-object v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    mul-int/lit8 v4, v6, 0x2

    .line 306
    .local v4, onePage:I
    :goto_0
    if-nez p1, :cond_2

    .line 307
    new-array v2, v4, [I

    .line 308
    .local v2, index0:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 309
    aget v6, v5, v1

    aput v6, v2, v1

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    .end local v1           #i:I
    .end local v2           #index0:[I
    .end local v4           #onePage:I
    :cond_1
    iget-object v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    aget v4, v6, v8

    .restart local v4       #onePage:I
    goto :goto_0

    .line 313
    :cond_2
    array-length v6, v5

    sub-int v0, v6, v4

    .line 314
    .local v0, count:I
    new-array v3, v0, [I

    .line 315
    .local v3, index1:[I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 316
    add-int v6, v4, v1

    aget v6, v5, v6

    aput v6, v3, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 318
    .end local v0           #count:I
    .end local v3           #index1:[I
    :cond_4
    return-object v2
.end method

.method private getLableArray(I)[Ljava/lang/String;
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    .line 263
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;

    .line 272
    :goto_0
    iget v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I

    if-ne v5, v7, :cond_1

    .line 273
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-int/lit8 v4, v5, 0x2

    .line 277
    .local v4, onePage:I
    :goto_1
    if-nez p1, :cond_2

    .line 278
    new-array v2, v4, [Ljava/lang/String;

    .line 279
    .local v2, index0:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 280
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v2, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    .end local v1           #i:I
    .end local v2           #index0:[Ljava/lang/String;
    .end local v4           #onePage:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mColumnArray:[I

    aget v4, v5, v7

    .restart local v4       #onePage:I
    goto :goto_1

    .line 284
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;

    array-length v5, v5

    sub-int v0, v5, v4

    .line 285
    .local v0, count:I
    new-array v3, v0, [Ljava/lang/String;

    .line 286
    .local v3, index1:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 287
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;

    add-int v6, v4, v1

    aget-object v5, v5, v6

    aput-object v5, v3, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object v2, v3

    .line 289
    .end local v0           #count:I
    .end local v3           #index1:[Ljava/lang/String;
    :cond_4
    return-object v2
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 158
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mConvertView:Landroid/view/View;

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/LevelControlLayout;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    .line 159
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mConvertView:Landroid/view/View;

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mConvertView:Landroid/view/View;

    const v1, 0x7f0f00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mDotFirst:Landroid/widget/RadioButton;

    .line 161
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mConvertView:Landroid/view/View;

    const v1, 0x7f0f00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mDotSec:Landroid/widget/RadioButton;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/ipmsg/ui/SharePanel;->resetShareItem()V

    .line 163
    return-void
.end method

.method public recycleView()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 344
    :cond_0
    return-void
.end method

.method public resetShareItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mOrientation:I

    .line 167
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 170
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ipmsg/ui/SharePanel;->addSharePage(I)V

    .line 171
    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/SharePanel;->addSharePage(I)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v1, Lcom/mediatek/ipmsg/ui/SharePanel$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ipmsg/ui/SharePanel$1;-><init>(Lcom/mediatek/ipmsg/ui/SharePanel;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScreenIndex:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/LevelControlLayout;->autoRecovery()V

    .line 188
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/SharePanel;->mHandler:Landroid/os/Handler;

    .line 338
    return-void
.end method
