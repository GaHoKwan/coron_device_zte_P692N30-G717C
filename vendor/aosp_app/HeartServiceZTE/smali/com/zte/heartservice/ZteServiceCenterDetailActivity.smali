.class public Lcom/zte/heartservice/ZteServiceCenterDetailActivity;
.super Landroid/app/Activity;
.source "ZteServiceCenterDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;
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
.field public static final PHONE:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "ZteServiceCenterActivity"


# instance fields
.field private mAdapter:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

.field private mAddr:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

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

.field private mListView:Landroid/widget/ListView;

.field private mResource:Landroid/content/res/Resources;

.field private mServiceCenterId:J

.field private mTitle:Ljava/lang/String;

.field private mViewMap:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])(\\([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{1,64}\\))?"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->PHONE:Ljava/util/regex/Pattern;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mHeaders:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAdapter:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

    .line 47
    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mViewMap:Landroid/widget/Button;

    .line 48
    iput-object v1, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAddr:Landroid/widget/TextView;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mServiceCenterId:J

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mTitle:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 149
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 150
    .local v0, actionBar:Landroid/app/ActionBar;
    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 154
    return-void
.end method

.method private loadData()V
    .locals 17

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 161
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/heartservice/ZteServiceCenter;->getDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 162
    const-string v2, "service_centers"

    .line 163
    sget-object v3, Lcom/zte/heartservice/ZteServiceCenter$Columns;->COLUMNS:[Ljava/lang/String;

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mServiceCenterId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 162
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 166
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 169
    .local v15, phonenums:Ljava/lang/String;
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    .local v13, msg:Landroid/text/SpannableString;
    sget-object v2, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->PHONE:Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    .line 171
    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    .line 170
    invoke-static {v13, v2, v3, v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v3

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v13, v2, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/URLSpan;

    .line 173
    .local v16, spans:[Landroid/text/style/URLSpan;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    if-lt v12, v2, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAddr:Landroid/widget/TextView;

    .line 189
    const/4 v3, 0x5

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v12           #i:I
    .end local v13           #msg:Landroid/text/SpannableString;
    .end local v15           #phonenums:Ljava/lang/String;
    .end local v16           #spans:[Landroid/text/style/URLSpan;
    :cond_0
    if-eqz v9, :cond_1

    .line 197
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 202
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAdapter:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

    invoke-virtual {v2}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;->notifyDataSetChanged()V

    .line 203
    return-void

    .line 174
    .restart local v12       #i:I
    .restart local v13       #msg:Landroid/text/SpannableString;
    .restart local v15       #phonenums:Ljava/lang/String;
    .restart local v16       #spans:[Landroid/text/style/URLSpan;
    :cond_3
    :try_start_1
    aget-object v2, v16, v12

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v14

    .line 175
    .local v14, phonenum:Ljava/lang/String;
    new-instance v11, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v11}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 176
    .local v11, h:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 177
    const v3, 0x7f080164

    .line 176
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 178
    const v2, 0x7f020003

    iput v2, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 179
    iput-object v14, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_4

    .line 182
    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {v14, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 184
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    iput-object v2, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 193
    .end local v11           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v12           #i:I
    .end local v13           #msg:Landroid/text/SpannableString;
    .end local v14           #phonenum:Ljava/lang/String;
    .end local v15           #phonenums:Ljava/lang/String;
    .end local v16           #spans:[Landroid/text/style/URLSpan;
    :catch_0
    move-exception v10

    .line 194
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ZteServiceCenterActivity"

    const-string v3, "load zte service centers failed"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    if-eqz v9, :cond_5

    .line 197
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_5
    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 195
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 196
    if-eqz v9, :cond_6

    .line 197
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_6
    if-eqz v1, :cond_7

    .line 199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 200
    :cond_7
    throw v2
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 86
    .local v2, viewId:I
    packed-switch v2, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 89
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:0,0?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 89
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 91
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mContext:Landroid/content/Context;

    .line 94
    iget-object v4, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f080168

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    const/4 v5, 0x0

    .line 93
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 96
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x7f0b0007
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->handleClickEvent(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->setContentView(I)V

    .line 108
    iput-object p0, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mResource:Landroid/content/res/Resources;

    .line 111
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 112
    iput-wide v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mServiceCenterId:J

    .line 115
    const v2, 0x7f0b0006

    invoke-virtual {p0, v2}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAddr:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mListView:Landroid/widget/ListView;

    .line 118
    new-instance v2, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAdapter:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

    .line 119
    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAdapter:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    const v2, 0x7f0b0007

    invoke-virtual {p0, v2}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mViewMap:Landroid/widget/Button;

    .line 130
    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mViewMap:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-direct {p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->loadData()V

    .line 134
    invoke-direct {p0}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->initActionBar()V

    .line 136
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    .local v1, name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "ZteServiceCenterActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 61
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAdapter:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

    if-eqz v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mAdapter:Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;

    invoke-virtual {v5, p3}, Lcom/zte/heartservice/ZteServiceCenterDetailActivity$ServiceCenterHeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, item:Ljava/lang/Object;
    instance-of v5, v2, Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_0

    move-object v0, v2

    .line 64
    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 65
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    iget-object v6, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, title:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 68
    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, summary:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, infoText:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/heartservice/ZteServiceCenterDetailActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f080163

    .line 74
    iget-object v7, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 73
    invoke-static {v5, v6, v1, v4, v7}, Lcom/zte/heartservice/ZteServiceCenter;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 77
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #infoText:Ljava/lang/String;
    .end local v2           #item:Ljava/lang/Object;
    .end local v3           #summary:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    return-void

    .line 66
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #item:Ljava/lang/Object;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 68
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    return-void
.end method
