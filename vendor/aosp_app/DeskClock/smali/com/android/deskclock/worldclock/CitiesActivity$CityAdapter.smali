.class Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CitiesActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/worldclock/CitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityAdapter"
.end annotation


# static fields
.field private static final DELETED_ENTRY:Ljava/lang/String; = "C0"

.field private static final VIEW_TYPE_CITY:I = 0x1

.field private static final VIEW_TYPE_COUNT:I = 0x2

.field private static final VIEW_TYPE_NULL:I


# instance fields
.field private mAllTheCitiesList:[Ljava/lang/Object;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIs24HoursMode:Z

.field private mSectionHeaders:[Ljava/lang/Object;

.field private mSectionPositions:[Ljava/lang/Object;

.field private final mSelectedCitiesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/worldclock/CityObj;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/deskclock/worldclock/CitiesActivity;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/worldclock/CitiesActivity;Landroid/content/Context;Ljava/util/HashMap;Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter
    .parameter "factory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/worldclock/CityObj;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p3, selectedList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/deskclock/worldclock/CityObj;>;"
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    .line 106
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 107
    invoke-direct {p0, p2}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->loadCitiesDataBase(Landroid/content/Context;)V

    .line 108
    iput-object p3, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCitiesList:Ljava/util/HashMap;

    .line 109
    iput-object p4, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    #setter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1, v0}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$002(Lcom/android/deskclock/worldclock/CitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 111
    #getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->set24HoursMode(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method private loadCitiesDataBase(Landroid/content/Context;)V
    .locals 13
    .parameter "c"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 176
    invoke-static {p1}, Lcom/android/deskclock/Utils;->loadCitiesDataBase(Landroid/content/Context;)[Lcom/android/deskclock/worldclock/CityObj;

    move-result-object v6

    .line 177
    .local v6, tempList:[Lcom/android/deskclock/worldclock/CityObj;
    if-nez v6, :cond_0

    .line 205
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v7, 0x0

    .line 182
    .local v7, val:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v5, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v4, positions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/worldclock/CityObj;>;"
    const/4 v1, 0x0

    .line 186
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 187
    aget-object v0, v6, v2

    .line 188
    .local v0, city:Lcom/android/deskclock/worldclock/CityObj;
    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    const-string v9, "C0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_1
    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 192
    iget-object v8, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 193
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v8, Lcom/android/deskclock/worldclock/CityObj;

    invoke-direct {v8, v7, v12, v12}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 199
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 202
    .end local v0           #city:Lcom/android/deskclock/worldclock/CityObj;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/Object;

    .line 203
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    .line 204
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "p"

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    aget-object v0, v1, p1

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    .line 96
    .local v0, c:Lcom/android/deskclock/worldclock/CityObj;
    iget-object v1, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter "p"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 225
    .end local v0           #i:I
    :goto_1
    return v0

    .line 215
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 225
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/Object;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const v9, 0x7f0e002a

    const v8, 0x7f0e0029

    const/4 v7, 0x0

    .line 140
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    array-length v5, v5

    if-lt p1, v5, :cond_1

    .line 141
    :cond_0
    const/4 v5, 0x0

    .line 167
    :goto_0
    return-object v5

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    aget-object v0, v5, p1

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    .line 145
    .local v0, c:Lcom/android/deskclock/worldclock/CityObj;
    iget-object v5, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 146
    if-eqz p2, :cond_2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    .line 147
    :cond_2
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04000c

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 149
    :cond_3
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 150
    .local v2, header:Landroid/widget/TextView;
    iget-object v5, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2           #header:Landroid/widget/TextView;
    :goto_1
    move-object v5, p2

    .line 167
    goto :goto_0

    .line 153
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    .line 154
    :cond_5
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04000d

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 156
    :cond_6
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, name:Landroid/widget/TextView;
    const v5, 0x7f0e002b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 159
    .local v4, tz:Landroid/widget/TextView;
    const v5, 0x7f0e002c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 160
    .local v1, cb:Landroid/widget/CheckBox;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCitiesList:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 162
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    #getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;

    move-result-object v5

    iget-object v6, v0, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 164
    iget-boolean v5, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mIs24HoursMode:Z

    if-eqz v5, :cond_7

    const-string v5, "k:mm"

    :goto_2
    iget-object v6, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    #getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v6}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v5, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 164
    :cond_7
    const-string v5, "h:mmaa"

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set24HoursMode(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 171
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mIs24HoursMode:Z

    .line 172
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 173
    return-void
.end method
