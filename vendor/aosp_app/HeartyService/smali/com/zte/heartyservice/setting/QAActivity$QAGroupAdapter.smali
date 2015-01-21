.class public Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "QAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/QAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QAGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;,
        Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;
    }
.end annotation


# instance fields
.field private mChildInflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mGroupInflater:Landroid/view/LayoutInflater;

.field private mQAGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/setting/QAGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/setting/QAActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/QAActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/setting/QAGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, groups:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/setting/QAGroup;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->this$0:Lcom/zte/heartyservice/setting/QAActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mQAGroups:Ljava/util/List;

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    .line 97
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mGroupInflater:Landroid/view/LayoutInflater;

    .line 98
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mQAGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/setting/QAGroup;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/QAGroup;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 107
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;
    if-nez p4, :cond_0

    .line 135
    iget-object v2, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300d9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 136
    new-instance v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;-><init>(Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;)V

    .line 137
    .restart local v0       #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;
    const v2, 0x7f0e031f

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;->question:Landroid/widget/TextView;

    .line 138
    const v2, 0x7f0e0320

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;->answer:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/setting/QAItem;

    .line 145
    .local v1, item:Lcom/zte/heartyservice/setting/QAItem;
    iget-object v2, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;->question:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/zte/heartyservice/setting/QAItem;->question:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;->answer:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/zte/heartyservice/setting/QAItem;->answer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-object p4

    .line 141
    .end local v1           #item:Lcom/zte/heartyservice/setting/QAItem;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;
    check-cast v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$ChildHolder;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mQAGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/setting/QAGroup;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/QAGroup;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mQAGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mQAGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;
    if-nez p3, :cond_0

    .line 154
    iget-object v1, p0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->mGroupInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 155
    new-instance v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;-><init>(Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;)V

    .line 156
    .restart local v0       #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;
    const v1, 0x7f0e0321

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;->sequence:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f0e0322

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;->category:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f0e02ca

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    .line 159
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    :goto_0
    iget-object v1, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;->sequence:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->getGroupId(I)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;->category:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/setting/QAGroup;

    iget-object v1, v1, Lcom/zte/heartyservice/setting/QAGroup;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    if-eqz p2, :cond_1

    .line 168
    iget-object v1, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    const v2, 0x7f02015d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_1
    return-object p3

    .line 161
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;
    check-cast v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;
    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    const v2, 0x7f02015c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method
