.class public Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountSetupChooseESP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/extension/AccountSetupChooseESP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemCount:I

.field final synthetic this$0:Lcom/mediatek/email/extension/AccountSetupChooseESP;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/extension/AccountSetupChooseESP;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->this$0:Lcom/mediatek/email/extension/AccountSetupChooseESP;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->mItemCount:I

    .line 241
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 242
    #getter for: Lcom/mediatek/email/extension/AccountSetupChooseESP;->mEspDisplayCountLimit:I
    invoke-static {p1}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->access$000(Lcom/mediatek/email/extension/AccountSetupChooseESP;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->mItemCount:I

    .line 243
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->mItemCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 254
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 258
    if-nez p2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 261
    :cond_0
    const v2, 0x7f0f00f1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 262
    .local v0, logoView:Landroid/widget/ImageView;
    const v2, 0x7f0f00f2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 263
    .local v1, othersView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->this$0:Lcom/mediatek/email/extension/AccountSetupChooseESP;

    #getter for: Lcom/mediatek/email/extension/AccountSetupChooseESP;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    invoke-static {v2}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->access$300(Lcom/mediatek/email/extension/AccountSetupChooseESP;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/email/ext/IServerProviderPlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->this$0:Lcom/mediatek/email/extension/AccountSetupChooseESP;

    #getter for: Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPIcons:[I
    invoke-static {v3}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->access$100(Lcom/mediatek/email/extension/AccountSetupChooseESP;)[I

    move-result-object v3

    invoke-static {}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->access$200()[I

    move-result-object v4

    aget v4, v4, p1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v2, p0, Lcom/mediatek/email/extension/AccountSetupChooseESP$MyAdapter;->this$0:Lcom/mediatek/email/extension/AccountSetupChooseESP;

    #getter for: Lcom/mediatek/email/extension/AccountSetupChooseESP;->mESPNames:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->access$400(Lcom/mediatek/email/extension/AccountSetupChooseESP;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->access$200()[I

    move-result-object v3

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-object p2
.end method
