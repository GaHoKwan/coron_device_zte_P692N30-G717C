.class public Lcom/zte/heartservice/ZteServiceCentersSettings;
.super Landroid/app/Activity;
.source "ZteServiceCentersSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final CITYS_NUM:I = 0x12

.field private static final TAG:Ljava/lang/String; = "ZteServiceCentersSettings"


# instance fields
.field private mAdapter:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;

.field private mCityText:Landroid/widget/TextView;

.field private mCitys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCitysGrid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurCity:Ljava/lang/String;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mHeaders:Ljava/util/ArrayList;

    .line 40
    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mAdapter:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;

    .line 41
    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/zte/heartservice/ZteServiceCentersSettings;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/heartservice/ZteServiceCentersSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/heartservice/ZteServiceCentersSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings;->loadData()V

    return-void
.end method

.method private loadCitys()V
    .locals 13

    .prologue
    .line 229
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 233
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/heartservice/ZteServiceCenter;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 234
    const-string v1, "service_centers"

    .line 235
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "city"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    .line 236
    const/4 v4, 0x0

    const-string v5, "city"

    const/4 v6, 0x0

    .line 237
    const-string v7, "count(*) DESC"

    const/16 v8, 0x12

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 238
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :cond_1
    if-eqz v9, :cond_2

    .line 248
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_2
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 254
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 272
    :goto_1
    return-void

    .line 244
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 245
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ZteServiceCentersSettings"

    const-string v2, "load zte service centers failed"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    if-eqz v9, :cond_4

    .line 248
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_4
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 246
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 247
    if-eqz v9, :cond_5

    .line 248
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_5
    if-eqz v0, :cond_6

    .line 250
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 251
    :cond_6
    throw v1

    .line 256
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_7
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    const/4 v10, 0x0

    .line 260
    .local v10, curInCitys:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_9

    .line 267
    :goto_3
    if-nez v10, :cond_8

    .line 268
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_8
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_9
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitys:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 262
    const/4 v10, 0x1

    .line 263
    goto :goto_3

    .line 260
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method private loadData()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 98
    .line 99
    const-string v1, "zte_service_centers"

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/zte/heartservice/ZteServiceCentersSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 100
    .local v11, prefs:Landroid/content/SharedPreferences;
    const-string v1, "city"

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCityText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 107
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/heartservice/ZteServiceCenter;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    const-string v1, "service_centers"

    .line 109
    sget-object v2, Lcom/zte/heartservice/ZteServiceCenter$Columns;->COLUMNS:[Ljava/lang/String;

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "city=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 108
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 116
    .local v10, h:Landroid/preference/PreferenceActivity$Header;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    iput-object v1, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 118
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    iput-object v1, v10, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 119
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 120
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 126
    .end local v10           #h:Landroid/preference/PreferenceActivity$Header;
    :cond_1
    if-eqz v8, :cond_2

    .line 127
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_2
    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 132
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mAdapter:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;

    invoke-virtual {v1}, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;->notifyDataSetChanged()V

    .line 133
    return-void

    .line 123
    :catch_0
    move-exception v9

    .line 124
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ZteServiceCentersSettings"

    const-string v2, "load zte service centers failed"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v8, :cond_4

    .line 127
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_4
    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 125
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 126
    if-eqz v8, :cond_5

    .line 127
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_5
    if-eqz v0, :cond_6

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 130
    :cond_6
    throw v1
.end method

.method private showCityChooseDialog()V
    .locals 7

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings;->loadCitys()V

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, layout:Landroid/view/View;
    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 197
    .local v2, grid:Landroid/widget/GridView;
    new-instance v4, Lcom/zte/heartservice/common/GridAdapter;

    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Lcom/zte/heartservice/common/GridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 201
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/zte/heartservice/ZteServiceCentersSettings$1;

    invoke-direct {v4, p0, v1}, Lcom/zte/heartservice/ZteServiceCentersSettings$1;-><init>(Lcom/zte/heartservice/ZteServiceCentersSettings;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 226
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 65
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings;->showCityChooseDialog()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0b0008
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/zte/heartservice/ZteServiceCentersSettings;->handleClickEvent(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/zte/heartservice/ZteServiceCentersSettings;->setContentView(I)V

    .line 78
    iput-object p0, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mContext:Landroid/content/Context;

    .line 80
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mContext:Landroid/content/Context;

    .line 81
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 80
    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/zte/heartservice/ZteServiceCentersSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mListView:Landroid/widget/ListView;

    .line 84
    new-instance v1, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mHeaders:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;-><init>(Lcom/zte/heartservice/ZteServiceCentersSettings;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mAdapter:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;

    .line 85
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mAdapter:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/zte/heartservice/ZteServiceCentersSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, cityView:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/zte/heartservice/ZteServiceCentersSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCityText:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    const v2, 0x7f080003

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mCurCity:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "ZteServiceCentersSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 49
    const-class v3, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;

    .line 48
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "_id"

    .line 51
    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings;->mAdapter:Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;

    invoke-virtual {v2, p3}, Lcom/zte/heartservice/ZteServiceCentersSettings$ServiceCentersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 50
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v1}, Lcom/zte/heartservice/ZteServiceCentersSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/zte/heartservice/ZteServiceCentersSettings;->loadData()V

    .line 139
    return-void
.end method
