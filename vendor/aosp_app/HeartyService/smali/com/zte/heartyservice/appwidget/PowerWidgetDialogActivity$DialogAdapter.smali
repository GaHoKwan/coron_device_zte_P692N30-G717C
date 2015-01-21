.class Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerWidgetDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogAdapter"
.end annotation


# static fields
.field private static final COUNT:I = 0x4


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 135
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 136
    iput-object p2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->mContext:Landroid/content/Context;

    .line 137
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->titles:[Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 154
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 160
    new-instance v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;)V

    .line 161
    .local v0, holder:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 163
    new-instance v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;)V

    .line 165
    .restart local v0       #holder:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;
    const v1, 0x7f0e02d6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f0e02d7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;->button:Landroid/widget/RadioButton;

    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    :goto_0
    invoke-static {p2, p1, v4}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 175
    iget-object v1, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->titles:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;->button:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    iget-object v1, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;->button:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$500(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 179
    iget-object v1, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;->button:Landroid/widget/RadioButton;

    new-instance v2, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;-><init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    return-object p2

    .line 171
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;
    check-cast v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$ViewHolder;
    goto :goto_0
.end method
