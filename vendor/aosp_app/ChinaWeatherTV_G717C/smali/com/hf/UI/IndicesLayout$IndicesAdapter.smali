.class Lcom/hf/UI/IndicesLayout$IndicesAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndicesLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/IndicesLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/Indices;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hf/UI/IndicesLayout;


# direct methods
.method private constructor <init>(Lcom/hf/UI/IndicesLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/UI/IndicesLayout;Lcom/hf/UI/IndicesLayout$IndicesAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/hf/UI/IndicesLayout$IndicesAdapter;-><init>(Lcom/hf/UI/IndicesLayout;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 160
    if-nez p2, :cond_1

    .line 161
    new-instance v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;-><init>(Lcom/hf/UI/IndicesLayout$IndicesAdapter;Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;)V

    .line 162
    .local v0, holder:Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;
    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/hf/UI/IndicesLayout;->access$0(Lcom/hf/UI/IndicesLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030014

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 163
    const v4, 0x7f0b005f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesLayout:Landroid/widget/RelativeLayout;

    .line 164
    const v4, 0x7f0b0063

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mNullIndicesLayout:Landroid/widget/RelativeLayout;

    .line 165
    const v4, 0x7f0b0060

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesName:Landroid/widget/TextView;

    .line 166
    const v4, 0x7f0b0061

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    .line 167
    const v4, 0x7f0b0062

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesImage:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    :goto_0
    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->mList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    :cond_0
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mNullIndicesLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndices:Lcom/hf/model/Indices;

    .line 231
    :goto_1
    return-object p2

    .line 171
    .end local v0           #holder:Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;
    goto :goto_0

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 181
    .local v3, len:I
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_3

    .line 182
    const-string v4, "IndicesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mList.len = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    if-ge p1, v3, :cond_b

    .line 187
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mNullIndicesLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/Indices;

    .line 191
    .local v1, indice:Lcom/hf/model/Indices;
    if-eqz v1, :cond_a

    .line 192
    iget-object v5, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesName:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v4}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v4, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    iget-object v8, v1, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\uff1a"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/hf/model/Indices;->indicesCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v5, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesImage:Landroid/widget/ImageView;

    sget-object v4, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    iget-object v6, v1, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/hf/model/Indices;->brief:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, v1, Lcom/hf/model/Indices;->brief:Ljava/lang/String;

    .line 199
    .local v2, indiceBrief:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v4}, Lcom/hf/UI/IndicesLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 201
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v6}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x40a0

    mul-float/2addr v6, v7

    const/high16 v7, 0x40c0

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 207
    :goto_2
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 219
    :goto_3
    iput-object v1, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndices:Lcom/hf/model/Indices;

    goto/16 :goto_1

    .line 202
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 203
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v6}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x40a0

    mul-float/2addr v6, v7

    const/high16 v7, 0x40e0

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 205
    :cond_5
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v6}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 209
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-gt v4, v5, :cond_7

    .line 210
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v6}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x40a0

    mul-float/2addr v6, v7

    const/high16 v7, 0x40e0

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 211
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_8

    .line 212
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v6}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x4080

    mul-float/2addr v6, v7

    const/high16 v7, 0x40e0

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    .line 213
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_9

    .line 214
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v6}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x4040

    mul-float/2addr v6, v7

    const/high16 v7, 0x40e0

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    .line 216
    :cond_9
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesBrief:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v6}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    .line 221
    .end local v2           #indiceBrief:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndices:Lcom/hf/model/Indices;

    goto/16 :goto_1

    .line 225
    .end local v1           #indice:Lcom/hf/model/Indices;
    :cond_b
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndices:Lcom/hf/model/Indices;

    .line 226
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mNullIndicesLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    iget-object v4, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndicesLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/Indices;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/Indices;>;"
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "IndicesActivity"

    const-string v1, "setList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->mList:Ljava/util/List;

    .line 145
    return-void
.end method
