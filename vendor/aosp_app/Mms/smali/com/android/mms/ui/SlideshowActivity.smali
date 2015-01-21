.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideshowActivity"

.field private static bNeedResume:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Lcom/android/mms/ui/MmsMediaController;

.field private mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mRotate:Z

.field private mSlideCount:I

.field private mSlideView:Lcom/android/mms/ui/SlideView;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SlideshowActivity;->bNeedResume:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRotate:Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    .line 448
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$200(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/mms/ui/SlideshowActivity;->isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)Lcom/mediatek/mms/ext/IMmsSlideShow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-boolean p0, Lcom/android/mms/ui/SlideshowActivity;->bNeedResume:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    return-object v0
.end method

.method private initMediaController()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 309
    new-instance v2, Lcom/android/mms/ui/MmsMediaController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/MmsMediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    .line 312
    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    .line 313
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsMediaController;->setMediaPlayer(Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;)V

    .line 315
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    const v3, 0x7f0f017a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsMediaController;->setAnchorView(Landroid/view/View;)V

    .line 317
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 318
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    const v3, 0x7f0f00d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    .local v0, currentTime:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    const v3, 0x7f0f00db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 320
    .local v1, time:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    new-instance v3, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    new-instance v4, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MmsMediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 347
    return-void
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 531
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsSlideShow;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsSlideShow;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    .line 532
    const-string v1, "SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsSlideShowPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsSlideShowImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsSlideShowImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    .line 535
    const-string v1, "SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsSlideShowPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 15
    .parameter "smilDoc"

    .prologue
    .line 116
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v2

    .line 117
    .local v2, head:Lorg/w3c/dom/smil/SMILElement;
    if-nez v2, :cond_0

    .line 119
    const/4 v13, 0x0

    .line 185
    :goto_0
    return v13

    .line 121
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 122
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_2

    .line 124
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 126
    :cond_2
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 127
    .local v5, layout:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_3

    const-string v13, "layout"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 129
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 131
    :cond_4
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 132
    .local v7, layoutChildren:Lorg/w3c/dom/NodeList;
    if-nez v7, :cond_5

    .line 134
    const/4 v13, 0x0

    goto :goto_0

    .line 136
    :cond_5
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 137
    .local v11, num:I
    if-gtz v11, :cond_6

    .line 139
    const/4 v13, 0x0

    goto :goto_0

    .line 141
    :cond_6
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v11, :cond_10

    .line 142
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 143
    .local v6, layoutChild:Lorg/w3c/dom/Node;
    if-nez v6, :cond_7

    .line 145
    const/4 v13, 0x0

    goto :goto_0

    .line 147
    :cond_7
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, name:Ljava/lang/String;
    const-string v13, "root-layout"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 141
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    :cond_9
    const-string v13, "region"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 151
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 152
    .local v8, map:Lorg/w3c/dom/NamedNodeMap;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v13

    if-ge v4, v13, :cond_8

    .line 153
    invoke-interface {v8, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 154
    .local v10, node:Lorg/w3c/dom/Node;
    if-nez v10, :cond_a

    .line 155
    const/4 v13, 0x0

    goto :goto_0

    .line 157
    :cond_a
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, attrName:Ljava/lang/String;
    const-string v13, "left"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "top"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "height"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "width"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "fit"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 152
    .end local v10           #node:Lorg/w3c/dom/Node;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    .restart local v10       #node:Lorg/w3c/dom/Node;
    :cond_c
    const-string v13, "id"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 165
    instance-of v13, v10, Lcom/android/mms/dom/AttrImpl;

    if-eqz v13, :cond_d

    .line 166
    check-cast v10, Lcom/android/mms/dom/AttrImpl;

    .end local v10           #node:Lorg/w3c/dom/Node;
    invoke-virtual {v10}, Lcom/android/mms/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 170
    .local v12, value:Ljava/lang/String;
    const-string v13, "Text"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "Image"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 174
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 168
    .end local v12           #value:Ljava/lang/String;
    .restart local v10       #node:Lorg/w3c/dom/Node;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 177
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 182
    .end local v0           #attrName:Ljava/lang/String;
    .end local v4           #j:I
    .end local v8           #map:Lorg/w3c/dom/NamedNodeMap;
    .end local v10           #node:Lorg/w3c/dom/Node;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 185
    .end local v6           #layoutChild:Lorg/w3c/dom/Node;
    .end local v9           #name:Ljava/lang/String;
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 517
    move-object v0, p1

    .line 518
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    .line 548
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 193
    invoke-direct {p0, p0}, Lcom/android/mms/ui/SlideshowActivity;->initPlugin(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setFormat(I)V

    .line 198
    const v4, 0x7f040069

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 201
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 205
    .local v3, msg:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 206
    .local v2, model:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideCount:I

    .line 208
    iget v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideCount:I

    if-nez v4, :cond_0

    .line 209
    const v4, 0x7f0b001b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 210
    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v4
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v2           #model:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "SlideshowActivity"

    const-string v5, "Cannot present the slide show."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 306
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :goto_0
    return-void

    .line 218
    .restart local v2       #model:Lcom/android/mms/model/SlideshowModel;
    :cond_0
    const v4, 0x7f0f017a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SlideView;

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    .line 222
    const-string v4, "SlideshowPresenter"

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-static {v4, p0, v5, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 225
    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mRotate:Z

    .line 229
    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 230
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    .line 231
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SlideView;->setMediaController(Lcom/android/mms/ui/MmsMediaController;)V

    .line 232
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v4, p0}, Lcom/android/mms/ui/SlideView;->setActivity(Landroid/app/Activity;)V

    .line 233
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SlideView;->setMmsSlideShowPlugin(Lcom/mediatek/mms/ext/IMmsSlideShow;)V

    .line 236
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    .line 238
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 420
    sparse-switch p1, :sswitch_data_0

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->show()V

    .line 445
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 433
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 377
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/SlideshowActivity;->bNeedResume:Z

    .line 383
    :cond_2
    :goto_0
    return-void

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    sput-boolean v2, Lcom/android/mms/ui/SlideshowActivity;->bNeedResume:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 579
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 581
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 591
    :cond_1
    sget-boolean v0, Lcom/android/mms/ui/SlideshowActivity;->bNeedResume:Z

    if-nez v0, :cond_2

    .line 592
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRotate:Z

    .line 612
    :goto_0
    return-void

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-nez v0, :cond_3

    .line 597
    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_4

    .line 600
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRotate:Z

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->setStateStart()V

    .line 611
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRotate:Z

    goto :goto_0

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 393
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 395
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->clearImageView()V

    .line 404
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->onStop()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 416
    :cond_2
    return-void

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopWhenReload()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->show()V

    .line 356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 557
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mailto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 574
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to startActivityForResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.email"

    const-string v4, "com.android.email.activity.setup.AccountSetupBasics"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 564
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 565
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 566
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 567
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to startActivityForResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const v2, 0x7f0b0063

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 572
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
