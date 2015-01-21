.class public Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;
    }
.end annotation


# static fields
.field public static final CALL_LOGS_PICK:I = 0x2

.field public static final CONTACTS_GROUP_PICK:I = 0x4

.field public static final CONTACTS_PICK:I = 0x1

.field public static final MANUAL_ADD:I = 0x0

.field public static final MESSAGE_LOGS_PICK:I = 0x3

.field public static final Manner:Ljava/lang/String; = "manner"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


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
            "Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, listdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mDataList:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mContext:Landroid/content/Context;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mDataList:Ljava/util/ArrayList;

    .line 50
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, itemView:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;
    if-nez p2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030070

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;

    .end local v1           #itemView:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;
    invoke-direct {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;-><init>()V

    .line 83
    .restart local v1       #itemView:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;
    const v2, 0x7f0e0003

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->layout:Landroid/widget/LinearLayout;

    .line 84
    const v2, 0x7f0e013e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->title:Landroid/widget/TextView;

    .line 85
    const v2, 0x7f0e013f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->info:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0e0144

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->time:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0e0058

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->checkBox:Landroid/widget/CheckBox;

    .line 88
    const v2, 0x7f0e0145

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->checkarea:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    .line 95
    .local v0, item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getTitleText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->info:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getInfoText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->time:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getTimeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 101
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->checkarea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 102
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->isSingleSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;->checkarea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    :cond_0
    return-object p2

    .line 91
    .end local v0           #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemView:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;
    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;

    .restart local v1       #itemView:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter$ItemView;
    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, listdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->mDataList:Ljava/util/ArrayList;

    .line 55
    return-void
.end method
