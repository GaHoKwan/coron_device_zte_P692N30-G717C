.class Lcom/hf/UI/VideoActivity$VideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/VideoActivity;


# direct methods
.method private constructor <init>(Lcom/hf/UI/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/hf/UI/VideoActivity$VideoAdapter;->this$0:Lcom/hf/UI/VideoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/UI/VideoActivity;Lcom/hf/UI/VideoActivity$VideoAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/hf/UI/VideoActivity$VideoAdapter;-><init>(Lcom/hf/UI/VideoActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$VideoAdapter;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$0(Lcom/hf/UI/VideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$VideoAdapter;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$0(Lcom/hf/UI/VideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v6, 0x7f0200fa

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, holder:Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 167
    iget-object v3, p0, Lcom/hf/UI/VideoActivity$VideoAdapter;->this$0:Lcom/hf/UI/VideoActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 168
    new-instance v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;

    .end local v0           #holder:Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;-><init>(Lcom/hf/UI/VideoActivity$VideoAdapter;)V

    .line 169
    .restart local v0       #holder:Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;
    const v3, 0x7f0b00ba

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoTitle:Landroid/widget/TextView;

    .line 170
    const v3, 0x7f0b00b9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    .line 171
    const v3, 0x7f0b00bc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoSize:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/hf/UI/VideoActivity$VideoAdapter;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/hf/UI/VideoActivity;->access$0(Lcom/hf/UI/VideoActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/VideoModel;

    .line 178
    .local v1, model:Lcom/hf/model/VideoModel;
    iget-object v3, p0, Lcom/hf/UI/VideoActivity$VideoAdapter;->this$0:Lcom/hf/UI/VideoActivity;

    invoke-static {v3}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoTitle:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/hf/model/VideoModel;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_1
    const-string v3, "0"

    iget-object v4, v1, Lcom/hf/model/VideoModel;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :cond_0
    :goto_2
    const-string v2, "2MB"

    .line 206
    .local v2, size:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/UI/VideoActivity$VideoAdapter;->this$0:Lcom/hf/UI/VideoActivity;

    iget v4, v1, Lcom/hf/model/VideoModel;->size:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 208
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoSize:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-object p2

    .line 174
    .end local v1           #model:Lcom/hf/model/VideoModel;
    .end local v2           #size:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;
    check-cast v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;
    goto :goto_0

    .line 181
    .restart local v1       #model:Lcom/hf/model/VideoModel;
    :cond_2
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoTitle:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/hf/model/VideoModel;->englishName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_3
    const-string v3, "1"

    iget-object v4, v1, Lcom/hf/model/VideoModel;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 187
    :cond_4
    const-string v3, "2"

    iget-object v4, v1, Lcom/hf/model/VideoModel;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    const v4, 0x7f0200fb

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 189
    :cond_5
    const-string v3, "3"

    iget-object v4, v1, Lcom/hf/model/VideoModel;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    const v4, 0x7f0200f7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 191
    :cond_6
    const-string v3, "4"

    iget-object v4, v1, Lcom/hf/model/VideoModel;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, v0, Lcom/hf/UI/VideoActivity$VideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    const v4, 0x7f0200f9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
