.class public Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmoticonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EmoticonAdapter"
.end annotation


# instance fields
.field protected mIconArr:[I

.field final synthetic this$0:Lcom/android/mms/ui/EmoticonPanel;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/EmoticonPanel;[I)V
    .locals 0
    .parameter
    .parameter "iconArray"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;->mIconArr:[I

    .line 255
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;->mIconArr:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 264
    if-nez p2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonPanel;->access$500(Lcom/android/mms/ui/EmoticonPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 267
    invoke-virtual {p2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    :goto_0
    const v1, 0x7f0f0086

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 274
    .local v0, ivPre:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;->mIconArr:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    return-object p2

    .line 269
    .end local v0           #ivPre:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/View;

    .restart local p2
    goto :goto_0
.end method
