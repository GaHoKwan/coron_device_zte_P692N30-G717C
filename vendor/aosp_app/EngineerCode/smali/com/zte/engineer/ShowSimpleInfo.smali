.class public abstract Lcom/zte/engineer/ShowSimpleInfo;
.super Lcom/zte/engineer/EmActivity;
.source "ShowSimpleInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.ShowSimpleInfo"


# instance fields
.field protected mDefaultClickListener:Landroid/view/View$OnClickListener;

.field private mInfosMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLinerLayout:Landroid/widget/LinearLayout;

.field mParamInfo:Landroid/widget/LinearLayout$LayoutParams;

.field mParamInfo2:Landroid/widget/LinearLayout$LayoutParams;

.field mParamTitle:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 21
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 24
    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    .line 25
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamTitle:Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamInfo:Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamInfo2:Landroid/widget/LinearLayout$LayoutParams;

    .line 302
    new-instance v0, Lcom/zte/engineer/ShowSimpleInfo$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/ShowSimpleInfo$1;-><init>(Lcom/zte/engineer/ShowSimpleInfo;)V

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private insertItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "info"

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x4180

    const/4 v5, 0x0

    .line 57
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, txtvwTitle:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamTitle:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 59
    iget-object v3, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamTitle:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<b/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, txtvwInfo:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    iget-object v3, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamInfo:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 69
    iget-object v3, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamInfo:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, txtvwInfo2:Landroid/widget/TextView;
    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v3, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamInfo2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 75
    iget-object v3, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/engineer/ShowSimpleInfo;->mParamInfo2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method


# virtual methods
.method public addInfoItem(II)V
    .locals 3
    .parameter "titleid"
    .parameter "infoid"

    .prologue
    .line 171
    const-string v0, "Emode.ShowSimpleInfo"

    const-string v1, "addInfoItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "Emode.ShowSimpleInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "Emode.ShowSimpleInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public addInfoItem(ILjava/lang/String;)V
    .locals 3
    .parameter "titleid"
    .parameter "info"

    .prologue
    .line 184
    const-string v0, "Emode.ShowSimpleInfo"

    const-string v1, "addInfoItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v0, "Emode.ShowSimpleInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v0, "Emode.ShowSimpleInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public addInfoItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "info"

    .prologue
    .line 160
    const-string v0, "Emode.ShowSimpleInfo"

    const-string v1, "addInfoItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "Emode.ShowSimpleInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "Emode.ShowSimpleInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method abstract addInfoItems()V
.end method

.method public addItemViews()V
    .locals 4

    .prologue
    .line 47
    iget-object v2, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .local v0, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/zte/engineer/ShowSimpleInfo;->insertItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public getItemCtl(Ljava/lang/String;I)Landroid/view/View;
    .locals 8
    .parameter "title"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 112
    const-string v5, "Emode.ShowSimpleInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemCtl: title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 115
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    .local v2, txtvw:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 117
    .local v3, txtvwinfo:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    packed-switch p2, :pswitch_data_0

    move-object v3, v4

    .line 133
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #txtvw:Landroid/widget/TextView;
    .end local v3           #txtvwinfo:Landroid/widget/TextView;
    :goto_1
    return-object v3

    .line 122
    .restart local v1       #text:Ljava/lang/String;
    .restart local v2       #txtvw:Landroid/widget/TextView;
    .restart local v3       #txtvwinfo:Landroid/widget/TextView;
    :pswitch_0
    iget-object v4, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #txtvwinfo:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 123
    .restart local v3       #txtvwinfo:Landroid/widget/TextView;
    goto :goto_1

    .line 125
    :pswitch_1
    iget-object v4, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #txtvwinfo:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 126
    .restart local v3       #txtvwinfo:Landroid/widget/TextView;
    goto :goto_1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #text:Ljava/lang/String;
    .end local v2           #txtvw:Landroid/widget/TextView;
    .end local v3           #txtvwinfo:Landroid/widget/TextView;
    :cond_1
    move-object v3, v4

    .line 133
    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertInfoItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "info"

    .prologue
    .line 137
    const-string v1, "Emode.ShowSimpleInfo"

    const-string v2, "insertInfoItem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "Emode.ShowSimpleInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "Emode.ShowSimpleInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 145
    :cond_0
    if-nez p1, :cond_1

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, oldInfo:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/zte/engineer/ShowSimpleInfo;->updateInfoItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/zte/engineer/ShowSimpleInfo;->insertItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {p0}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItems()V

    .line 43
    invoke-virtual {p0}, Lcom/zte/engineer/ShowSimpleInfo;->addItemViews()V

    .line 44
    return-void
.end method

.method public showLeftBtn(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/zte/engineer/ShowSimpleInfo;->showLeftBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public showLeftBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "text"
    .parameter "click"

    .prologue
    .line 79
    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, btnLeft:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public showMidBtn(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/zte/engineer/ShowSimpleInfo;->showMidBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public showMidBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "text"
    .parameter "click"

    .prologue
    .line 86
    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, btnMid:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public showRightBtn(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/zte/engineer/ShowSimpleInfo;->showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public showRightBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "text"
    .parameter "click"

    .prologue
    .line 93
    const v1, 0x7f080064

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 94
    .local v0, btnRight:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public updateInfoItem(II)V
    .locals 9
    .parameter "titleid"
    .parameter "infoid"

    .prologue
    .line 265
    iget-object v7, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    if-nez v7, :cond_0

    .line 266
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, info:Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, oldInfo:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 292
    :cond_1
    return-void

    .line 277
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 282
    iget-object v7, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 285
    iget-object v7, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 286
    .local v5, txtvw:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    iget-object v7, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 289
    .local v6, txtvwinfo:Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .end local v6           #txtvwinfo:Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateInfoItem(ILjava/lang/String;)V
    .locals 8
    .parameter "titleid"
    .parameter "info"

    .prologue
    .line 233
    iget-object v6, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    if-nez v6, :cond_0

    .line 234
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    .local v1, oldInfo:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 244
    const-string v6, "Emode.ShowSimpleInfo"

    const-string v7, "same with before, no need update, just return!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_3
    iget-object v6, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v6, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 251
    iget-object v6, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 252
    .local v4, txtvw:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 254
    iget-object v6, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 255
    .local v5, txtvwinfo:Landroid/widget/TextView;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .end local v5           #txtvwinfo:Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateInfoItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "info"

    .prologue
    .line 196
    const-string v5, "Emode.ShowSimpleInfo"

    const-string v6, "updateInfoItem"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v5, "Emode.ShowSimpleInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v5, "Emode.ShowSimpleInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    if-nez v5, :cond_0

    .line 201
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    .line 204
    :cond_0
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, oldInfo:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    const-string v5, "Emode.ShowSimpleInfo"

    const-string v6, "same with before, no need update, just return!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_3
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mInfosMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 219
    .local v3, txtvw:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 221
    iget-object v5, p0, Lcom/zte/engineer/ShowSimpleInfo;->mLinerLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 222
    .local v4, txtvwinfo:Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .end local v4           #txtvwinfo:Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
