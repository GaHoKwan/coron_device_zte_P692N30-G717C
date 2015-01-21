.class public Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectedCityListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$1;,
        Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MTKWORLDCHOOSE"


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFlater:Landroid/view/LayoutInflater;

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter "ctx"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->data:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput p3, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->mWidgetId:I

    .line 32
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->mFlater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "pos"
    .parameter "view"
    .parameter "arg2"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 57
    const/4 v1, 0x0

    .local v1, cityNameView:Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 58
    .local v7, weatherIdView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 59
    .local v3, currentCityButton:Landroid/widget/RadioButton;
    const/4 v5, 0x0

    .line 60
    .local v5, viewHolder:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 61
    new-instance v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;

    .end local v5           #viewHolder:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;
    invoke-direct {v5, p0, v10}, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;-><init>(Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$1;)V

    .line 62
    .restart local v5       #viewHolder:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->mFlater:Landroid/view/LayoutInflater;

    const v9, 0x7f030002

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    const v8, 0x7f090005

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;->cityNameView:Landroid/widget/TextView;

    .line 65
    const v8, 0x7f090006

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;->weatherIdView:Landroid/widget/TextView;

    .line 67
    const v8, 0x7f090004

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;->currentCityButton:Landroid/widget/RadioButton;

    .line 69
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 74
    .local v4, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "chooselistviewtextview"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, cityName:Ljava/lang/String;
    const-string v8, "chooselistviewweatherid"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 76
    .local v6, weatherId:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;->mWidgetId:I

    invoke-static {v8, v9}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getCityName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, currentCity:Ljava/lang/String;
    const-string v8, "MTKWORLDCHOOSE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentCity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  cityname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v8, v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;->cityNameView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v8, v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;->weatherIdView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 81
    iget-object v8, v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;->currentCityButton:Landroid/widget/RadioButton;

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v11

    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    :cond_0
    return-object p2

    .line 71
    .end local v0           #cityName:Ljava/lang/String;
    .end local v2           #currentCity:Ljava/lang/String;
    .end local v4           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #weatherId:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #viewHolder:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;
    check-cast v5, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;

    .restart local v5       #viewHolder:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;
    goto :goto_0
.end method
