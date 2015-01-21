.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/AbsoluteLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;
.implements Lcom/mediatek/mms/ext/IMmsSlideShowHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$TextMenuClickListener;,
        Lcom/android/mms/ui/SlideView$Position;
    }
.end annotation


# static fields
.field private static final AUDIO_INFO_HEIGHT:I = 0x52

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x4

.field private static final MENU_ADD_TO_BOOKMARK:I = 0x2

.field private static final MENU_ADD_TO_CONTACTS:I = 0x3

.field private static final MENU_CALL_BACK:I = 0x6

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x1

.field private static final MENU_SELECT_TEXT:I = 0x8

.field private static final MENU_SEND_EMAIL:I = 0x5

.field private static final MENU_SEND_SMS:I = 0x7

.field private static final M_TAG:Ljava/lang/String; = "Mms/SlideView"

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlideView"


# instance fields
.field private isShow:Z

.field private mActivity:Landroid/app/Activity;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mConformanceMode:Z

.field private mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

.field private mIsHasDrmAudio:Z

.field private mIsPrepared:Z

.field private mMediaController:Lcom/android/mms/ui/MmsMediaController;

.field private mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

.field private mPageDividerView:Landroid/view/View;

.field private mPageIndex:Landroid/widget/TextView;

.field private mParser:Lcom/android/mms/util/SmileyParser2;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScrollText:Landroid/widget/ScrollView;

.field private mScrollViewPort:Landroid/widget/ScrollView;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private final mTextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mTextView:Landroid/widget/TextView;

.field private mURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoView:Landroid/widget/VideoView;

