.class public Lcom/android/mms/ui/MmsPlayerActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "MmsPlayerActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;
    }
.end annotation


# static fields
.field private static final EXTRA_FULLSCREEN_NOTIFICATION:Ljava/lang/String; = "mediatek.intent.extra.FULLSCREEN_NOTIFICATION"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/MmsPlayerAdapter"


# instance fields
.field private mAllCount:I

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MmsPlayerActivityItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemViewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private parser:Lcom/android/mms/util/SmileyParser2;

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MmsPlayerActivityItemData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MmsPlayerActivityItemData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->textSize:F

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    .line 125
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->parser:Lcom/android/mms/util/SmileyParser2;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 139
    iput-object p2, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mAllCount:I

    .line 141
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/regex/Pattern;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "highlightPattern"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MmsPlayerActivityItemData;",
            ">;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MmsPlayerActivityItemData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->textSize:F

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    .line 125
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->parser:Lcom/android/mms/util/SmileyParser2;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 360
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 361
    iput-object p2, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mAllCount:I

    .line 363
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;

    .line 364
    iput-object p3, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 365
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPlayerActivityAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setHighlightText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 368
    const-string v2, "Mms/MmsPlayerAdapter"

    const-string v3, " setHighlightText"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 371
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->parser:Lcom/android/mms/util/SmileyParser2;

    invoke-virtual {v2, p2}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 374
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void
.end method


# virtual methods
.method public clearAllCache()V
    .locals 5

    .prologue
    .line 313
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, itemView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 316
    .local v2, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemView:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 317
    .restart local v1       #itemView:Landroid/view/View;
    const v4, 0x7f0f0094

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    .line 319
    .local v3, mImage:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 321
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #mImage:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 323
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #itemView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mAllCount:I

    return v0
.end method

