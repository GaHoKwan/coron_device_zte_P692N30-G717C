.class Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingSwitchSublistLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingSwitchSublistLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/camera/ui/SettingSwitchSublistLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SettingSwitchSublistLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSwitchSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v0}, Lcom/android/camera/ui/SettingSwitchSublistLayout;->access$000(Lcom/android/camera/ui/SettingSwitchSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getExtendValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->mSelectedIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, holder:Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;
    if-nez p2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSwitchSublistLayout;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/camera/ui/SettingSwitchSublistLayout;->access$100(Lcom/android/camera/ui/SettingSwitchSublistLayout;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040060

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;

    .end local v0           #holder:Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;
    iget-object v1, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;-><init>(Lcom/android/camera/ui/SettingSwitchSublistLayout;Lcom/android/camera/ui/SettingSwitchSublistLayout$1;)V

    .line 92
    .restart local v0       #holder:Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;
    const v1, 0x7f0b0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f0b000e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v1, v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v1, v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v1, v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSwitchSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/SettingSwitchSublistLayout;->access$000(Lcom/android/camera/ui/SettingSwitchSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getExtendValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-object p2

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;
    check-cast v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;

    .restart local v0       #holder:Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;
    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->mSelectedIndex:I

    .line 107
    return-void
.end method