.field private mViewPort:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;

    .line 149
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mParser:Lcom/android/mms/util/SmileyParser2;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsHasDrmAudio:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->isShow:Z

    .line 157
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 846
    new-instance v0, Lcom/android/mms/ui/SlideView$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$5;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;

    .line 149
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mParser:Lcom/android/mms/util/SmileyParser2;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsHasDrmAudio:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->isShow:Z

    .line 157
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 846
    new-instance v0, Lcom/android/mms/ui/SlideView$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$5;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 185
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideView;Landroid/view/ContextMenu;Lcom/android/mms/ui/SlideView$TextMenuClickListener;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SlideView;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/SlideView$TextMenuClickListener;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/MmsMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->isShow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->isShow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/SlideView$TextMenuClickListener;Ljava/lang/CharSequence;)V
    .locals 22
    .parameter "menu"
    .parameter "l"
    .parameter "text"

    .prologue
    .line 918
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v15, textToSpannify:Ljava/lang/StringBuilder;
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 921
    new-instance v10, Landroid/text/SpannableString;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 922
    .local v10, msg:Landroid/text/SpannableString;
    const/16 v18, 0xf

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 923
    const/16 v18, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v19

    const-class v20, Landroid/text/style/URLSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/URLSpan;

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v17

    .line 925
    .local v17, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 926
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_a

    .line 927
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 929
    .local v16, uriString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 930
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 932
    :cond_1
    const-string v11, ""

    .line 933
    .local v11, prefix:Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 934
    .local v14, seperator:I
    if-ltz v14, :cond_3

    .line 935
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 936
    const-string v18, "mailto"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "tel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 937
    :cond_2
    add-int/lit8 v18, v14, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 940
    :cond_3
    const/4 v6, 0x0

    .line 941
    .local v6, addToContacts:Z
    const-string v18, "mailto"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0230

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 944
    .local v12, sendEmailString:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mailto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 946
    .local v8, intent:Landroid/content/Intent;
    const/high16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 947
    const-string v18, "SlideView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "send email number: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/16 v18, 0x0

    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->haveEmailContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_4

    const/4 v6, 0x1

    .line 984
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_0

    .line 986
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.INSERT"

    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 987
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v18, "phone"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0233

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 990
    .local v5, addContactString:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 951
    .end local v5           #addContactString:Ljava/lang/String;
    .restart local v12       #sendEmailString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 952
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :cond_5
    const-string v18, "tel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b022f

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 955
    .local v7, callBackString:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.DIAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "tel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 957
    .restart local v8       #intent:Landroid/content/Intent;
    const/high16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 958
    const-string v18, "SlideView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "call back number: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 963
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\\-"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b002f

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 966
    .local v13, sendSmsString:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.SENDTO"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "smsto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 968
    .local v9, intentSms:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.android.mms.ui.SendMessageToActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 970
    const-string v18, "SlideView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "send sms number: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const/16 v18, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v13}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 975
    .end local v9           #intentSms:Landroid/content/Intent;
    .end local v13           #sendSmsString:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideView;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    const/4 v6, 0x1

    .line 976
    :goto_3
    goto/16 :goto_2

    .line 975
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 978
    .end local v7           #callBackString:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_9

    .line 979
    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const v21, 0x7f0b0026

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 982
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 995
    .end local v6           #addToContacts:Z
    .end local v11           #prefix:Ljava/lang/String;
    .end local v14           #seperator:I
    .end local v16           #uriString:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 9
    .parameter "name"

    .prologue
    const/16 v8, 0x52

    const/4 v7, -0x1

    .line 262
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 264
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f040052

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 265
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 266
    .local v2, height:I
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #height:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v4, 0x7f0f0153

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    .local v0, audioName:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-void

    .line 270
    .end local v0           #audioName:Landroid/widget/TextView;
    .restart local v1       #factory:Landroid/view/LayoutInflater;
    .restart local v2       #height:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x52

    invoke-direct {v4, v7, v8, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private isNumberInContacts(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearImageView()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1035
    :cond_0
    return-void
.end method

.method public displayAudioInfo()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public enableMMSConformanceMode(IIIIII)V
    .locals 19
    .parameter "textLeft"
    .parameter "textTop"
    .parameter "textWidth"
    .parameter "textHeight"
    .parameter "imageLeft"
    .parameter "imageTop"

    .prologue
    .line 625
    const-string v14, "Mms/SlideView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SlideView.enableMMSConformanceMode(): textLeft="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", textTop="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", imageLeft="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", imageTop"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p6

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    if-nez v14, :cond_0

    .line 629
    new-instance v14, Lcom/android/mms/ui/SlideView$2;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 673
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v15, Lcom/android/mms/ui/SlideView$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 693
    :cond_0
    new-instance v12, Ljava/util/TreeMap;

    new-instance v14, Lcom/android/mms/ui/SlideView$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-direct {v12, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 713
    .local v12, viewsByPosition:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Lcom/android/mms/ui/SlideView$Position;Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 714
    .local v13, windowM:Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 715
    .local v3, config:Landroid/content/res/Configuration;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 716
    .local v4, defDisplay:Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 720
    .local v7, maxWidth:I
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    .line 721
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 724
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 725
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v15, "message_font_size"

    const/high16 v16, 0x4190

    invoke-static/range {v14 .. v16}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v9

    .line 727
    .local v9, textSize:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 731
    .end local v9           #textSize:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SlideView;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/mediatek/mms/ext/IMmsSlideShow;->configTextView(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v15, -0x100

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 736
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v15, 0x5

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x5

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 739
    sub-int v14, p5, p1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 740
    .local v6, leftAbs:I
    sub-int v14, p6, p2

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 741
    .local v10, topAbs:I
    if-le v6, v10, :cond_2

    .line 742
    if-lez p3, :cond_5

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 753
    :cond_2
    :goto_0
    new-instance v14, Lcom/android/mms/ui/SlideView$Position;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v14, v0, v1, v2}, Lcom/android/mms/ui/SlideView$Position;-><init>(Lcom/android/mms/ui/SlideView;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v14, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .end local v6           #leftAbs:I
    .end local v10           #topAbs:I
    :cond_3
    if-ltz p5, :cond_4

    if-ltz p6, :cond_4

    .line 759
    new-instance v14, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    .line 762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/view/View;->setPadding(IIII)V

    .line 764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 766
    new-instance v14, Lcom/android/mms/ui/SlideView$Position;

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/android/mms/ui/SlideView$Position;-><init>(Lcom/android/mms/ui/SlideView;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v12, v14, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    new-instance v14, Landroid/widget/VideoView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 774
    new-instance v14, Lcom/android/mms/ui/SlideView$Position;

    add-int/lit8 v15, p5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v14, v0, v15, v1}, Lcom/android/mms/ui/SlideView$Position;-><init>(Lcom/android/mms/ui/SlideView;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v12, v14, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView;->initPageDivider()V

    .line 778
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    const/high16 v15, 0x41c8

    mul-float/2addr v14, v15

    const/high16 v15, 0x4080

    add-float/2addr v14, v15

    float-to-int v8, v14

    .line 779
    .local v8, statusBarHeight:I
    invoke-virtual {v12}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 780
    .local v11, view:Landroid/view/View;
    instance-of v14, v11, Landroid/widget/VideoView;

    if-eqz v14, :cond_7

    .line 781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v17

    sub-int v17, v17, v8

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    :goto_2
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 745
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #statusBarHeight:I
    .end local v11           #view:Landroid/view/View;
    .restart local v6       #leftAbs:I
    .restart local v10       #topAbs:I
    :cond_5
    move/from16 v0, p1

    move/from16 v1, p5

    if-le v0, v1, :cond_6

    .line 746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    sub-int v15, v7, p1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0

    .line 747
    :cond_6
    if-lez p5, :cond_2

    .line 748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0

    .line 784
    .end local v6           #leftAbs:I
    .end local v10           #topAbs:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #statusBarHeight:I
    .restart local v11       #view:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 789
    .end local v11           #view:Landroid/view/View;
    :cond_8
    return-void
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initPageDivider()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/16 v3, 0x8

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 1006
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1007
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1008
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f040053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    .line 1009
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    invoke-virtual {v1, v3, v7, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1010
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    .end local v0           #factory:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    const v2, 0x7f0f0123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageIndex:Landroid/widget/TextView;

    .line 1020
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    return-void

    .line 1014
    .restart local v0       #factory:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    add-int/lit8 v1, p2, -0x52

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 579
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 482
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 517
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsHasDrmAudio:Z

    if-eqz v0, :cond_3

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 546
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_4

    .line 547
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopVideo()V

    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    if-eqz v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollViewPort:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 561
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 563
    :cond_7
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 521
    if-lez p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 528
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mActivity:Landroid/app/Activity;

    .line 844
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 298
    if-nez p1, :cond_0

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 308
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 309
    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 313
    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 316
    iput v3, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    .line 317
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 319
    iput v3, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    .line 322
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 323
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 324
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 325
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 334
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsHasDrmAudio:Z

    .line 339
    :goto_1
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 329
    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 337
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mIsHasDrmAudio:Z

    goto :goto_1
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 6
    .parameter "imageUri"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 803
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-nez v2, :cond_0

    .line 805
    new-instance v2, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    .line 806
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 807
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 808
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    if-nez p1, :cond_1

    .line 817
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 819
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v2, v0}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/mms/ui/MessageUtils;->checkImageOK(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 824
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getDefaultBrokenImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "SlideView"

    const-string v3, "setImage: out of memory: "

    invoke-static {v2, v3, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 826
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v2, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x5

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    .line 193
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v1, v3, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :cond_0
    if-nez p2, :cond_1

    .line 202
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    invoke-virtual {v1, p2}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "SlideView"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 221
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-eqz v1, :cond_0

    .line 411
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    :cond_0
    :goto_1
    return-void

    .line 412
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public setMediaController(Lcom/android/mms/ui/MmsMediaController;)V
    .locals 0
    .parameter "mediaController"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMediaController:Lcom/android/mms/ui/MmsMediaController;

    .line 259
    return-void
.end method

.method public setMmsSlideShowPlugin(Lcom/mediatek/mms/ext/IMmsSlideShow;)V
    .locals 1
    .parameter "plugin"

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    .line 837
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    invoke-interface {v0, p0}, Lcom/mediatek/mms/ext/IMmsSlideShow;->init(Lcom/mediatek/mms/ext/IMmsSlideShowHost;)V

    .line 838
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 583
    return-void
.end method

.method public setPageDividerView(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageDividerView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageIndex:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->initPageDivider()V

    .line 1026
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00fe

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, page:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPageIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "text"

    .prologue
    const/16 v5, 0xf

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 342
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    .line 344
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 347
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 349
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 356
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 358
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "message_font_size"

    const/high16 v3, 0x4190

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 361
    .local v0, textSize:F
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 365
    .end local v0           #textSize:F
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/mms/ext/IMmsSlideShow;->configTextView(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 369
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 372
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 373
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 374
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 375
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 382
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 383
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mParser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {v2, p2}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setExtendUrlSpan(Landroid/widget/TextView;)V

    .line 394
    return-void
.end method

.method public setTextRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v0, 0x0

    .line 420
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_0
    :goto_1
    return-void

    .line 422
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "name"
    .parameter "video"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/SlideView;->setImage(Landroid/net/Uri;)V

    .line 255
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMmsSlideShowPlugin:Lcom/mediatek/mms/ext/IMmsSlideShow;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsSlideShow;->configVideoView(Landroid/widget/VideoView;)V

    goto :goto_0
.end method

.method public setVideoRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    :cond_0
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 792
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 431
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mConformanceMode:Z

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 437
    :cond_0
    :goto_1
    return-void

    .line 432
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 567
    return-void
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 447
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsHasDrmAudio:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    goto :goto_0
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 499
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v1, :cond_1

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 461
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 462
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 470
    :cond_0
    :goto_1
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "SlideView"

    const-string v2, "stopAudio IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 466
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsHasDrmAudio:Z

    if-eqz v1, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    goto :goto_1
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 508
    :cond_0
    return-void
.end method