.method public getItem(I)Lcom/android/mms/ui/MmsPlayerActivityItemData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsPlayerActivityItemData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->getItem(I)Lcom/android/mms/ui/MmsPlayerActivityItemData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getListItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MmsPlayerActivityItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 34
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 169
    const-string v29, "Mms/MmsPlayerAdapter"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getView, for position "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/ui/MmsPlayerActivityItem;

    .line 171
    .local v13, itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    if-eqz v13, :cond_2

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/mms/ui/MmsPlayerActivityItemData;

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getText()Ljava/lang/String;

    move-result-object v25

    .line 173
    .local v25, text:Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 174
    invoke-virtual {v13}, Lcom/android/mms/ui/MmsPlayerActivityItem;->getCurrentTextView()Landroid/widget/TextView;

    move-result-object v21

    .line 175
    .local v21, mText:Landroid/widget/TextView;
    const-string v30, "Mms/MmsPlayerAdapter"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getView(): text view is null? "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    if-nez v21, :cond_1

    const/16 v29, 0x1

    :goto_0
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->textSize:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_0

    .line 177
    const-string v29, "Mms/MmsPlayerAdapter"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getView(): before set text size, textSize = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTextSize()F

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->textSize:F

    move/from16 v29, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    const-string v29, "Mms/MmsPlayerAdapter"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getView(): after set text size, textSize = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTextSize()F

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v21           #mText:Landroid/widget/TextView;
    :cond_0
    const-string v29, "Mms/MmsPlayerAdapter"

    const-string v30, "getView(): from cache."

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v13

    .line 309
    .end local v13           #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    .local v14, itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    :goto_1
    return-object v14

    .line 175
    .end local v14           #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    .restart local v13       #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    .restart local v21       #mText:Landroid/widget/TextView;
    :cond_1
    const/16 v29, 0x0

    goto :goto_0

    .line 185
    .end local v21           #mText:Landroid/widget/TextView;
    .end local v25           #text:Ljava/lang/String;
    :cond_2
    const-string v29, "Mms/MmsPlayerAdapter"

    const-string v30, "getView(): create new one."

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mFactory:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f040045

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .end local v13           #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    check-cast v13, Lcom/android/mms/ui/MmsPlayerActivityItem;

    .line 189
    .restart local v13       #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    const v29, 0x7f0f0123

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 190
    .local v20, mPageIndex:Landroid/widget/TextView;
    const v29, 0x7f0f0094

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;

    .line 192
    .local v19, mImage:Lcom/mediatek/encapsulation/com/mediatek/banyan/widget/EncapsulatedMTKImageView;
    const v29, 0x7f0f0128

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 193
    .local v22, mVideo:Landroid/widget/ImageView;
    const v29, 0x7f0f0129

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 194
    .local v23, mVideoPlayBtn:Landroid/widget/ImageView;
    const v29, 0x7f0f0095

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 195
    .local v16, mAudio:Landroid/view/View;
    const v29, 0x7f0f0019

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 196
    .local v18, mAudioName:Landroid/widget/TextView;
    const v29, 0x7f0f0125

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 197
    .local v17, mAudioIcon:Landroid/widget/ImageView;
    const v29, 0x7f0f0126

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 199
    .restart local v21       #mText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/ui/MmsPlayerActivityItemData;

    .line 202
    .local v12, item:Lcom/android/mms/ui/MmsPlayerActivityItemData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0b00fe

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, p1, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, index:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getImageUri()Landroid/net/Uri;

    move-result-object v10

    .line 207
    .local v10, imageUri:Landroid/net/Uri;
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getImageType()Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, imageType:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 209
    const-string v29, "Mms/MmsPlayerAdapter"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "MmsplayerActivity set image: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageUtils;->checkImageOK(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageUtils;->getDefaultBrokenImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    :goto_2
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    const/16 v29, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 217
    new-instance v29, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v10, v9, v2}, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;-><init>(Lcom/android/mms/ui/MmsPlayerActivityAdapter;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :goto_3
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v24

    .line 224
    .local v24, t:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getVideoUri()Landroid/net/Uri;

    move-result-object v28

    .line 225
    .local v28, videoUri:Landroid/net/Uri;
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getVideoType()Ljava/lang/String;

    move-result-object v27

    .line 226
    .local v27, videoType:Ljava/lang/String;
    if-eqz v24, :cond_a

    .line 227
    const-string v29, "Mms/MmsPlayerAdapter"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "MmsplayerActivity set video: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 232
    new-instance v29, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;-><init>(Lcom/android/mms/ui/MmsPlayerActivityAdapter;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :goto_4
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getAudioName()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, audioName:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getAudioUri()Landroid/net/Uri;

    move-result-object v7

    .line 239
    .local v7, audioUri:Landroid/net/Uri;
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getAudioType()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, audioType:Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 241
    const-string v29, "Mms/MmsPlayerAdapter"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "MmsplayerActivity show audio name:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const/high16 v29, 0x4190

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 244
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 249
    if-eqz v6, :cond_4

    const-string v29, "application/oct-stream"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "application/octet-stream"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 251
    :cond_3
    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, extension:Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v29, "ogg"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 253
    const-string v6, "application/ogg"

    .line 256
    .end local v8           #extension:Ljava/lang/String;
    :cond_4
    new-instance v29, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v6, v5}, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;-><init>(Lcom/android/mms/ui/MmsPlayerActivityAdapter;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :goto_5
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getText()Ljava/lang/String;

    move-result-object v25

    .line 264
    .restart local v25       #text:Ljava/lang/String;
    if-nez v10, :cond_5

    if-eqz v24, :cond_6

    :cond_5
    if-eqz v25, :cond_6

    .line 265
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getImageOrVideoLeft()I

    move-result v29

    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextLeft()I

    move-result v30

    sub-int v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 266
    .local v15, leftAbs:I
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getImageOrVideoTop()I

    move-result v29

    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextTop()I

    move-result v30

    sub-int v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v26

    .line 267
    .local v26, topAbs:I
    move/from16 v0, v26

    if-le v15, v0, :cond_f

    .line 268
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getImageOrVideoLeft()I

    move-result v29

    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextLeft()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_d

    .line 269
    const v29, 0x7f0f0127

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #mText:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 270
    .restart local v21       #mText:Landroid/widget/TextView;
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextWidth()I

    move-result v29

    if-lez v29, :cond_c

    .line 271
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextWidth()I

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 287
    .end local v15           #leftAbs:I
    .end local v26           #topAbs:I
    :cond_6
    :goto_6
    if-eqz v25, :cond_11

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object/from16 v29, v0

    if-eqz v29, :cond_10

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->setHighlightText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 295
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->textSize:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->textSize:F

    move/from16 v29, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 298
    :cond_7
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->setExtendUrlSpan(Landroid/widget/TextView;)V

    .line 303
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/MmsPlayerActivityItem;->setCurrentTextView(Landroid/widget/TextView;)V

    .line 308
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mListItemViewCache:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v13

    .line 309
    .end local v13           #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    .restart local v14       #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    goto/16 :goto_1

    .line 213
    .end local v5           #audioName:Ljava/lang/String;
    .end local v6           #audioType:Ljava/lang/String;
    .end local v7           #audioUri:Landroid/net/Uri;
    .end local v14           #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    .end local v24           #t:Landroid/graphics/Bitmap;
    .end local v25           #text:Ljava/lang/String;
    .end local v27           #videoType:Ljava/lang/String;
    .end local v28           #videoUri:Landroid/net/Uri;
    .restart local v13       #itemView:Lcom/android/mms/ui/MmsPlayerActivityItem;
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 219
    :cond_9
    const/16 v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 234
    .restart local v24       #t:Landroid/graphics/Bitmap;
    .restart local v27       #videoType:Ljava/lang/String;
    .restart local v28       #videoUri:Landroid/net/Uri;
    :cond_a
    const/16 v29, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 258
    .restart local v5       #audioName:Ljava/lang/String;
    .restart local v6       #audioType:Ljava/lang/String;
    .restart local v7       #audioUri:Landroid/net/Uri;
    :cond_b
    const/16 v29, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    const/16 v29, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 273
    .restart local v15       #leftAbs:I
    .restart local v25       #text:Ljava/lang/String;
    .restart local v26       #topAbs:I
    :cond_c
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getImageOrVideoLeft()I

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_6

    .line 276
    :cond_d
    const v29, 0x7f0f012a

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #mText:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 277
    .restart local v21       #mText:Landroid/widget/TextView;
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextWidth()I

    move-result v29

    if-lez v29, :cond_e

    .line 278
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextWidth()I

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_6

    .line 280
    :cond_e
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextLeft()I

    move-result v29

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_6

    .line 283
    :cond_f
    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getTextTop()I

    move-result v29

    invoke-virtual {v12}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getImageOrVideoTop()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_6

    .line 284
    const v29, 0x7f0f012b

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #mText:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .restart local v21       #mText:Landroid/widget/TextView;
    goto/16 :goto_6

    .line 292
    .end local v15           #leftAbs:I
    .end local v26           #topAbs:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->parser:Lcom/android/mms/util/SmileyParser2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 305
    :cond_11
    const/16 v29, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 146
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->textSize:F

    .line 135
    return-void
.end method
