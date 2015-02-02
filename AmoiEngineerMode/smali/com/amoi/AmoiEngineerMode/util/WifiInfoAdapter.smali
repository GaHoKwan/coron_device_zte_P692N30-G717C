.class public Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->clearItem()V

    .line 32
    return-void
.end method

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
            "Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public addItem(Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public clearItem()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v6, -0xff0100

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, holder:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;
    new-instance v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;

    .end local v1           #holder:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;-><init>(Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;)V

    .line 77
    .restart local v1       #holder:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 78
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030035

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    const v3, 0x7f07009d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mSsid:Landroid/widget/TextView;

    .line 80
    const v3, 0x7f07009e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mRssi:Landroid/widget/TextView;

    .line 81
    const v3, 0x7f07009f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mMac:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;

    .line 87
    .local v2, item:Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;
    iget-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mRssi:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->getRssi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mMac:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v2}, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, SSID:Ljava/lang/String;
    const-string v3, "TP-LINK_9229DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TP-LINK_8F5D7C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AMOI_RD_TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    iget-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mRssi:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v3, v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mMac:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_1
    return-object p2

    .line 84
    .end local v0           #SSID:Ljava/lang/String;
    .end local v2           #item:Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;
    check-cast v1, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setRssi(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "rssi"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;

    invoke-virtual {v0, p2}, Lcom/amoi/AmoiEngineerMode/util/Wifi_Item;->setRssi(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;->notifyDataSetChanged()V

    .line 52
    :cond_0
    return-void
.end method
